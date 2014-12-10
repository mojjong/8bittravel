package org.yo.timecapsule.vo;

public class PlaceVO {

	//GR.NO GRNO, MAX(GR.PLACE) PLACE, MAX(T.NO) RECENT, COUNT(*) CAPSULECOUNT
	private Integer grno;
	private String place;
	private Integer recent;
	private Integer capsulecount;
	
	public Integer getGrno() {
		return grno;
	}
	public PlaceVO setGrno(Integer grno) {
		this.grno = grno;
		return this;
	}
	public String getPlace() {
		return place;
	}
	public PlaceVO setPlace(String place) {
		this.place = place;
		return this;
	}
	public Integer getRecent() {
		return recent;
	}
	public PlaceVO setRecent(Integer recent) {
		this.recent = recent;
		return this;
	}
	public Integer getCapsulecount() {
		return capsulecount;
	}
	public PlaceVO setCapsulecount(Integer capsulecount) {
		this.capsulecount = capsulecount;
		return this;
	}
	@Override
	public String toString() {
		return "PlaceVO [grno=" + grno + ", place=" + place + ", recent="
				+ recent + ", capsulecount=" + capsulecount + "]";
	}
	
	
	
	
	
	
}
