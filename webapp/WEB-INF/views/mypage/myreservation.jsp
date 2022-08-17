<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>여행할때 양도어때</title>

<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/includes/userHeaderFooter.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/mycommon.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/mypage/my.css">

<!-- //css -->
</head>

<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>
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
				<div class="reserve_list">
					<section>
						<h3>
							예약완료 내역 <a class="more_info" style="display: block"
								href="${pageContext.request.contextPath}/my/list/reserve">더보기>></a>
						</h3>
						<c:forEach var="rlist" items="${rlist}" begin="0" end="1">
							<ul class="list_wrap">
								<li class="reservation-detail">
									<div>
										<p class="pic">
											<img
												src="${pageContext.request.contextPath}/upload/${rlist.imgPath}"
												alt="양평 스마일카라반펜션" class="align">
										</p>
										<a
											href="${pageContext.request.contextPath}/my/reserved?resNo=${rlist.resNo}"
											class="product-title"><i class="">예약완료</i> <strong>${rlist.pName}</strong>
											<span>체크인: ${rlist.checkIn} ㆍ ${rlist.inTime}<br>
												체크아웃: ${rlist.checkOut} ㆍ ${rlist.outTime}
										</span></a>
									</div>
								</li>
							</ul>
						</c:forEach>
					</section>
					<section class="list_cancel">
						<h3>
							이용완료 내역 <a class="more_info"
								href="${pageContext.request.contextPath}/my/list/used">더보기>></a>
						</h3>
						<c:forEach var="ulist" items="${ulist}" begin="0" end="1">
							<ul class="list_wrap">
								<li class="reservation-detail"><div>
										<button type="button" class="btn_del">삭제</button>
										<p class="pic">
											<img
												src="${pageContext.request.contextPath}/upload/${ulist.imgPath}"
												alt="삼산 도브" class="align">
										</p>
										<a
											href="${pageContext.request.contextPath}/my/used?resNo=${ulist.resNo}"
											class="product-title"><i class="bg_w">이용완료</i> <strong>${ulist.pName}</strong>
											<span>체크인: ${ulist.checkIn} ㆍ ${ulist.inTime}<br>
												체크아웃: ${ulist.checkOut} ㆍ ${ulist.outTime}
										</span></a>
										<p class="btn_re">
											<a href=""> 리뷰 남기기 </a>
										</p>
									</div></li>
							</ul>
						</c:forEach>
						<!---->
					</section>
					<section class="list_cancel">
						<h3>
							예약취소 내역 <a class="more_info"
								href="${pageContext.request.contextPath}/my/list/cancel">더보기>></a>
						</h3>
						<c:forEach var="clist" items="${clist}" begin="0" end="1">
							<ul class="list_wrap">
								<li class="reservation-detail"><div>
										<button type="button" class="btn_del">삭제</button>
										<p class="pic">
											<img
												src="${pageContext.request.contextPath}/upload/${clist.imgPath}"
												alt="삼산 도브" class="align">
										</p>
										<a
											href="${pageContext.request.contextPath}/my/canceled?resNo=${clist.resNo}"
											class="product-title"><i class="bg_w">예약취소</i> <strong>${clist.pName}</strong>
											<span>체크인: ${clist.checkIn} ㆍ ${clist.inTime}<br>
												체크아웃: ${clist.checkOut} ㆍ ${clist.outTime}
										</span></a>
										<p class="btn_re">
											<a href=""> 다시 예약 </a>
										</p>
									</div></li>
							</ul>
						</c:forEach>
						<!---->
					</section>
				</div>
			</div>
		</div>
		<!-- Footer -->
		<c:import url="/WEB-INF/views/includes/userFooter.jsp"></c:import>
		<!-- Footer -->
	</div>
	<!---->
</body>
</html>