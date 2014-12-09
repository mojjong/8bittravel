package org.yo.qna.vo;

import java.sql.Date;

public class QnaVO {

	/*NO	NUMBER
	PARENT	NUMBER
	TITLE	VARCHAR2(200 BYTE)
	CONTENT	VARCHAR2(2000 BYTE)
	REGDATE	DATE
	USERID	VARCHAR2(20 BYTE)*/
	
	private int no;
	private String content;
	private Date regdate;
	private String userid;
	private String title;
	private int cnt;
	
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	@Override
	public String toString() {
		return "QnaVO [no=" + no + ", content=" + content + ", regdate="
				+ regdate + ", userid=" + userid + ", title=" + title
				+ ", cnt=" + cnt + "]";
	}
	

	
	
}
