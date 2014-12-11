package org.yo.feedback.vo;

import java.sql.Date;

public class FeedbackVO {

	private int no;
	private String userId;
	private String guideId;
	private String title;
	private String content;
	private int rating;
	private Date regdate;
	private int minIdx;
	
	
	
	
	public int getMinIdx() {
		return minIdx;
	}
	public void setMinIdx(int minIdx) {
		this.minIdx = minIdx;
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
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getGuideId() {
		return guideId;
	}
	public void setGuideId(String guideId) {
		this.guideId = guideId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	@Override
	public String toString() {
		return "FeedbackVO [no=" + no + ", userId=" + userId + ", guideId="
				+ guideId + ", title=" + title + ", content=" + content
				+ ", rating=" + rating + ", regdate=" + regdate + "]";
	}
	
	
	
	
}
