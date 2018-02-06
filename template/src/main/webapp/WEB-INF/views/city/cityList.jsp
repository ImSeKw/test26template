<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/module/headerOne.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/module/headerTwo.jsp"></jsp:include>

<table class="table table-hover">
	<thead class="mdb-color darken-3">
		<tr class="text-white">
			<td><strong>No.</strong></td>
			<td><strong>CITY</strong></td>
			<td><strong>UPDATE</strong></td>
			<td><strong>DELETE</strong></td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="cityList" items="${list}">
			<tr>
				<td><strong>${cityList.cityId}</strong></td>
				<td><strong>${cityList.cityName}</strong></td>
				<td><a href="${pageContext.request.contextPath}/city/updateCity?cityId=${cityList.cityId}" class="btn rgba-teal-strong"role="button"><i class="fa fa-wrench fa-3x" aria-hidden="true"></i></a></td>
				<td><a href="${pageContext.request.contextPath}/city/deleteCity?cityId=${cityList.cityId}" class="btn rgba-red-strong"role="button"><i class="fa fa-times-circle fa-1g" aria-hidden="true"></i></a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<a href="${pageContext.request.contextPath}/" class="btn rgba-pink-strong" role="button">
	<i class="fa fa-home" aria-hidden="true"></i>
</a>
<a href="${pageContext.request.contextPath}/city/insertCity" class="btn rgba-blue-strong" role="button">
	<i class="fa fa-plus-circle" aria-hidden="true"></i>
</a>

<jsp:include page="/WEB-INF/views/module/bottom.jsp"></jsp:include>
