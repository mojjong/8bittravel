package org.yo.guidebbs.vo;

import java.util.Date;

public class GuideBbsVO {
	
	private int no;
	private int travelno;
	private String userid;
	private int cost;
	private int pay;
	private Date regdate;
	
	
	
	
	
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
				+ userid + ", cost=" + cost + ", pay=" + pay + ", regdate="
				+ regdate + "]";
	}
	
	
	
	
}
