<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <!--                   	<div class="pagination-holder left">
                        		<ul class="pagination">
                            		<li><a href="#">&laquo;</a></li>
                            		<li class="active"><a href="#">1</a></li>
                            		<li><a href="#">2</a></li>
                            		<li><a href="#">3</a></li>
                            		<li><a href="#">4</a></li>
                            		<li><a href="#">5</a></li>
                            	<li><a href="#">&raquo;</a></li>
                        	</ul>
                    	</div> 
		 -->			

<div class="pagination-holder center">
 <ul class="pagination">
<c:set var="blockStartPage" value="${pageVo.getStartPage() }" />
<c:set var="blockEndPage" value="${pageVo.getEndPage() }" />

<c:if test="${blockStartPage != 1 }">
	<li><a href="/bbs/qna/persqna?page=${blockStartPage-1 }">&laquo;</a></li>
</c:if>

<c:forEach var="i" begin="${blockStartPage}" end="${blockEndPage}"
	step="1">
	
	
	<%-- <li><a href="/list?page=${i }">${i }</a></li> --%>
	<c:choose>
	<c:when test="${pageVo.getCurrentPage() == i }">
	<li class="active">
	</c:when>
	<c:otherwise>
	<li>
	</c:otherwise>
	</c:choose>
	<a href="/bbs/qna/persqna?page=${i }">${i }</a></li>
 </c:forEach>
<c:if test="${blockEndPage != pageVo.getTotalPage() }">
	<li><a href="/bbs/qna/persqna?page=${blockEndPage+1 }">&raquo;</a></li>
</c:if>
</ul>
</div>