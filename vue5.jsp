<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Vue radio활용법 및 submit 사용법</title>
<script src="https://cdn.jsdelivr.net/npm/vue@2"></script>
</head>
<body>
<!-- 
v-model을 사용시 checked 속성이 적용되지 않음. vue에서 data 가상 변수값에
value과 동일한 값을 적용하면, 자동으로 checked가 설정 되어짐 (checkbox)
 -->
<section id="box">
<!-- submit을 사용시 vue 컨테이너 안에 form을 적용해야만 정상 작동함 -->
<form id="f" method="get" action="./vue5.jsp" v-on:submit="abc">
	<input type="radio" name="coupon" value="신규" v-model="cp">신규가입쿠폰<br>
	<input type="radio" name="coupon" value="10" v-model="cp">10% 할인쿠폰<br>
	<input type="radio" name="coupon" value="3000" v-model="cp">택배비 무료 쿠폰<br>
	<input type="submit" value="쿠폰적용">
</form>
</section>

<!-- 상품검색 응용편 -->
<section id="box2">
	<form id="sh" method="get" action="./vue5.jsp" v-on:submit="gopage">
		상품검색 : <input type="text" name="search" ref="search" v-model="search">
		<button>검색</button>	
	</form>
</section>
</body>
<script src="./vue5.js?v=2"></script>
</html>