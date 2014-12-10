package org.yo.web.util;

public class TimecapsuleCriteria {

	private int cnt;
	private int startPage;
	private int endPage;
	private int totalPage;
	private int totalBlock;
	private int currentPage;
	private int currentBlock;
	private int preBlock;
	private int nextBlock;
	private static int blockSize=5;
	private static int pageSize=9;
	private int startRecord;	
	private int endRecord;	
	private int grno;
	
	public int getGrno() {
		return grno;
	}
	public void setGrno(int grno) {
		this.grno = grno;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
		
		totalBlock = (int)Math.ceil(totalPage/blockSize);
		totalPage= (int)(Math.floor((cnt-1)/pageSize))+1;
		
		currentBlock=(int)(Math.floor((currentPage-1)/blockSize))+1;
		startPage=(currentBlock-1)*blockSize+1;
		endPage=startPage+(blockSize-1);
		
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		endRecord= currentPage*9;
		startRecord = ((currentPage-1)*9)+1;
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
	public int getCurrentBlock() {
		return currentBlock;
	}
	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}
	public int getPreBlock() {
		return preBlock;
	}
	public void setPreBlock(int preBlock) {
		this.preBlock = preBlock;
	}
	public int getNextBlock() {
		return nextBlock;
	}
	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}
	public static int getBlockSize() {
		return blockSize;
	}
	public static void setBlockSize(int blockSize) {
		TimecapsuleCriteria.blockSize = blockSize;
	}
	public static int getPageSize() {
		return pageSize;
	}
	public static void setPageSize(int pageSize) {
		TimecapsuleCriteria.pageSize = pageSize;
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
	
	@Override
	public String toString() {
		return "TimecapsuleCriteria [cnt=" + cnt + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", totalPage=" + totalPage
				+ ", totalBlock=" + totalBlock + ", currentPage=" + currentPage
				+ ", currentBlock=" + currentBlock + ", preBlock=" + preBlock
				+ ", nextBlock=" + nextBlock + ", startRecord=" + startRecord
				+ ", endRecord=" + endRecord + ", grno=" + grno + "]";
	}
	
	
}
