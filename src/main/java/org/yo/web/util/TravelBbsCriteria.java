package org.yo.web.util;


public class TravelBbsCriteria {
	
	private Integer themeno;
	private Integer regionno;
	private Integer page;
	
	
	public Integer getThemeno() {
		return themeno;
	}
	public TravelBbsCriteria setThemeno(Integer themeno) {
		this.themeno = themeno;
		return this;
	}
	public Integer getRegionno() {
		return regionno;
	}
	public TravelBbsCriteria setRegionno(Integer regionno) {
		this.regionno = regionno;
		return this;
	}
	public Integer getPage() {
		return page;
	}
	public TravelBbsCriteria setPage(Integer page) {
		this.page = page;
		return this;
	}
	@Override
	public String toString() {
		return "TravelBbsCriteria [themeno=" + themeno + ", regionno="
				+ regionno + ", page=" + page + "]";
	}
	
	
}
