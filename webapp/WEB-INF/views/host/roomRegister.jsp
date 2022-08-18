<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실 관리</title>
</head>

<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/hostHeaderFooter.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/host/roomreg.css">

<body>
	<!-- 펜션어때 헤더 -->

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/hostHeader.jsp"></c:import>
	<!-- header -->


	<div id="container">

		<div id="process" class="center-block">
			<ul>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/companyreg"> <span><img src="${pageContext.request.contextPath}/assets/image/host/mypage.png"></span> <span>업체
							등록</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/introreg"> <span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span> <span>소개작성(필수)</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/introregopt"> <span><img src="${pageContext.request.contextPath}/assets/image/host/introduce.png"></span> <span>소개작성(선택)</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/rules"> <span><img src="${pageContext.request.contextPath}/assets/image/host/rules.png"></span> <span>이용규칙
							관리</span>
				</a></li>
				<li class="prog"><br> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span> <span class="do">&nbsp;</span> <span>&nbsp;</span></li>
				<li class="imgs"><a href="${pageContext.request.contextPath}/host/roomreg"> <span><img src="${pageContext.request.contextPath}/assets/image/host/room.png" class="active"></span> <span>객실
							관리</span>
				</a></li>
			</ul>
		</div>

		<!-- 내용 시작 -->
		<!-- 객실 추가 -->

		<!-- 객실 추가 -->
		<!-- 객실정보 폼 -->
		<form id="room_form" action="${pageContext.request.contextPath}/host/roomsave" class="form-horizontal">
			<div class="guest-titie-layer mb_0 pb_0">
				<ul id="design">
					<li>[+ 객실추가]를 누르시면 객실을 추가할 수 있으며 최대 개수는 20개 입니다.</li>
					<li>요금설정에서는 요일이 겹치지 않게 주의해 주시기 바랍니다.</li>
					<li>해당 페이지의 요금 설정은 객실별 기준 가격입니다.</li>
					<li>객실별 판매 금액 수정은 등록 이후 '객실관리' 메뉴에서 가능합니다.</li>
				</ul>
			</div>

			<div id="roomsetting">
				<ul class="nav nav-tabs room-tabs">
					<li><a href="">저장된 객실명</a></li>
					<li><a href="" id="moreroom">+ 객실 추가</a></li>
				</ul>

				<table class="table resize">
					<tbody>
						<tr>
							<th>객실 정보</th>
							<td class="bd_r_none">
								<div class="form-layer mb_24">
									<span class="form-title">객실명</span> <span class="form-body"> 
										<input class="form-control normal-size" type="text" name="roomName" placeholder="이름을 입력하세요." maxlength="30" value="">
									</span>
								</div>

								<div class="form-layer mb_24">
									<span class="form-title">기준인원</span> <span class="form-body">
										<div class="select-style middle-size">
											<select name="standardPeople">
												<option value="" selected="selected" class="text-center">인원을 선택해주세요</option>
												<option value="2">2명</option>
												<option value="3">3명</option>
												<option value="4">4명</option>
												<option value="5">5명</option>
												<option value="6">6명</option>
												<option value="7">7명</option>
												<option value="8">8명</option>
												<option value="9">9명</option>
												<option value="10">10명</option>
											</select>
										</div>
									</span>
								</div>

								<div class="form-layer mb_24">
									<span class="form-title">최대인원</span> <span class="form-body">
										<div class="select-style middle-size">
											<select name="maxPeople">
												<option value="" selected="selected" class="text-center">인원을 선택해주세요</option>
												<option value="4">4명</option>
												<option value="5">5명</option>
												<option value="6">6명</option>
												<option value="7">7명</option>
												<option value="8">8명</option>
												<option value="9">9명</option>
												<option value="10">10명</option>
											</select>
										</div>
									</span>
								</div>
							</td>
							<td class="border_right"></td>
						</tr>

						<tr>
							<th>객실 이미지<br>(최대 15장)
							</th>
							<td class="bd_r_none">
								<div class="form-layer mb_24">
									<p class="order text-normal">* 객실의 전반적인 이미지를 업로드 해주시기 바랍니다.</p>
									<p class="order text-normal">* 이미지 교체를 원하시면 "변경"을 선택하시고 삭제를 원하시면 우측 "삭제"를 선택하시기 바랍니다.</p>
									<p class="order text-normal">* 이미지 장소는 짧게 기입해주시기 바랍니다. 예시) 객실명, 침대, 화장실 등</p>
									<p class="order text-normal">* 첫 이미지가 메인 이미지입니다.</p>
								</div>

								<div class="form-layer mb_15">
									<ul id="room-images">
										<li class="backgrou"><input type="hidden" name="adino[]" value="235381">
											<div>
												<img data-adino="235381" src="${pageContext.request.contextPath}/assets/image/host/logout.png" class="img-rounded">
											</div>
											<button id="changeimage" data-role="img-changer" data-adino="235381" data-ano="3309" data-armgno="0" data-type="8" type="button" class="btn btn-xs btn-success">변경</button>
											<button id="deleteimage" data-role="img-delete" data-adino="235381" type="button" class="btn btn-xs btn-deleete">삭제</button></li>
									</ul>

								</div>

								<div class="form-layer-text">
									<button id="addimage" type="button" class="btn btn-default btn_add" data-role="img-uploader" data-ano="3309" data-armno="0" data-type="8">+ 이미지 추가</button>
								</div>
							</td>
							<td class="border_right"><a href="javascript:void(0)" data-toggle="popover" data-original-title="" title=""> <img id="tooltip"
									src="${pageContext.request.contextPath}/assets/image/host/tooltip.png">
							</a></td>
						</tr>

						<tr>
							<th>객실 이용 안내</th>
							<td class="bd_r_none">
								<div class="form-layer mb_24">
									<span class="form-title">편의시설</span> 
									<span class="form-body"> 
									<input class="form-control normal-size re-size" type="text" name="roomAmenities" placeholder="객실 내 편의시설을 간략하게 작성해주세요." value="">
									</span>
								</div>
								<div class="form-layer mb_24">
									<span class="form-title">추가정보</span> <span class="form-body"> 
									<input class="form-control normal-size re-size" type="text" name="addInfo" placeholder="객실 내 편의시설을 간략하게 작성해주세요." value="">
									</span>
								</div>
								<p id="detail">
									<br>
									<br> 작성 예시 <br>
									<br> [편의시설] <br> 침구류, 120인치 스크린빔, 오디오, 에어컨, 냉장고, 전자레인지, 취사도구 등 <br>
									<br> [추가정보]<br> 스파 20,000 현장결제 <br>
									<br>
								</p>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>
						<tr>
							<th rowspan="3">요금 설정<br> <a href="${pageContext.request.contextPath}/host/rules" class="btn_th_link"> 준/성수기<br> 기간 설정
							</a>
							</th>
							<td class="bd_r_none">
								<div class="form-layer">
									<p class="description">
										<strong id="priceinfo">* 해당 페이지의 요금 설정은 객실별 기준가격입니다. 금액 수정은 등록 이후 '객실관리' 에서 가능합니다.</strong>
									</p>
								</div>
								<div class="form-layer">
									<span class="form-title large">
									 기본<br>(비수기)
									</span> 
									<span id="pricewidth" class="form-body" data-season="NOMAL">
										<div class="room-price room-price-wrap">
											
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-sun" name="gbWeeks1" value="sunday" checked="checked"> 일
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-mon" name="gbWeeks1" value="monday" checked="checked"> 월
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-tue" name="gbWeeks1" value="tuesday" checked="checked"> 화
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-wed" name="gbWeeks1" value="wednesday" checked="checked"> 수
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-thu" name="gbWeeks1" value="thursday" checked="checked"> 목
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-fri" name="gbWeeks1" value="friday" > 금
												</label> 
												<label class="checkbox-inline icon-label">
													<input type="checkbox" class="NORMAL-sat" name="gbWeeks1" value="saturday"> 토
												</label>
											</div>
