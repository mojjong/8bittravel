package org.yo.timecapsule.vo;

public class TimecapsuleVO {

	/*NO	NUMBER
	ID	VARCHAR2(100 BYTE)
	GR_NO	NUMBER
	CONTENT	VARCHAR2(100 BYTE)
	ISFILE	VARCHAR2(100 BYTE)
	REGDATE	DATE*/
	
	/*TIMECAPSULENO
	FILENAME
	SUFFIX*/
	
	private int no;
	private int grno;
	private String id;
	private String content;
	private String isfile;
	private String regdate;
	private int timecapsuleno;
	private String filename;
	private String[] fileList;
	private String suffix;
	private int cnt;
	private String subcontent;
	
	
	
	public String getFilename() {
		return filename;
	}
	public TimecapsuleVO setFilename(String filename) {
		this.filename = filename;
		return this;
	}
		
	public int getNo() {
		return no;
	}
	public TimecapsuleVO setNo(int no) {
		this.no = no;
		return this;
	}
	public int getGrno() {
		return grno;
	}
	public TimecapsuleVO setGrno(int grno) {
		this.grno = grno;
		return this;
	}
	public String getId() {
		return id;
	}
	public TimecapsuleVO setId(String id) {
		this.id = id;
		return this;
	}
	public String getContent() {
		return content;
	}
	public TimecapsuleVO setContent(String content) {
		this.content = content;
		this.setSubcontent(content);
		return this;
	}
	public String getIsfile() {
		return isfile;
	}
	public TimecapsuleVO setIsfile(String isfile) {
		this.isfile = isfile;
		return this;
	}
	public String getRegdate() {
		return regdate;
	}
	public TimecapsuleVO setRegdate(String regdate) {
		this.regdate = regdate;
		return this;
	}
	public int getTimecapsuleno() {
		return timecapsuleno;
	}
	public TimecapsuleVO setTimecapsuleno(int timecapsuleno) {
		this.timecapsuleno = timecapsuleno;
		return this;
	}
	
	public String getSuffix() {
		return suffix;
	}
	public TimecapsuleVO setSuffix(String suffix) {
		this.suffix = suffix;
		return this;
	}
	public int getCnt() {
		return cnt;
	}
	public TimecapsuleVO setCnt(int cnt) {
		this.cnt = cnt;
		return this;
	}
	public String[] getFileList() {
		return fileList;
	}
	public TimecapsuleVO setFileList(String[] fileList) {
		this.fileList = fileList;
		return this;
	}
	
	@Override
	public String toString() {
		return "TimecapsuleVO [no=" + no + ", grno=" + grno + ", id=" + id
				+ ", content=" + content + ", isfile=" + isfile + ", regdate="
				+ regdate + ", timecapsuleno=" + timecapsuleno + ", filename="
				+ filename + ", suffix=" + suffix + ", cnt=" + cnt + "]";
	}
	public String getSubcontent() {
		return subcontent;
	}
	public TimecapsuleVO setSubcontent(String subcontent) {
		this.subcontent = subcontent;
		if(subcontent.length() > 22)
	         this.subcontent = (this.subcontent).substring(0, 22) + "...";
		return this;
	}
	
		
}