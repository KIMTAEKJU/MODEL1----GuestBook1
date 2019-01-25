<%@page import="com.douzon.guestbook.dao.GuestBookDao"%>
<%@page import="com.douzon.guestbook.vo.GuestBookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	
	GuestBookVo vo = new GuestBookVo(name, password, message);
	
	new GuestBookDao().insert(vo);
	
	response.sendRedirect("/guestbook1");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>글등록</h1>
</body>
</html>