package org.yo.guidebbs.vo;

import java.util.Date;

public class GuideBbsVO {
	
	private int no;
	private int travelno;
	private String userid;
	private String guideid;
	private int cost;
	private int pay;
	private Date regdate;
	private int grno;
	private int gpno;
	private String place;
	private Double lng;
	private Double lat;
	private String msg;
	private int plandate;
	
	
	
	
	
	public String getGuideid() {
		return guideid;
	}





	public void setGuideid(String guideid) {
		this.guideid = guideid;
	}





	public int getGpno() {
		return gpno;
	}





	public void setGpno(int gpno) {
		this.gpno = gpno;
	}





	public int getGrno() {
		return grno;
	}

	



	public void setGrno(int grno) {
		this.grno = grno;
	}





	public String getPlace() {
		return place;
	}





	public void setPlace(String place) {
		this.place = place;
	}





	public Double getLng() {
		return lng;
	}





	public void setLng(Double lng) {
		this.lng = lng;
	}





	public Double getLat() {
		return lat;
	}





	public void setLat(Double lat) {
		this.lat = lat;
	}





	public String getMsg() {
		return msg;
	}





	public void setMsg(String msg) {
		this.msg = msg;
	}





	public int getPlandate() {
		return plandate;
	}





	public void setPlandate(int plandate) {
		this.plandate = plandate;
	}





	public int getNo() {
		return no;
	}





	public void setNo(int no) {
		this.no = no;
	}





	public int getTravelno() {
		return travelno;
	}





	public void setTravelno(int travelno) {
		this.travelno = travelno;
	}





	public String getUserid() {
		return userid;
	}





	public void setUserid(String userid) {
		this.userid = userid;
	}





	public int getCost() {
		return cost;
	}





	public void setCost(int cost) {
		this.cost = cost;
	}





	public int getPay() {
		return pay;
	}





	public void setPay(int pay) {
		this.pay = pay;
	}





	public Date getRegdate() {
		return regdate;
	}





	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}





	@Override
	public String toString() {
		return "GuideBbsVO [no=" + no + ", travelno=" + travelno + ", userid="
				+ userid + ", guideid=" + guideid + ", cost=" + cost + ", pay="
				+ pay + ", regdate=" + regdate + ", grno=" + grno + ", gpno="
				+ gpno + ", place=" + place + ", lng=" + lng + ", lat=" + lat
				+ ", msg=" + msg + ", plandate=" + plandate + "]";
	}
	
	
	
	
}
