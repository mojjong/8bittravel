package org.yo.travelbbs.vo;


import java.util.HashMap;
import java.util.Map;



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
	private String regionno;
	private String userid;
	private int themeno;
	private String themename;
	private String thememode;
	private String guideid;
	private Map<String, String> dateMap;
	private String region;
	
	
	
	public String getThemename() {
		return themename;
	}
	public void setThemename(String themename) {
		this.themename = themename;
	}
	public String getThememode() {
		return thememode;
	}
	public void setThememode(String thememode) {
		this.thememode = thememode;
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
		
		
		dateMap = new HashMap<String, String>();
		
		dateMap.put("January", "1월");
		dateMap.put("Feburary", "2월");
		dateMap.put("March", "3월");
		dateMap.put("April", "4월");
		dateMap.put("May", "5월");
		dateMap.put("June", "6월");
		dateMap.put("July", "7월");
		dateMap.put("August", "8월");
		dateMap.put("September", "9월");
		dateMap.put("October", "10월");
		dateMap.put("November", "11월");
		dateMap.put("December", "12월");
		
		String[] date = startdate.split(" ");
		
		date[1] = dateMap.get(date[1]);
		if(date[1] == null){
			this.startdate = startdate;
		}else{
			this.startdate = arrayJoin(" ", date);
		}
	}
	public String getEnddate() {
		return enddate;
	}
	public void setEnddate(String enddate) {
		
		dateMap = new HashMap<String, String>();
		
		dateMap.put("January", "1월");
		dateMap.put("Feburary", "2월");
		dateMap.put("March", "3월");
		dateMap.put("April", "4월");
		dateMap.put("May", "5월");
		dateMap.put("June", "6월");
		dateMap.put("July", "7월");
		dateMap.put("August", "8월");
		dateMap.put("September", "9월");
		dateMap.put("October", "10월");
		dateMap.put("November", "11월");
		dateMap.put("December", "12월");
		
		String[] date = enddate.split(" ");
		
		date[1] = dateMap.get(date[1]);
		if(date[1] == null){
			this.enddate = enddate;
		}else{
			this.enddate = arrayJoin(" ", date);
		}
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
	
	public String getRegionno() {
		return regionno;
	}
	public void setRegionno(String regionno) {
		this.regionno = regionno;
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
	public static String arrayJoin(String glue, String array[]) {
	    String result = "";

	    for (int i = 0; i < array.length; i++) {
	      result += array[i];
	      if (i < array.length - 1) result += glue;
	    }
	    return result;
}
	@Override
	public String toString() {
		return "TravelbbsVO [no=" + no + ", title=" + title + ", content="
				+ content + ", startdate=" + startdate + ", enddate=" + enddate
				+ ", teammember=" + teammember + ", cost=" + cost
				+ ", transport=" + transport + ", memo=" + memo + ", bidstate="
				+ bidstate + ", regionno=" + regionno + ", userid=" + userid
				+ ", themeno=" + themeno + ", themename=" + themename
				+ ", thememode=" + thememode + ", guideid=" + guideid
				+ ", dateMap=" + dateMap + "]";
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	
	
}
