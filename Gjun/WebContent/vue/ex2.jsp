<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="main.js"></script>
<link rel="stylesheet" href="style.css">
</head>
<body onload="initial2()">
	<h1>Vue.js</h1>
	<div id="msg">
		<p v-html="message"></p>
		<input type="text" v-model="test1">
		<input type="button" v-on:click="doAction" value="click">
	</div>
</body>
</html>