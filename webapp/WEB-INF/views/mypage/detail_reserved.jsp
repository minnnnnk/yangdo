<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>여행할때 양도어때</title>

<!-- css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css"
>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/mycommon.css"
>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/my.css"
>

<!-- //css -->
</head>

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"
></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"
></script>
<!-- //js -->
<body class="pc and">
	<!-- Wrap -->
	<div id="wrap" class="wrap show">

		<!-- Header// -->
		<c:import url="/WEB-INF/views/includes/userHeader.jsp"></c:import>
		<!-- //Header// -->

		<!-- Subtop -->
		<c:import url="/WEB-INF/views/mypage/includes/mysubtop.jsp"></c:import>
		<!-- //Subtop -->

		<!-- Content  -->
		<div id="content" class="sub_wrap my_wrap">

			<!-- Nav -->
			<c:import url="/WEB-INF/views/mypage/includes/mynav.jsp"></c:import>
			<!-- Nav -->

			<div class="align_rt">
				<div class="reserve_detail">
					<!---->
					<div class="info" style="">
						<div>
							<i> 예약완료 </i> <strong>스마일카라반펜션</strong> <span>골드룸(기본 2인 최대 4인) • 1박</span>
						</div>
					</div>
					<section class="detail">
						<div>
							<p>
								<strong>체크인</strong>2022.08.30 화 15:00
							</p>
							<p>
								<strong>체크아웃</strong>2022.08.31 수 11:00
							</p>
							<p>
								<strong>인원</strong>기본 2인 / 최대 4인 (인당 추가 금액: 20,000원)
							</p>
						</div>
						<div>
							<p>
								<strong>예약번호</strong>100631482
							</p>
							<p>
								<strong>예약자 이름</strong>홍길동
							</p>
							<p>
								<strong>휴대폰 번호</strong>010-1234-1234 <span class="safety_txt_2">휴대폰 번호는 숙소에 전송되며, 퇴실
									후 7일간 보관됩니다. </span>
							</p>
						</div>
						<div class="sub_total">
							<p>
								<strong>결제정보</strong>
							</p>
							<p>
								<strong class="sub_info"> 주문금액 </strong> <b> 59,000원</b>
							</p>
							<p>
								<strong class="sub_info"> 추가금액 </strong> <b> 20,000원</b>
							</p>
							<p>
								<strong class="sub_info"> 할인금액 </strong> <b> - </b>
							</p>
						</div>
						<div class="total">
							<p>
								<strong>총 결제금액 </strong> <b> 79,000원</b>
							</p>
						</div>
					</section>
					<a href="" class="btn_call">전화로 문의하기</a>
					<section>
						<div style="padding-top: 0; padding-bottom: 0">
							<div class="booking_detail_section_layout_wrap booking-cancel__section"
								style="border-bottom: none;"
							>
								<div class="booking-detail-section-title__wrap">
									<div>
										<!---->
										<div class="sub-title">
											<div class="color-green">2022년 08월 28일 23:59까지 양도 가능합니다.</div>
											<div class="color-red">2022년 08월 24일 23:59까지 무료 취소 가능합니다.</div>
											<!---->
										</div>
									</div>
									<!---->
								</div>
								<button type="button" class="btn_flat booking_detail_flat_button color-green">양도하기</button>
								<button type="button" class="btn_flat booking_detail_flat_button color-red">예약취소
								</button>
								<!---->
								<!---->
							</div>
						</div>
						<!---->
					</section>
				</div>
			</div>
			<div>
				<!---->
			</div>
			<!-- Footer -->
			<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
			<!-- Footer -->
		</div>
	</div>
</body>
</html>