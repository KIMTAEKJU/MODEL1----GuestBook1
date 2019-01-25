<%@page import="com.douzon.guestbook.vo.GuestBookVo"%>
<%@page import="com.douzon.guestbook.dao.GuestBookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String password = request.getParameter("password");
	String no = request.getParameter("no");
	
	GuestBookVo vo = new GuestBookVo();
	vo.setPassword(password);
	vo.setNo(Long.parseLong(no));
	
	new GuestBookDao().delete(vo);
	
	response.sendRedirect("/guestbook1");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>dasds</h1>
</body>
</html>