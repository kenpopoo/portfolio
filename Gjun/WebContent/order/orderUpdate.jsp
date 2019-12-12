<%@page import="com.google.gson.Gson"%>
<%@page import="model.porder"%>
<%@page import="java.util.List"%>
<%@page import="dao.Porder.porderDAO"%>
<%@page import="model.member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript">
	function reviseOrder(){
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var content = this.responseText.trim();
				var jsonArray = JSON.parse(content);
				var num = parseInt(getId());
				document.getElementById("p").innerHTML = "訂單編號: "+(num+1);
				document.getElementById("orderId").value = jsonArray[getId()].id;
				document.getElementById("pro1").value = jsonArray[getId()].pro1;
				document.getElementById("pro2").value = jsonArray[getId()].pro2;
				document.getElementById("pro3").value = jsonArray[getId()].pro3;
			}
		}
		xhttp.open("GET", "query.jsp", true);
		xhttp.send();
	}
	function getId()
	{
	       var query = window.location.search.substring(1);
	       var vars = query.split("=");
	       
	       return vars[1];
	}
</script>
</head>
<body onload="reviseOrder()">

	<div data-role="header" data-position="fixed">
		<jsp:include page="../title.jsp" />
		<div data-role="navbar">
			<ul>
				<li>
					<form action="check" data-ajax="false">
						<button data-icon="home" class="ui-shadow ui-btn ui-corner-all">購物頁</button>
					</form>
				<li><a href="../member/accountData.jsp" data-icon="arrow-r"	rel="external">會員資料</a></li>
				<li><a href="orderList.jsp" data-icon="arrow-r" rel="external">訂單查詢</a></li>
			</ul>
		</div>
	</div>
	
	<div data-role="content" class="ui-content">
		<form action="upOrder" method="post" data-ajax="false">
			<h3>訂單修改</h3>
			<p id="p"></p>
			<div id="order" class="ui-field-contain">
				<label for="pro1">帽子數量</label> 
				<input type="text" name="pro1" id="pro1" value="">				
				<label for="pro2">衣服數量</label> 
				<input type="text" name="pro2" id="pro2" value="">
				<label for="pro3">褲子數量</label> 
				<input type="text" name="pro3" id="pro3" value="">
			</div>
			<input type="hidden" name="orderId" id="orderId" value="">
			<input type="submit" value="確定">
		</form>
	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="../end.jsp" />
	</div>
</body>
</html>

