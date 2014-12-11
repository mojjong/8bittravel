package org.yo.web;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
import org.yo.googleearth.service.GoogleEarthService;
import org.yo.googleearth.vo.GoogleEarthVO;

import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.metadata.Metadata;
import com.drew.metadata.exif.ExifSubIFDDirectory;
import com.drew.metadata.exif.GpsDirectory;

@Controller
@RequestMapping("/panorama/google/*")
public class GoogleEarthController {

   private static final Logger logger = LoggerFactory
         .getLogger(GoogleEarthController.class);
   
   private final static String path = "C:\\zzz\\upload\\dd\\";

   @Inject
   GoogleEarthService service;
   
 
   
   @RequestMapping(value = "/", method = RequestMethod.GET)
   public String google(){
      return "/panorama/screen";
   }

   @RequestMapping(value = "/list", method = RequestMethod.GET)
   @ResponseBody
   public List<String> googleList(Model model) {
      File file = new File(path);

      
      File[] fileList = file.listFiles();

      String contentType = "image/jpeg";

      List<String> mapList = new ArrayList<String>();
      if ("image/jpeg".equals(contentType)) {
         Metadata meta;
         try {

            GpsDirectory gpsDir = null;
            // GpsDescriptor gpsDesc = null;
            

            for (File tempFile : fileList) {
            	List<Double> gap = new ArrayList<Double>();
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
            		 
            		   
            		   
            		   diffTemp = dbTime.getTime().getTime() - date.getTime();
            		   diffTemp = Math.abs(diffTemp);
            		   
            		   gap.add((double)diffTemp);
            	   }
            	  
            	   System.out.println(gap);
                   double min = gap.get(0);
                   int minIdx = 0;
                   
                   System.out.println("전체길이: "+gap.size());
            
                   for(int loop = 1; loop < gap.size(); loop++) {
                       
                       if (gap.get(loop)< min){
                    	   min = gap.get(loop)/ (24*60);
                    	   minIdx = loop;
                    	   
                    	   mapper.get(minIdx);
                    	   
                    	  System.out.println("ssdsssssss"+mapper.get(minIdx));
                       }
                       
                   }
                  
                   System.out.println("최소값 인덱스"+ minIdx);
            	   
            	   mapList.add(mapper.get(minIdx).getLat()+","+mapper.get(minIdx).getLng());
            	   
            	   
               } else {
            	 //사진에 위치정보가 없을때
                   mapList.add(gpsDir.getGeoLocation().toString());
               }

               //logger.info("위도 경도 : " + gpsDir.getGeoLocation());
            }


         } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
         }

      }
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

//      logger.info(filename);
      
      ByteArrayOutputStream bos = new ByteArrayOutputStream();

      InputStream fin = new FileInputStream(path + filename);

      FileCopyUtils.copy(fin, bos);

      return bos.toByteArray();
   }
}