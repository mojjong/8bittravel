package org.yo.googleearth.vo;

public class FileInfo {
	private String fileName;
	private double lat;
	private double lng;
	
	
	public String getFileName() {
		return fileName;
	}
	public FileInfo setFileName(String fileName) {
		this.fileName = fileName;
		return this;
	}
	public double getLat() {
		return lat;
	}
	public FileInfo setLat(double lat) {
		this.lat = lat;
		return this;
	}
	public double getLng() {
		return lng;
	}
	public FileInfo setLng(double lng) {
		this.lng = lng;
		return this;
	}
	@Override
	public String toString() {
		return "FileInfo [fileName=" + fileName + ", lat=" + lat + ", lng="
				+ lng + "]";
	}
	
	
}
