<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="pagination-holder center">
 <ul class="pagination">
<c:set var="blockStartPage" value="${pageVo.getStartPage() }" />
<c:set var="blockEndPage" value="${pageVo.getEndPage() }" />

<c:if test="${blockStartPage != 1 }">
	<li><a href="/timecapsule/sub/placesublist?page=${blockStartPage-1 }">&laquo;</a></li>
</c:if>

<c:forEach var="i" begin="${blockStartPage}" end="${blockEndPage}"
	step="1">
	
	<c:choose>
	<c:when test="${pageVo.getCurrentPage() == i }">
	<li class="active">
	</c:when>
	<c:otherwise>
	<li>
	</c:otherwise>
	</c:choose>
	<a href="/timecapsule/sub/placesublist?page=${i }&grno=${pageVo.grno}">${i }</a></li>
 </c:forEach>
<c:if test="${blockEndPage != pageVo.getTotalPage() }">
	<li><a href="/timecapsule/sub/placesublist?page=${blockEndPage+1 }">&raquo;</a></li>
</c:if>
</ul>
</div>