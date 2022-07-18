<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../layout/header.jsp"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Popper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<style>
.areaList_li li a {
	background-color: white;
	padding: 7px;
	border-radius: 40%;
}
</style>


<div class="main-container"
	style="width: 1190px; margin-left: 365px; margin-top: 70px; ">
	<div style="width: 1190px; height: 200px; background-color: rgba(245, 161, 25, 0.9); border-radius: 20px;">
		<div
			style="font-size: 30px; display: flex; justify-content: center; font-weight: bold; ">
			<span style="margin-top: 20px; color: white;">어디 여행 가고싶나요?</span>
		</div>
		<br />
		<div class="areaList"
			style="font-size: 15px; green; width: 600px; height: 50px; margin-left: 300px;">
			<ul class="areaList_li"
				style="display: flex; flex-direction: row; justify-content: space-around; padding-top: 12px;">
				<li class="area_list"><a href="travel/areainfo/1">서울</a></li>
				<li class="area_list"><a href="travel/areainfo/2">인천</a></li>
				<li><a>대전</a></li>
				<li><a>대구</a></li>
				<li><a>광주</a></li>
				<li><a>부산</a></li>
				<li><a>울산</a></li>
				<li><a>세종</a></li>
				<li><a>경기</a></li>
				<li><a>강원</a></li>
			</ul>
		</div>
		<div class="areaList"
			style="font-size: 15px; green; width: 600px; height: 50px; margin-left: 300px;">
			<ul class="areaList_li"
				style="display: flex; flex-direction: row; justify-content: space-around; padding-top: 12px;">
				<li><a>충북</a></li>
				<li><a>충남</a></li>
				<li><a>경북</a></li>
				<li><a>경남</a></li>
				<li><a>전북</a></li>
				<li><a>전남</a></li>
				<li><a>제주도</a></li>

			</ul>
		</div>
	</div>
	<br/>
	<div class="mdu_img1type">
		<div
			style="font-size: 25px; font-style: oblique; margin-left: 50px; font-weight: bold;">서울</div>
		<div class="img"
			style="display: flex; justify-content: space-around; width: 1200px;">
			<li class="prev" style="display: flex; align-items: center;">&#10094;</li>
			<c:forEach var="area" items="${lists[0]}">
				<div class="">
					<div class="" style="display: flex; justify-content: space-around;">
						<div class="swiper-slide">
							<a href="/oaga/travel_guinfo/${area.id}"> <img
								class="imageList"
								style="width: 200px; border-radius: 1ex; margin: 15px;"
								src="${area.imageUrl}" alt="">
								<h3 style="margin-left: 13px;">${area.guname}</h3>
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
			<a class="next" style="display: flex; align-items: center;"
				id="next_slide">&#10095;</a>
		</div>
		<br /> <br />
		<div
			style="font-size: 25px; font-style: oblique; margin-left: 50px; font-weight: bold;">부산</div>
		<div class="img"
			style="display: flex; justify-content: space-around; width: 1200px;">
			<li class="prev" style="display: flex; align-items: center;">&#10094;</li>
			<c:forEach var="area" items="${lists[1]}">
				<div class="">
					<div class="" style="display: flex; justify-content: space-around;">
						<div class="swiper-slide">
							<a href="/oaga/travel_guinfo/${area.id}"> <img
								class="imageList"
								style="width: 200px; border-radius: 1ex; margin: 15px;"
								src="${area.imageUrl}" alt="">
								<h3 style="margin-left: 13px;">${area.guname}</h3>
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
			<a class="next" style="display: flex; align-items: center;"
				id="next_slide">&#10095;</a>
		</div>
		<br /> <br />
		<div
			style="font-size: 25px; font-style: oblique; margin-left: 50px; font-weight: bold;">제주도</div>
		<div class="img"
			style="display: flex; justify-content: space-around; width: 1200px;">
			<li class="prev" style="display: flex; align-items: center;">&#10094;</li>
			<c:forEach var="area" items="${lists[3]}">
				<div class="">
					<div class="" style="display: flex; justify-content: space-around;">
						<div class="swiper-slide">
							<a href="/oaga/travel_guinfo/${area.id}"> <img
								class="imageList"
								style="width: 200px; border-radius: 1ex; margin: 15px;"
								src="${area.imageUrl}" alt="">
								<h3 style="margin-left: 13px;">${area.guname}</h3>
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
			<a class="next" style="display: flex; align-items: center;"
				id="next_slide">&#10095;</a>
		</div>
		<br /> <br />


	</div>
</div>
<br />
<br />

<script src="js/travelInfo.js"></script>

<%@ include file="../layout/footer.jsp"%>

