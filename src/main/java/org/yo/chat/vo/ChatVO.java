package org.yo.chat.vo;

import java.sql.Date;

public class ChatVO {
	
	private Integer no;
	private String userid;
	private String guideid;
	private String content;
	private Date regdate;
	private String sender;
	
	
	public Integer getNo() {
		return no;
	}
	public ChatVO setNo(Integer no) {
		this.no = no;
		return this;
	}
	public String getUserid() {
		return userid;
	}
	public ChatVO setUserid(String userid) {
		this.userid = userid;
		return this;
	}
	public String getGuideid() {
		return guideid;
	}
	public ChatVO setGuideid(String guideid) {
		this.guideid = guideid;
		return this;
	}
	public String getContent() {
		return content;
	}
	public ChatVO setContent(String content) {
		this.content = content;
		return this;
	}
	public Date getRegdate() {
		return regdate;
	}
	public ChatVO setRegdate(Date regdate) {
		this.regdate = regdate;
		return this;
	}
	public String getSender() {
		return sender;
	}
	public ChatVO setSender(String sender) {
		this.sender = sender;
		return this;
	}
	
	@Override
	public String toString() {
		return "ChatVO [no=" + no + ", userid=" + userid + ", guideid="
				+ guideid + ", content=" + content + ", regdate=" + regdate
				+ ", sender=" + sender + "]";
	}
	
	
	
	

}
