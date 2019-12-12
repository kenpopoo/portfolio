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
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
<script type="text/javascript">
	function queryAll() {

		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var content = this.responseText.trim();
				var jsonArray = JSON.parse(content);
				var table = document.getElementById("listTable");
				table.innerHTML = '';
				for (var i = 0; i < jsonArray.length; i++) {
					var row = table.insertRow(i);
					var cell1 = row.insertCell(0);
					var cell2 = row.insertCell(1);
					var cell3 = row.insertCell(2);
					var cell4 = row.insertCell(3);
					var cell5 = row.insertCell(4);
					var cell6 = row.insertCell(5);
					cell1.innerHTML = i + 1;
					cell2.innerHTML = jsonArray[i].pro1;
					cell3.innerHTML = jsonArray[i].pro2;
					cell4.innerHTML = jsonArray[i].pro3;
					cell5.innerHTML = jsonArray[i].sum;
					cell6.appendChild(checkBox(i));
				}
			}
		}
		xhttp.open("GET", "query.jsp", true);
		xhttp.send();
	}

	function checkBox(num) {
		var check = document.createElement("input");
		var type = document.createAttribute("type");
		var name = document.createAttribute("name");
		var value = document.createAttribute("value");
		type.value = "radio";
		name.value = "id";
		value.value = num;
		check.setAttributeNode(type);
		check.setAttributeNode(name);
		check.setAttributeNode(value);

		return check;
	}
	
	
	function deleteOrder(){
		alert("確定刪除訂單?");
		var delForm = document.getElementById("revise");
		var action =  document.createAttribute("action");
		action.value = "delete";
		delForm.setAttributeNode(action);
		
	}
</script>
</head>
<body onload="queryAll()">

	<div data-role="header" data-position="fixed">
		<jsp:include page="../title.jsp" />
		<div data-role="navbar">
			<ul>
				<li>
					<form action="check" data-ajax="false">
						<button data-icon="home" class="ui-shadow ui-btn ui-corner-all">購物頁</button>
					</form>
				<li><a href="../member/accountData.jsp" data-icon="arrow-r"
					rel="external">會員資料</a></li>
				<li><a href="orderList.jsp" data-icon="arrow-r" rel="external"
					class="ui-btn-active ui-state-persist">訂單查詢</a></li>
			</ul>
		</div>
	</div>

	<div data-role="content" class="ui-content">
		<form data-ajax="false" id="revise">
			<table data-role="table" class="ui-responsive">
				<thead>
					<tr>
						<th>訂單編號
						<th>帽子數量
						<th>衣服數量
						<th>褲子數量
						<th>總金額
						<th>編輯
				</thead>
				
				<tbody id="listTable">

				</tbody>
			</table>
		</form>
		<input type="submit" value="修改" data-inline="true" form="revise">
		<input type="submit" value="刪除" data-inline="true" form="revise" onClick="deleteOrder()">

	</div>

	<div data-role="footer" data-position="fixed">
		<jsp:include page="../end.jsp" />
	</div>
</body>
</html>

