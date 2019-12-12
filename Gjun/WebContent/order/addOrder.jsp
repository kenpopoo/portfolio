
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<link href="../CSS/cs.css" rel="stylesheet" type="text/css">
<style>
img {
	width: auto;
	border-radius: 8px;
	max-width: 100%;
	height: auto;
}
</style>
</head>
<body>

	<div data-role="header" data-position="fixed">
		<jsp:include page="../title.jsp" />
		<div data-role="navbar">
     		 <ul>
        		<li><a href="addOrder.jsp" data-icon="home" rel="external" class="ui-btn-active ui-state-persist">購物頁</a></li>
        		<li><a href="../member/accountData.jsp" data-icon="arrow-r" rel="external">會員資料</a></li>
        		<li><a href="../order/orderList.jsp" data-icon="arrow-r" rel="external">訂單查詢</a></li>
      		</ul>
    	</div>
	</div>

	<div data-role="content" class="ui-content">
		<form action="../order/confirmOrder.jsp" data-ajax="false" method="post">
			<table>
				<tr>
					<td colspan=3>Hello ${M.getName() }
				<tr>
					<td colspan=3 align=center>商品
				<tr>
					<td><img src="../img/cap.jpeg"><br>數量 <select
						name="pro1">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
							<option value="7">7
							<option value="8">8
							<option value="9">9
					</select>
					<td><img src="../img/shirt.jpeg"><br>數量<select
						name="pro2">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
							<option value="7">7
							<option value="8">8
							<option value="9">9
					</select>
					<td><img src="../img/pents.jpeg"><br>數量 <select
						name="pro3">
							<option value="0">0
							<option value="1">1
							<option value="2">2
							<option value="3">3
							<option value="4">4
							<option value="5">5
							<option value="6">6
							<option value="7">7
							<option value="8">8
							<option value="9">9
					</select>
				<tr>
					<td colspan="3"><input type="submit" value="OK">
			</table>
		</form>
	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="../end.jsp" />
	</div>

</body>
</html>