<%@page import="com.google.gson.Gson"%>
<%@page import="model.porder"%>
<%@page import="dao.Porder.porderDAO"%>
<%@page import="java.util.List"%>
<%@page import="model.member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	member m = (member) session.getAttribute("M");
	List<Object> l = new porderDAO().queryHql("from porder where name='"+m.getName()+"'");
	porder[] p = l.toArray(new porder[0]);
	session.setAttribute("order", p);
	String json = new Gson().toJson(p);
	out.print(json);
%>