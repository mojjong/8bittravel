package org.yo.travelbbs.vo;

import java.sql.Date;



public class TravelbbsVO {
	private int no;
	private String title;
	private String content;
	private String startdate;
	private String enddate;
	private int teammember;
	private int cost;
	private String transport;
	private String memo;
	private String bidstate;
	private String region;
	private String userid;
	private int themeno;
	private String guideid;
	private String themeName;
	private String themeMode;
	
	
	public String getThemeName() {
		return themeName;
	}
	public void setThemeName(String themeName) {
		this.themeName = themeName;
	}
	public String getThemeMode() {
		return themeMode;
	}
	public void setThemeMode(String themeMode) {
		this.themeMode = themeMode;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStartdate() {
		return startdate;
	}
	public void setStartdate(String startdate) {
		this.startdate = startdate;
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		this.enddate = enddate;
	}
	public int getTeammember() {
		return teammember;
	}
	public void setTeammember(int teammember) {
		this.teammember = teammember;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport) {
		this.transport = transport;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getBidstate() {
		return bidstate;
	}
	public void setBidstate(String bidstate) {
		this.bidstate = bidstate;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getThemeno() {
		return themeno;
	}
	public void setThemeno(int themeno) {
		this.themeno = themeno;
	}
	public String getGuideid() {
		return guideid;
	}
	public void setGuideid(String guideid) {
		this.guideid = guideid;
	}
	@Override
	public String toString() {
		return "TravelbbsVO [no=" + no + ", title=" + title + ", content="
				+ content + ", startdate=" + startdate + ", enddate=" + enddate
				+ ", teammember=" + teammember + ", cost=" + cost
				+ ", transport=" + transport + ", memo=" + memo + ", bidstate="
				+ bidstate + ", region=" + region + ", userid=" + userid
				+ ", themeno=" + themeno + ", guideid=" + guideid
				+ ", themeName=" + themeName + ", themeMode=" + themeMode + "]";
	}
	
	
	
}
