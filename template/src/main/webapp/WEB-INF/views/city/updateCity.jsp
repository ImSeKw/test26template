<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/module/headerOne.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/module/headerTwo.jsp"></jsp:include>

<form action="${pageContext.request.contextPath}/city/updateCity" method="post" id="cityUpdate">
	<input type="hidden" name="cityId" value="${city.cityId}">
	<table class="table table-hover">
		<thead class="mdb-color darken-3">
			<tr class="text-white">
				<td><strong>CITY</strong></td>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><input type="text" name="cityName" id="cityName" value="${city.cityName}" placeholder="이곳에 도시 이름을 입력하세요"></td>
			</tr>
			<tr>
				<td>
					<button type="button" id="updateButton" class="btn rgba-blue-strong">
						<i class="fa fa-check-circle" aria-hidden="true"></i>
					</button>
					<!-- 취소버튼 -->
					<button type="button" id="cancelButton" class="btn danger-color-dark">
						<i class="fa fa-times-circle" aria-hidden="true"></i>
					</button>
				</td>
			</tr>
		</tbody>
	</table>
</form>

<jsp:include page="/WEB-INF/views/module/bottom.jsp"></jsp:include>