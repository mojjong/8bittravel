package org.yo.web;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
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
import org.yo.region.service.RegionService;

import com.drew.imaging.jpeg.JpegMetadataReader;
import com.drew.metadata.Metadata;
import com.drew.metadata.exif.ExifSubIFDDirectory;
import com.drew.metadata.exif.GpsDirectory;

@Controller
@RequestMapping("/bbs/google/*")
public class GoogleEarthController {

	private static final Logger logger = LoggerFactory
			.getLogger(GoogleEarthController.class);
	
	private final static String path = "C:\\zzz\\upload\\";

	@Inject
	private RegionService service;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String google(){
		return "/bbs/screen";
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

					meta = JpegMetadataReader.readMetadata(tempFile);
					ExifSubIFDDirectory directory = meta
							.getDirectory(ExifSubIFDDirectory.class);
					Date date = directory
							.getDate(ExifSubIFDDirectory.TAG_DATETIME_ORIGINAL);

					gpsDir = meta.getDirectory(GpsDirectory.class);
					// gpsDesc = new GpsDescriptor(gpsDir);

					logger.info("Date : " + date);
					logger.info("위도 경도 : " + gpsDir.getGeoLocation());

					mapList.add(gpsDir.getGeoLocation().toString());
				}


			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return mapList;
	}
	
	@RequestMapping(value = "/view", produces = "image/jpeg")
	public @ResponseBody byte[] viewFile(String filename, HttpServletResponse res) throws Exception {

		logger.info(filename);
		
		ByteArrayOutputStream bos = new ByteArrayOutputStream();

		InputStream fin = new FileInputStream(path + filename);

		FileCopyUtils.copy(fin, bos);

		return bos.toByteArray();
	}
}