s											<div class="form-inline">
												<label class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="gbPrice1"> 원
												</label>
											</div>
										</div>

										<div class="room-price room-price-wrap">
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-sun" name="gbWeeks2" value="sunday"> 일
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-mon" name="gbWeeks2" value="monday"> 월
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-tue" name="gbWeeks2" value="tuesday"> 화
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-wed" name="gbWeeks2" value="wednesday"> 수
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-thu" name="gbWeeks2" value="thursday"> 목
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-fri" name="gbWeeks2" value="friday" checked="checked"> 금
												</label> 
												<label class="checkbox-inline icon-label">
													<input type="checkbox" class="NORMAL-sat" name="gbWeeks2" value="saturday" checked="checked"> 토
												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="gbPrice2"> 원
												</label>
											</div>

										</div>


									</span>
								</div>

							</td>
							<td class="bd_r_none border_right"></td>
						</tr>

						<tr>
							<td class="bd_r_none">
								<div class="form-layer">
									<span class="form-title large"> 준성수기
									</span> <span id="pricewidth" class="form-body" data-season="NOMAL">
										<div class="room-price room-price-wrap">
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-sun" name="jsWeeks1" value="sunday" checked="checked"> 일
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-mon" name="jsWeeks1" value="monday" checked="checked"> 월
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-tue" name="jsWeeks1" value="tuesday" checked="checked"> 화
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-wed" name="jsWeeks1" value="wednesday" checked="checked"> 수
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-thu" name="jsWeeks1" value="thursday" checked="checked"> 목
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-fri" name="jsWeeks1" value="friday"> 금
												</label> 
												<label class="checkbox-inline icon-label">
													<input type="checkbox" class="NORMAL-sat" name="jsWeeks1" value="saturday"> 토
												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input data-role class="form-control input-sm" type="text" name="jsPrice1"> 원
												</label>
											</div>
										</div>

										<div class="room-price room-price-wrap">
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-sun" name="jsWeeks2" value="sunday"> 일
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-mon" name="jsWeeks2" value="monday"> 월
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-tue" name="jsWeeks2" value="tuesday"> 화
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-wed" name="jsWeeks2" value="wednesday"> 수
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-thu" name="jsWeeks2" value="thursday"> 목
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-fri" name="jsWeeks2" value="friday" checked="checked"> 금
												</label> 
												<label class="checkbox-inline icon-label">
													<input type="checkbox" class="NORMAL-sat" name="jsWeeks2" value="saturday" checked="checked"> 토
												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="jsPrice2"> 원
												</label>
											</div>

										</div>


									</span>
								</div>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>

						<tr>
							<td class="bd_r_none">
								<div class="form-layer">
									<span class="form-title large"> 성수기
									</span> <span id="pricewidth" class="form-body">
										<div class="room-price room-price-wrap">

											<div class="chk_date">
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-sun" name="sWeeks1" value="sunday" checked="checked"> 일
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-mon" name="sWeeks1" value="monday" checked="checked"> 월
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-tue" name="sWeeks1" value="tuesday" checked="checked"> 화
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-wed" name="sWeeks1" value="wednesday" checked="checked"> 수
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-thu" name="sWeeks1" value="thursday" checked="checked"> 목
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-fri" name="sWeeks1" value="friday"> 금
												</label> 
												<label class="checkbox-inline icon-label">
													<input type="checkbox" class="NORMAL-sat" name="sWeeks1" value="saturday"> 토
												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" type="text" name="sPrice1"> 원
												</label>
											</div>
										</div>

										<div class="room-price room-price-wrap">
											<input type="hidden" name="sortation" value="peck"> 
											
											<div class="chk_date">
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-sun" name="sWeeks2" value="sunday"> 일
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-mon" name="sWeeks2" value="monday"> 월
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-tue" name="sWeeks2" value="tuesday"> 화
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-wed" name="sWeeks2" value="wednesday"> 수
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-thu" name="sWeeks2" value="thursday"> 목
												</label> 
												<label class="checkbox-inline icon-label"> 
													<input type="checkbox" class="NORMAL-fri" name="sWeeks2" value="friday" checked="checked"> 금
												</label> 
												<label class="checkbox-inline icon-label">
													<input type="checkbox" class="NORMAL-sat" name="sWeeks2" value="saturday" checked="checked"> 토
												</label>
											</div>

											<div class="form-inline">
												<label data-role="price" class="radio-inline"> 정상가 : <input class="form-control input-sm" name="sPrice2" type="text"> 원
												</label>
											</div>

										</div>


									</span>
								</div>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>

						<tr id="reservation">
							<th>예약가능여부</th>
							<td>
								<div class="form-check form-switch">
									<input class="form-check-input" type="checkbox" name="reserveAvai" value="Y" id="flexSwitchCheckChecked" checked> <label class="form-check-label" for="flexSwitchCheckChecked">객실 예약 허용</label>
								</div>
								<p id="checkinfo" class="order text-normal">* 체크 해제 시 이용객들이 해당 객실을 예약 할 수 없습니다.</p>
							</td>
							<td class="bd_r_none border_right"></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="submit-layer center-block">
				<button type="button" class="btn btn-default btn-submit btn-guest-room" onclick="deleteRoomInfo()">삭제하기</button>
				<button type="submit" class="btn btn-yeogi btn-submit btn-guest-room">저장하기</button>
			</div>
		</form>

		<!-- 내용 끝 -->
		<!-- container -->
	</div>

	<!-- footer -->
	<c:import url="/WEB-INF/views/includes/hostFooter.jsp"></c:import>
	<!-- footer -->

</body>
</html>