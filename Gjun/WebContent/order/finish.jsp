<%@page import="model.member"%>
<%@page import="model.porder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<link rel="stylesheet" href="../CSS/cs.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style>
.ui-content{
		text-align: center;
		padding: 200px;
}
</style>
</head>
<body>

	<div data-role="header" data-position="fixed">
		<jsp:include page="../title.jsp" />
		<div data-role="navbar">
     		 <ul>
        		<li><a href="addOrder.jsp" data-icon="home" rel="external">購物頁</a></li>
        		<li><a href="../member/accountData.jsp" data-icon="arrow-r" rel="external">會員資料</a></li>
        		<li><a href="orderList.jsp" data-icon="arrow-r" rel="external">訂單查詢</a></li>
      		</ul>
    	</div>
	</div>

	<div data-role="content" class="ui-content">
		<h3>購買完成</h3>
	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="../end.jsp" />
	</div>

</body>
</html>