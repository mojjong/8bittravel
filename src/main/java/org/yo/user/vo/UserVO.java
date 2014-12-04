package org.yo.user.vo;

/**
 * 
 * @author OJS
 * 
 * "ID" VARCHAR2(20 BYTE), 
	"PW" VARCHAR2(20 BYTE), 
	"BIRTH" DATE, 
	"GENDER" VARCHAR2(20 BYTE), 
	"USERMODE" VARCHAR2(20 BYTE), 
	"STATE" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"REGION" VARCHAR2(20 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"GUIDECNT" NUMBER DEFAULT 0, 
	"SPEAK" VARCHAR2(20 BYTE), 
	"BIDCNT" NUMBER DEFAULT 0, 
	"RATE" NUMBER DEFAULT 0, 
 *
 */
import java.sql.Date;
import java.util.HashMap;
import java.util.Map;


public class UserVO {
	
	private String id;
	private String pw;
	private String birth;
	private String gender;
	private String usermode;
	private String state;
	private String name;
	private Integer regionno;
	private Date regdate;
	private Integer guidecnt;
	private String speak;
	private Integer bidcnt;
	private Integer rate;
	private Map<String, String> dateMap;
	
	
	public String getId() {
		return id;
	}
	public UserVO setId(String id) {
		this.id = id;
		return this;
	}
	public String getPw() {
		return pw;
	}
	public UserVO setPw(String pw) {
		this.pw = pw;
		return this;
	}
	public String getBirth() {
		return birth;
	}
	public UserVO setBirth(String birth) {
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
		
		String[] date = birth.split(" ");
		
		date[1] = dateMap.get(date[1]);
		this.birth = arrayJoin(" ", date);
		return this;
	}
	

	public String getGender() {
		return gender;
	}
	public UserVO setGender(String gender) {
		this.gender = gender;
		return this;
	}
	public String getUsermode() {
		return usermode;
	}
	public UserVO setUsermode(String usermode) {
		this.usermode = usermode;
		return this;
	}
	public String getState() {
		return state;
	}
	public UserVO setState(String state) {
		this.state = state;
		return this;
	}
	public String getName() {
		return name;
	}
	public UserVO setName(String name) {
		this.name = name;
		return this;
	}
	public Integer getRegionno() {
		return regionno;
	}
	public UserVO setRegionno(Integer regionno) {
		this.regionno = regionno;
		return this;
	}
	public Date getRegdate() {
		return regdate;
	}
	public UserVO setRegdate(Date regdate) {
		this.regdate = regdate;
		return this;
	}
	public Integer getGuidecnt() {
		return guidecnt;
	}
	public UserVO setGuidecnt(Integer guidecnt) {
		this.guidecnt = guidecnt;
		return this;
	}
	public String getSpeak() {
		return speak;
	}
	public UserVO setSpeak(String speak) {
		this.speak = speak;
		return this;
	}
	public Integer getBidcnt() {
		return bidcnt;
	}
	public UserVO setBidcnt(Integer bidcnt) {
		this.bidcnt = bidcnt;
		return this;
	}
	public Integer getRate() {
		return rate;
	}
	public UserVO setRate(Integer rate) {
		this.rate = rate;
		return this;
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
		return "UserVO [id=" + id + ", pw=" + pw + ", birth=" + birth
				+ ", gender=" + gender + ", usermode=" + usermode + ", state="
				+ state + ", name=" + name + ", regionno=" + regionno
				+ ", regdate=" + regdate + ", guidecnt=" + guidecnt
				+ ", speak=" + speak + ", bidcnt=" + bidcnt + ", rate=" + rate
				+ "]";
	}
	
	
	
	

}
