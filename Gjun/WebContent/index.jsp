<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style>
.ui-content{
		text-align: center;
		padding: 200px;
}
</style>
</head>
<body>

	<div data-role="header" data-position="fixed">
		<jsp:include page="title.jsp" />
		<div data-role="navbar">
     		 <ul>
        		<li><a href="index.jsp" data-icon="home" rel="external" class="ui-btn-active ui-state-persist">首页</a></li>
        		<li><a href="member/login.jsp" data-icon="arrow-r" rel="external">登入</a></li>
        		<li><a href="member/add.jsp" data-icon="arrow-r" rel="external">註冊</a></li>
      		</ul>
    	</div>
	</div>

	<div data-role="content" class="ui-content">
		<h1>歡迎光臨</h1>
	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="end.jsp" />
	</div>

</body>
</html>