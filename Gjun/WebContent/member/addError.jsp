<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../CSS/cs.css" rel="stylesheet">
</head>
<body>
	<div class="header">
		<table align="center">
			<tr>
				<td><jsp:include page="../title.jsp" />
		</table>
	</div>

	<div class="sidebar">
		<table align="center">
			<tr>
				<td><a href="../index.jsp">首頁</a>
			<tr>
				<td><a href="login.jsp">登入</a>
		</table>
	</div>

	<div class="main">
		<form action="add" method="post">
			<table width=300 align=center>
				<tr>
					<td colspan=2 align=center>會員註冊
				<tr>
					<td width=50 align=center>姓名
					<td width=250 align=center><input type="text" name="name">
				<tr>
					<td width=50 align=center>帳號
					<td width=250 align=center><input type="text" name="user">
				<tr>
					<td width=50 align=center>密碼
					<td width=250 align=center><input type="password"
						name="password">
				<tr>
					<td width=50 align=center>住址
					<td width=250 align=center><input type="text" name="address">
				<tr>
					<td width=50 align=center>手機
					<td width=250 align=center><input type="text" name="mobile">
				<tr>
					<td width=80 align=center>室內電話
					<td width=250 align=center><input type="text" name="phone">
				<tr>
					<td colspan=2 align=center>
					<input type="submit" value="ok"><p style=color:Red;>帳號重複</p>
			</table>
		</form>
	</div>

	<div class="footer">
		<table align="center">
			<tr>
				<td><jsp:include page="../end.jsp" />
		</table>
	</div>

</body>
</html>