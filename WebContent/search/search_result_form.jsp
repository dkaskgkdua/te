<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Search Result</title>
<style>
.box {
	width: 42%;
	text-align: center;
	margin: 100px;
}

.table-wrapper img {
	width: 95%;
	height: 240px;
}

</style>
</head>

<body>
	<!-- Header -->
	<jsp:include page="../mainActivity/navbar.jsp"/>
	

	<!-- Div -->
	<div id = ''>
		<header style="font-size: 30px; padding: 10px">
			<strong>${search_word }</strong>의 검색 결과입니다
		</header>
	</div>

	<!-- 검색 필터 -->
	<!-- null일 경우 아무것도 안나타나게 해야함 -->
	<div style="text-align: center; padding: 30px;">
	
			<a href="#" class="button alt icon fa-check">검색어</a>
	</div>

	<!-- 검색 결과 -->
		<c:if test = "${!empty list }">
			<c:forEach var ="list" items="${list}">
				<div class = "box">
					<div class="table-wrapper">
						<input type="hidden" name="concert_id" value="${list.concert_id}">
						<img src="images/${list.concert_image }" alt="" />
						<h4>${list.concert_name }</h4>
						<p>${list.concert_musician }</p>
						<table>
							<tr>
								<th>공연 일시</th>
								<td>${list.concert_day }&nbsp;&nbsp;&nbsp;${list.concert_open } - ${list.concert_close }</td>
							</tr>
							<tr>
								<th>공연 장소</th>
								<td>${list.local_id }</td>
							</tr>
							<tr>
								<th>공연 가격</th>
								<td>${list.concert_price }</td>
							</tr>
							<tr>
								<th>장르</th>
								<td>${list.genre_id }</td>
							</tr>
						</table>
						<a href="#" class="button special icon fa-search fit">상세보기</a>
					</div>
				</div>
			</c:forEach>
		</c:if>
		
		
	
</body>
</html>