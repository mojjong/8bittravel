package org.yo.region.vo;

public class ThemeVO {
	
	private Integer no;
	private String name;
	private String thememode;
	
	
	public Integer getNo() {
		return no;
	}
	public ThemeVO setNo(Integer no) {
		this.no = no;
		return this;
	}
	public String getName() {
		return name;
	}
	public ThemeVO setName(String name) {
		this.name = name;
		return this;
	}
	public String getThememode() {
		return thememode;
	}
	public ThemeVO setThememode(String thememode) {
		this.thememode = thememode;
		return this;
	}
	
	
	@Override
	public String toString() {
		return "ThemeVO [no=" + no + ", name=" + name + ", thememode="
				+ thememode + "]";
	}
	
	
	
	
}
