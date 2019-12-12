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
<%
	int pro1 = Integer.parseInt(request.getParameter("pro1"));
	int pro2 = Integer.parseInt(request.getParameter("pro2"));
	int pro3 = Integer.parseInt(request.getParameter("pro3"));
	member m = (member)session.getAttribute("M");
	
	porder p = new porder();
	p.setPro1(pro1);
	p.setPro2(pro2);
	p.setPro3(pro3);
	p.setName(m.getName());
	
	session.setAttribute("P", p);
%>
<body>

	<div data-role="header" data-position="fixed">
		<jsp:include page="../title.jsp" />
	</div>

	<div data-role="content" class="ui-content">
		<form action="finish" method="post" data-ajax="false">
			<div class="ui-field-contain">
				<h3>訂單確認</h3>
				<p>姓名: ${P.getName() }</p> 
				<p>帽子:數量 ${P.getPro1() }</p>
				<p>衣服:數量 ${P.getPro2() }</p>
				<p>褲子:數量 ${P.getPro3() }</p>
				<p>total:${P.getSum() } 元</p>
			</div>
			<input type="button" onclick="history.back()" value="返回" data-inline="true">
			<input type="submit" value="ok" data-inline="true">
		</form>
	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="../end.jsp" />
	</div>

</body>
</html>