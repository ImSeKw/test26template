<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/module/headerOne.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/module/headerTwo.jsp"></jsp:include>

<section id="services">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">CITY LIST</h2>
				<hr class="my-4">
			</div>
		</div>
	</div>
</section>

<section class="bg-white">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto text-center">
				<table class="table bg-white">
					<thead>
						<tr>
							<th scope="col">NAME</th>
							<th scope="col">UPDATE</th>
							<th scope="col">DELETE</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="list" items="${list}">
							<tr>
								<td>${list.cityName}</td>
								<td><a href="${pageContext.request.contextPath}/city/updateCity?cityId=${cityList.cityId}" class="btn rgba-teal-strong"role="button"><i class="fa fa-wrench fa-3x" aria-hidden="true"></i></a></td>
								<td><a href="${pageContext.request.contextPath}/city/deleteCity?cityId=${cityList.cityId}" class="btn rgba-red-strong"role="button"><i class="fa fa-times-circle fa-1g" aria-hidden="true"></i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>

<section class="p-0"> <!-- id="portfolio" -->
	<div class="container-fluid p-0">
		<div class="row no-gutters popup-gallery">
			<c:forEach var="list" items="${list}">
				<div class="col-lg-4 col-sm-6">
					<div class="portfolio-box">
						<img class="img-fluid" src='<c:url value="/./resources/img/portfolio/thumbnails/1.jpg"/>' alt="">
						<div class="portfolio-box-caption">
							<div class="portfolio-box-caption-content">
								<div class="project-category text-faded">CITY</div>
								<div class="project-name">${list.cityName}</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</section>

<jsp:include page="/WEB-INF/views/module/bottom.jsp"></jsp:include>
