package org.yo.guidebbs.vo;

import java.util.Arrays;

public class GP_PhotoVO {
	private int gpphotono;
	private int guideno;
	private String filename;
	private String originfilename;
	private String[] fileList;
	private String suffix;
	private String isfile;
	private String content;
	
	
	
	public String getOriginfilename() {
		return originfilename;
	}
	public void setOriginfilename(String originfilename) {
		this.originfilename = originfilename;
	}
	public String getFilename() {
		return filename;
	}
	public GP_PhotoVO setFilename(String filename) {
		this.filename = filename;
		return this;
	}
	public String[] getFileList() {
		return fileList;
	}
	public GP_PhotoVO setFileList(String[] fileList) {
		this.fileList = fileList;
		return this;
	}
	public String getSuffix() {
		return suffix;
	}
	public GP_PhotoVO setSuffix(String suffix) {
		this.suffix = suffix;
		return this;
	}
	public String getIsfile() {
		return isfile;
	}
	public void setIsfile(String isfile) {
		this.isfile = isfile;
	}

	
	public int getGuideno() {
		return guideno;
	}
	public void setGuideno(int guideno) {
		this.guideno = guideno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public int getGpphotono() {
		return gpphotono;
	}
	public void setGpphotono(int gpphotono) {
		this.gpphotono = gpphotono;
	}
	@Override
	public String toString() {
		return "GP_PhotoVO [gpphotono=" + gpphotono + ", guideno=" + guideno
				+ ", filename=" + filename + ", fileList="
				+ Arrays.toString(fileList) + ", suffix=" + suffix
				+ ", isfile=" + isfile + ", content=" + content + "]";
	}
	
	
	
	
}
