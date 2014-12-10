package org.yo.region.vo;

public class RegionVO {
	
	private Integer NO;
	private String DO;
	private String SIGUN;
	
	
	public Integer getNO() {
		return NO;
	}
	public RegionVO setNO(Integer NO) {
		this.NO = NO;
		return this;
	}
	public String getDO() {
		return DO;
	}
	public RegionVO setDO(String DO) {
		this.DO = DO;
		return this;
	}
	public String getSIGUN() {
		return SIGUN;
	}
	public RegionVO setSIGUN(String SIGUN) {
		this.SIGUN = SIGUN;
		return this;
	}
	@Override
	public String toString() {
		return "RegionVO [NO=" + NO + ", DO=" + DO + ", SIGUN=" + SIGUN + "]";
	}
	
	

}
