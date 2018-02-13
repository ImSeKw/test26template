<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/module/headerOne.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/module/headerTwo.jsp"></jsp:include>

<!-- <section id="services">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">CITY LIST</h2>
				<hr class="my-3">
			</div>
		</div>
	</div>
</section> -->

<section class="bg-white">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto text-center">
				<h2 class="section-heading">CITY LIST</h2>
				<hr class="my-5">
				<table class="table bg-white">
					<tbody>
						<c:forEach var="list" items="${list}">
							<tr>
								<td><strong>${list.cityName}</strong></td>
								<td>
									<a href="${pageContext.request.contextPath}/city/updateCity?cityId=${cityList.cityId}" class="btn btn-none n-gray"role="button">
										<i class="fa fa-cog fa-2x" aria-hidden="true"></i>
									</a>
									<a href="${pageContext.request.contextPath}/city/deleteCity?cityId=${cityList.cityId}" class="btn rgba-red-strong"role="button">
										<i class="fa fa-times fa-2x" aria-hidden="true"></i>
									</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>


<jsp:include page="/WEB-INF/views/module/bottom.jsp"></jsp:include>
