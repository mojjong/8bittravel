package org.yo.web;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;

import org.im4java.core.ConvertCmd;
import org.im4java.core.IMOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


@Controller
@RequestMapping("/file/*")
public class FileController {

	private static final Logger logger = LoggerFactory.getLogger(FileController.class);
	private final static String DEFAULT_DIR = "c:\\zzz\\8bitTravel";
	
	
	//�ٿ�ε��� ������ jpg��� �����Ͽ�...
	@RequestMapping(value = "/download", method= RequestMethod.GET, produces="application/octet-stream")
	public @ResponseBody byte[] downFile(@RequestParam(value="filename", defaultValue="")String path, HttpServletResponse response) throws Exception{
		if(path.equals(""))
			return null;
		
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		
		File downFile = new File(DEFAULT_DIR, path);
		
		OutputStream os = response.getOutputStream();
		FileInputStream fi = new FileInputStream(downFile);
		
		response.setHeader("Content-Disposition", "attachment; filename="+new String(path.getBytes("UTF-8"), "8859_1"));
		byte[] bytes = FileCopyUtils.copyToByteArray(fi);
		
		bos.write(bytes);
		
		return bos.toByteArray();
		
	}
	
	@RequestMapping(value = "/thumbnail", method= RequestMethod.GET, produces="application/octet-stream")
	public @ResponseBody byte[] downThumnailFile(@RequestParam(value="filename", defaultValue="")String path, HttpServletResponse response) throws Exception{
		if(path.equals(""))
			return null;
		
		
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		String FILEDEFAULT_DIR="c:\\zzz\\8bitTravel\\thumbnail";
		
		File downFile = new File(FILEDEFAULT_DIR, path);
		
		OutputStream os = response.getOutputStream();
		FileInputStream fi = new FileInputStream(downFile);
		
		response.setHeader("Content-Disposition", "attachment; filename="+new String(path.getBytes("UTF-8"), "8859_1"));
		byte[] bytes = FileCopyUtils.copyToByteArray(fi);
		
		bos.write(bytes);
		
		return bos.toByteArray();
		
	}
	
	//������ �̸��� �Ķ���ͷ� �޴´�.(������ ����?)
	@RequestMapping(value="/view/{foldername}/{filename}/{suffix}", produces="images/jpeg")
	public @ResponseBody byte[] viewFile(@PathVariable("foldername") String foldername, @PathVariable("filename") String filename, @PathVariable("suffix") String suffix) throws Exception{
		
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		
		byte[] buffer = new byte[1024*8];
		
		logger.info("aaaaaa  " + foldername);
		
		
		InputStream fin = new FileInputStream(DEFAULT_DIR+File.separator+foldername+File.separator+filename+"."+suffix);
		
		while(true){
			int count = fin.read(buffer);
			if(count == -1){ break; }
			bos.write(buffer, 0, count);
		}
		fin.close();
		
		return bos.toByteArray();
		
	}
	
	//ImageMagicK �̿��� ����� ���� �Լ�
	private void createThumbnail(File origin, String foldername) throws Exception {
		logger.info("여기는 섬네일");
		//���������� ImageMagicK �н� ������.
		//String myPath="C:\\Program Files\\ImageMagick";
		//ProcessStarter.setGlobalSearchPath(myPath);
		
		File targetDir = new File(DEFAULT_DIR+File.separator+"thumbnail"+File.separator+foldername);
		
		 if(!targetDir.exists()) {    //디렉토리 없으면 생성.
			 logger.info(DEFAULT_DIR+File.separator+"thumbnail"+File.separator+foldername + " 생성!");
	         targetDir.mkdirs();
	        }
		
		String imPath="C:\\Program Files\\ImageMagick";
		ConvertCmd cmd = new ConvertCmd();
		cmd.setSearchPath(imPath);
		
		String destinationFileName = 
				DEFAULT_DIR+File.separator+"thumbnail"+File.separator+foldername+File.separator+origin.getName();
			File thumbNailFile = new File(destinationFileName);
			if(!thumbNailFile.exists()) {
				IMOperation op = new IMOperation();
				op.addImage(origin.getPath());
				op.thumbnail(400); 
				op.addImage(destinationFileName);
				cmd.run(op);
			}
		
	}
	
	
	@RequestMapping(value="/upload", produces="text/html; charset=UTF-8")
	@ResponseBody
	public String uploadFile(MultipartFile file, String foldername) throws Exception {
		System.out.println("AAAA");
		if(file.isEmpty()){
			return "NONE";
		}
		
		logger.info(DEFAULT_DIR+File.separator+foldername);
		File targetDir = new File(DEFAULT_DIR+File.separator+foldername);
		
		 if(!targetDir.exists()) {    //디렉토리 없으면 생성.
			 logger.info(DEFAULT_DIR+File.separator+foldername + " 생성!");
	         targetDir.mkdirs();
	        }
		
		byte[] buffer = new byte[1024*8];
		String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

		String suffix = fileName.substring(fileName.lastIndexOf("."));

				logger.info("SUFFIX :" + suffix);
		
		InputStream in = file.getInputStream();
		
		File uploadedFile = new File(DEFAULT_DIR+File.separator+foldername+File.separator+fileName);
		
		OutputStream fos = new FileOutputStream(uploadedFile);
		
		while(true){
			int count = in.read(buffer);
			if(count == -1) { break;}
			fos.write(buffer);
		}
		
		fos.flush();
		fos.close();
		
		logger.info("-------------------");
		
		logger.info(fileName);
		logger.info("-------------------");
		
		boolean isImage = isImage(fileName, suffix);
		if(isImage){
			createThumbnail(uploadedFile, foldername);
		}
		
		String jsObjStr = "{foldername:'"+foldername+"', fileName:'"+fileName.substring(0, fileName.lastIndexOf("."))+"', isImage:"+isImage+", suffix:'"+ suffix.substring(1)+"'}";
		
		logger.info(jsObjStr);

		String str = "<script>parent.updateResult.increment("+jsObjStr+");</script>";
		
		
		return str;
		
	}
	
	private boolean isImage(String fileName, String suffix) {
		
		if(suffix.contains(".jpg")){
			return true;
		}
		return false;
	}
	
	
	
}
