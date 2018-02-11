<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/module/headerOne.jsp"></jsp:include>
	<script>
		$(document).ready(function() {
			$('#insertButton').click(function() {
				if ($('#cityName').val() == '') {
					alert('도시를 입력해주세요.')
					$('#cityName').focus();
				} else {
					$('#cityAdd').submit();	
				}
			})
			$('#cancelButton').click(function(){
				document.location.href='<%= request.getContextPath() %>/City/CityList'
			});
		});
	</script>
<jsp:include page="/WEB-INF/views/module/headerTwo.jsp"></jsp:include>

<section id="services">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="section-heading">At Your Service</h2>
				<hr class="my-4">
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-diamond text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Sturdy Templates</h3>
					<p class="text-muted mb-0">Our templates are updated regularly so they don't break.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-paper-plane text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Ready to Ship</h3>
					<p class="text-muted mb-0">You can use this theme as is, or you can make changes!</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-newspaper-o text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Up to Date</h3>
					<p class="text-muted mb-0">We update dependencies to keep things fresh.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 text-center">
				<div class="service-box mt-5 mx-auto">
					<i class="fa fa-4x fa-heart text-primary mb-3 sr-icons"></i>
					<h3 class="mb-3">Made with Love</h3>
					<p class="text-muted mb-0">You have to make your websites with love these days!</p>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="bg-black">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mx-auto text-center">
				<form action="${pageContext.request.contextPath}/City/insertCity" method="post" id="cityAdd">
					<h3 class="mb-3 n-white">CITY</h3>
					<input type="text" name="cityName" id="cityName" class="mb-3 bg-black" placeholder="이곳에 도시 이름을 입력하세요">
					<br>
					<button type="button" id="insertButton" class="btn btn-none n-white">
						<i class="fa fa-check-circle fa-3x"></i>
					</button>
					<!-- 취소버튼 -->
					<button type="button" id="cancelButton" class="btn btn-none n-white">
						<i class="fa fa-times-circle fa-3x"></i>
					</button>
				</form>
			</div>
		</div>
	</div>
</section>

<jsp:include page="/WEB-INF/views/module/bottom.jsp"></jsp:include>
