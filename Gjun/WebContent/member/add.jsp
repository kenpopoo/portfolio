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
<script type="text/javascript">
	function check(){
		if(loginForm.name.value == ""){
			alert("姓名不可空白");
			return;
		}
		if(loginForm.user.value == ""){
			alert("帳號不可空白");
			return;
		}
		if(loginForm.password.value == ""){
			alert("請輸入密碼");
			return;
		}
		loginForm.submit();
	}
</script>
</head>
<body>

	<div data-role="header" data-position="fixed">
		<jsp:include page="../title.jsp" />
		 <div data-role="navbar">
     		 <ul>
        		<li><a href="../index.jsp" data-icon="home" rel="external">首页</a></li>
        		<li><a href="login.jsp" data-icon="arrow-r" rel="external">登入</a></li>
        		<li><a href="add.jsp" data-icon="arrow-r" rel="external" class="ui-btn-active ui-state-persist">註冊</a></li>
      		</ul>
    	</div>
	</div>

	<div data-role="content" class="ui-content">
		<form action="add" method="post" data-ajax="false" name="loginForm">
			<div class="ui-field-contain">
				<label for="name">姓名</label> 
				<input type="text" name="name" id="name">
				<label for="user">帳號</label> 
				<input type="text" name="user"	id="user"> 
				<label for="password">密碼</label> 
				<input type="password" name="password" id="password">
				<label for="address">地址</label> 
				<input type="text" name="address" id="address">
				<label for="mobile">行動電話</label> 
				<input type="text" name="mobile" id="mobile">
				<label for="phone">室內電話</label> 
				<input type="text" name="phone" id="phone">
			</div>
			<input type="button" value="確定" onClick="check()">
		</form>
	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="../end.jsp" />
	</div>

</body>
</html>