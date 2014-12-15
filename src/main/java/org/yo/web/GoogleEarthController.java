package org.yo.web;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.yo.file.vo.FileVO;
import org.yo.googleearth.service.GoogleEarthService;
import org.yo.googleearth.vo.FileInfo;
import org.yo.googleearth.vo.GoogleEarthVO;
import org.yo.web.util.Json;

import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.metadata.Metadata;
import com.drew.metadata.exif.ExifSubIFDDirectory;
import com.drew.metadata.exif.GpsDirectory;

@Controller
@RequestMapping("/panorama/google/*")
public class GoogleEarthController {

   private static final Logger logger = LoggerFactory
         .getLogger(GoogleEarthController.class);
   
   private final static String path = "C:\\zzz\\upload\\uploadTest\\user00\\";

   @Inject
   GoogleEarthService service;
   
 
   
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String google(){
      return "/panorama/screen";
   }

   @RequestMapping(value = "/list", method = RequestMethod.GET)
   @ResponseBody
   public List<FileInfo> googleList(Model model) {
      File file = new File(path);

      
      File[] fileList = file.listFiles();

      String contentType = "image/jpeg";

      List<FileInfo> mapList = new ArrayList<FileInfo>();
      if ("image/jpeg".equals(contentType)) {
         Metadata meta;
         try {

            GpsDirectory gpsDir = null;
            // GpsDescriptor gpsDesc = null;
            

            for (File tempFile : fileList) {
            	FileInfo fi = new FileInfo();
            	List<Double> gap = new ArrayList<Double>();
            	String fileName = tempFile.getName();
               meta = JpegMetadataReader.readMetadata(tempFile);
               ExifSubIFDDirectory directory = meta
                     .getDirectory(ExifSubIFDDirectory.class);
               Date date = directory
                     .getDate(ExifSubIFDDirectory.TAG_DATETIME_ORIGINAL);

               gpsDir = meta.getDirectory(GpsDirectory.class);
               // gpsDesc = new GpsDescriptor(gpsDir);
               
//               logger.info("Date : " + date);
               
               if(gpsDir == null){
            	   //사진에 위치정보가 없을때
            	   
            	
            	   long diffTemp = 0;
            	   
            	   List<GoogleEarthVO> mapper = service.getTime();
            	   
            	   for (GoogleEarthVO dbTime : mapper) {
            		   
            		   logger.info(dbTime.getTime().getTime() + " " + date.getTime());
            		 
            		   diffTemp = dbTime.getTime().getTime() - date.getTime();
            		   diffTemp = Math.abs(diffTemp);
            		   
            		   gap.add((double)diffTemp);
            	   }
            	   
            	   System.out.println("시간차 : " + fileName + " , " + gap);
                   double min = gap.get(0);
                   int minIdx = 0;
                   
                   System.out.println("전체길이: "+gap.size());
            
                   for(int loop = 1; loop < gap.size(); loop++) {
                       
                       if (gap.get(loop)< min){
                    	   min = gap.get(loop)/ (24*60);
                    	   minIdx = loop;
                    	   
                    	   mapper.get(minIdx);
                    	   
                       }
                       
                   }
                  
                   System.out.println("최소값 인덱스"+ minIdx);
                   
                   double lat = Double.valueOf(mapper.get(minIdx).getLat()).doubleValue();
                   double lng = Double.valueOf(mapper.get(minIdx).getLng()).doubleValue();
            	   
                   fi.setFileName(fileName).setLat(lat).setLng(lng);
                   
            	   mapList.add(fi);
            	   
            	   
               } else {
            	 //사진에 위치정보가 있을때
                   mapList.add(fi.setFileName(fileName).
                		   setLat(gpsDir.getGeoLocation().getLatitude()).
                		   setLng(gpsDir.getGeoLocation().getLongitude()));
               }

               //logger.info("위도 경도 : " + gpsDir.getGeoLocation());
            }


         } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }

      }
      
      logger.info(mapList.toString());
      
      return mapList;
   }
   
   
   /*@RequestMapping(value = "/time", method = RequestMethod.GET)
   @ResponseBody
   public List<Date> dateTime(Model model) {
      File file = new File(path+"dd\\");

      File[] fileList = file.listFiles();

      String contentType = "image/jpeg";

      List<Date> dateList = new ArrayList<Date>();
      if ("image/jpeg".equals(contentType)) {
         Metadata meta;
         try {

//            GpsDirectory gpsDir = null;
            // GpsDescriptor gpsDesc = null;
            

            for (File tempFile : fileList) {

               meta = JpegMetadataReader.readMetadata(tempFile);
               ExifSubIFDDirectory directory = meta
                     .getDirectory(ExifSubIFDDirectory.class);
               Date date = directory
                     .getDate(ExifSubIFDDirectory.TAG_DATETIME_ORIGINAL);

//               gpsDir = meta.getDirectory(GpsDirectory.class);
               // gpsDesc = new GpsDescriptor(gpsDir);

               logger.info("Date : " + date);
//               logger.info("위도 경도 : " + gpsDir.getGeoLocation());

               dateList.add(date);
            }


         } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }
        
         List<Date> date = service.getTime();
         
         Date time1 = dateList.get(0);
//		 Date time2 = dateList.get(1);
		 
		 System.out.println(time1 +":::::"+ date);
		 long diff = time1.getTime() - date.get(0).getTime();
		 long diffDays = diff / (24*60*60);

		 
		 System.out.println(diffDays);
         
         System.out.println("컨트롤러"+ date);
      }
      return dateList;
   }
   */
   
   @RequestMapping(value = "/view", produces = "image/jpeg")
   public @ResponseBody byte[] viewFile(String filename, HttpServletResponse res) throws Exception {

      ByteArrayOutputStream bos = new ByteArrayOutputStream();

      InputStream fin = new FileInputStream(path + filename);

      FileCopyUtils.copy(fin, bos);

      return bos.toByteArray();
   }
   
	//글쓰기 동작(파일업로드 동시처리)
	@RequestMapping(value = "/folderupload", method = RequestMethod.POST)
	public @ResponseBody Json folderUpload(FileVO vo, Model model) throws Exception{
		//파일 업로드 동작이 추가될 경우.
		String UUName = UUID.randomUUID().toString();
		
		List<MultipartFile> list = vo.getFolder();
		String foldername = vo.getFolderName();
		
		File targetDir = new File("c://zzz//upload//uploadTest//"+foldername);
		
		 if(!targetDir.exists()) {    //디렉토리 없으면 생성.
	         targetDir.mkdirs();
	     }
		
		for(MultipartFile file : list){

			if(!file.isEmpty()){
				String fileName = UUName +"_"+ file.getOriginalFilename();
				file.transferTo(new File("c://zzz//upload//uploadTest//"+foldername, fileName));
			}
		}

		
		//logger.info("파일 사이즈 : "+vo.getFolder().size());
		
		return new Json("{ \"fileSize\" : \""+ vo.getFolder().size() +"\" }");
	}
   
}