<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<style>
</style>
</head>
<body>

	<div data-role="header" data-position="fixed">
		<jsp:include page="../title.jsp" />
		 <div data-role="navbar">
     		 <ul>
        		<li><a href="../index.jsp" data-icon="home" rel="external">首页</a></li>
        		<li><a href="login.jsp" data-icon="arrow-r" rel="external" class="ui-btn-active ui-state-persist">登入</a></li>
        		<li><a href="add.jsp" data-icon="arrow-r" rel="external">註冊</a></li>
      		</ul>
    	</div>
	</div>

	<div data-role="content" class="ui-content">
		<form action="login" method="post" data-ajax="false">
			<div class="ui-field-contain">
				<label for="user">帳號</label> 
				<input type="text" name="user"	id="user"> 
				<label for="password">密碼</label> 
				<input type="password" name="password" id="password">
			</div>
			<input type="submit" value="登入">
		</form>
	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="../end.jsp" />
	</div>

</body>
</html>