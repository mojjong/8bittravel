package org.yo.googleearth.vo;

import java.util.Date;

public class GoogleEarthVO {

	private int no;
	private Date time;
	private int gpno;
	private String lat;
	private String lng;
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public int getGpno() {
		return gpno;
	}
	public void setGpno(int gpno) {
		this.gpno = gpno;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	@Override
	public String toString() {
		return "googleEarthVO [no=" + no + ", date=" + time + ", gpno=" + gpno
				+ ", lat=" + lat + ", lng=" + lng + "]";
	}
	
	
}
