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
	
	@RequestMapping(value="/view/{path}", produces="images/jpeg")
	public @ResponseBody byte[] viewFile(@PathVariable("path") String path) throws Exception{
		
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		
		byte[] buffer = new byte[1024*8];
		
		InputStream fin = new FileInputStream(DEFAULT_DIR+path+".jpg");
		
		while(true){
			int count = fin.read(buffer);
			if(count == -1){ break; }
			bos.write(buffer, 0, count);
		}
		fin.close();
		
		return bos.toByteArray();
		
	}
	
	private void createThumbnail(File origin) throws Exception {
		
		//String myPath="C:\\Program Files\\ImageMagick";
		//ProcessStarter.setGlobalSearchPath(myPath);
		
		String imPath="C:\\Program Files\\ImageMagick";
		ConvertCmd cmd = new ConvertCmd();
		cmd.setSearchPath(imPath);
		
		String destinationFileName = 
				origin.getParent()+File.separator+"s_"+origin.getName();
			File thumbNailFile = new File(destinationFileName);
			if(!thumbNailFile.exists()) {
				IMOperation op = new IMOperation();
				op.addImage(origin.getPath());
				op.thumbnail(100); 
				op.blur(20.0); 
				op.addImage(destinationFileName);
				cmd.run(op);
			}
		
	}
	
	
	@RequestMapping(value="/upload", produces="text/html; charset=UTF-8")
	@ResponseBody
	public String uploadFile(MultipartFile file) throws Exception {
		
		if(file.isEmpty()){
			return "NONE";
		}
		
		byte[] buffer = new byte[1024*8];
		String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

		String suffix = fileName.substring(fileName.lastIndexOf("."));

				logger.info("SUFFIX :" + suffix);
		
		InputStream in = file.getInputStream();
		
		File uploadedFile = new File(DEFAULT_DIR+fileName);
		
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
			createThumbnail(uploadedFile);
		}
		
		String jsObjStr = "{fileName:'"+fileName+"', isImage:"+isImage+", suffix:'"+ suffix+"'}";

		String str = "<script>parent.updateResult("+jsObjStr+");</script>";
		
		
		return str;
		
	}
	
	private boolean isImage(String fileName, String suffix) {
		
		if(suffix.contains(".jpg")){
			return true;
		}
		return false;
	}
	
	
	
}
