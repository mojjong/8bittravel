package org.yo.notice.vo;

import java.sql.Date;

public class NoticeVO {

	private int no;
	private String title;
	private String Content;
	private Date regdate;
	private int cnt;
	
	
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
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
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "NoticeVO [no=" + no + ", title=" + title + ", Content="
				+ Content + ", regdate=" + regdate + ", cnt=" + cnt + "]";
	}
	

	

	
}
