package org.yo.notice.vo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class BbsCriteria implements Criteria {

	private int cnt;              //전체글갯수
	private int startPage;        //시작페이지
	private int endPage;          //마지막페이지
	private int currentBlock;     //현재 블록
	private int totalPage;        //총페이지
	private int totalBlock;       //총 블록
	private int currentPage;      //현재 페이지
	
	private int startRecord;      //현재보여지는 시작글번호
	private int endRecord;        //현재보여지는 마지막글번호
	
	private String category;      // 검색할 카테고리
	private String keyword;       // 검색할 키워드
	
	private int blockSize=5;      // 페이징블럭 
	private int pageSize=10;	  // 한페이지에 나타나는 글갯수	
	
	private Map<String, String> crimap; //  jsp에서 입력한 카테고리와 키워드가 담긴맵
	private Map<String, String> colmap; // 검색하고 컬럼명들어갈맵
	private List<String> values;  //sql 처리할맵
	
	
	
	
	
	public BbsCriteria() {
		
		crimap = new HashMap<String, String>();
		colmap = new HashMap<String, String>();
		colmap.put("t", "title");
		colmap.put("w", "writer");
		colmap.put("c", "content");
		
		
	}
	
	public String getSql(){
		
		StringBuilder builder = new StringBuilder(" AND "); // 쿼리문만들 스트링빌더
		Iterator<String> it = crimap.keySet().iterator(); // 반복하는걸만든다

		this.values = new ArrayList<String>();            // 검색할 단어가 들어갈 맵
		
		for(int i=0; i < crimap.size(); i++){			  // 더미데이터를넣어야 오류가안남
			this.values.add("DUMMY");
		}
	
		while(it.hasNext()){	           // hasnext 는 다음이 있을경우 true, 아님 false/ 다음으로갈지정해준다
			
			String key = it.next();						  // next는 진짜 다음으로가는거
			this.values.add(crimap.get(key));			  // 검색할단어가들어갈맵(values)에 크리맵에있는 키를 담는다
			
			builder.append(colmap.get(key) + " like '%'||#{key}||'%'");  //  getKey()를 spl에서 사용하기위해
			builder.append(" OR ");
			
		}
		return builder.substring(0, builder.length()-4);
	}
	
	
	public String getKey(){ 
		return this.values.remove(0);                   //쿼리문에서 쓰려면 앞에 키가 중복되므로 지우기위해
		
	}
	
	public void addCri(String key, String value){       // 크리맵에 넣어준다
		crimap.put(key, value);
	}
	
	public String selected(String type){
		
		if(category == null || category == ""){
			return "";
		}

		if(category.equals(type)){
			return "selected";
		}

		return "";
		
	}
	
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
		
		totalPage = (int)(Math.floor((cnt - 1)/pageSize)) + 1;
		
		totalBlock = (int)(Math.ceil(totalPage/blockSize));
		
		currentBlock = (int)(Math.floor((currentPage - 1)/blockSize)) + 1;
		
		startPage = (currentBlock-1)*blockSize + 1;
		
		endPage = startPage + (blockSize - 1);
		
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		endRecord = currentPage * 10;
		startRecord = ((currentPage-1)*10)+1;
		
		if(endRecord > cnt){
			endRecord = cnt;
		}
		
		
		
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getCurrentBlock() {
		return currentBlock;
	}
	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getTotalBlock() {
		return totalBlock;
	}
	public void setTotalBlock(int totalBlock) {
		this.totalBlock = totalBlock;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getStartRecord() {
		return startRecord;
	}
	public void setStartRecord(int startRecord) {
		this.startRecord = startRecord;
	}
	public int getEndRecord() {
		return endRecord;
	}
	public void setEndRecord(int endRecord) {
		this.endRecord = endRecord;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	@Override
	public String toString() {
		return "BbsCriteria [cnt=" + cnt + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", currentBlock=" + currentBlock
				+ ", totalPage=" + totalPage + ", totalBlock=" + totalBlock
				+ ", currentPage=" + currentPage + ", startRecord="
				+ startRecord + ", endRecord=" + endRecord + ", category="
				+ category + ", keyword=" + keyword + ", blockSize="
				+ blockSize + ", pageSize=" + pageSize + "]";
	}

}


