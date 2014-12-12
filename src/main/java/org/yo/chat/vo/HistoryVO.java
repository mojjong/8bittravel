package org.yo.chat.vo;

import java.sql.Date;

public class HistoryVO {
	
	private Integer no;
	private Integer gpno;
	private String userid;
	private Date time;
	private Double lat;
	private Double lng;
	
	
	public Integer getNo() {
		return no;
	}
	public HistoryVO setNo(Integer no) {
		this.no = no;
		return this;
	}
	public Integer getGpno() {
		return gpno;
	}
	public HistoryVO setGpno(Integer gpno) {
		this.gpno = gpno;
		return this;
	}
	public String getUserid() {
		return userid;
	}
	public HistoryVO setUserid(String userid) {
		this.userid = userid;
		return this;
	}
	public Date getTime() {
		return time;
	}
	public HistoryVO setTime(Date time) {
		this.time = time;
		return this;
	}
	public Double getLat() {
		return lat;
	}
	public HistoryVO setLat(Double lat) {
		this.lat = lat;
		return this;
	}
	public Double getLng() {
		return lng;
	}
	public HistoryVO setLng(Double lng) {
		this.lng = lng;
		return this;
	}
	
	@Override
	public String toString() {
		return "HistoryVO [no=" + no + ", gpno=" + gpno + ", userid=" + userid
				+ ", time=" + time + ", lat=" + lat + ", lng=" + lng + "]";
	}
	
	
	
	
	
}
