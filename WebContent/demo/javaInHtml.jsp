<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Java in HTML</title>
</head>
<body>
    
    <p>Let's random from 1 to 3 then decide if h1 or h2 or h3 is showing</p>
	<%
		Random random = new Random();
		int randomInt = random.nextInt(3);
		if (randomInt == 0) {
	%>

	<h1>Random value =<%=randomInt%></h1>

	<%
		} else if (randomInt == 1) {
	%>

	<h2>Random value =<%=randomInt%></h2>

	<%
		} else {
	%>
	<h3>Random value =<%=randomInt%></h3>
	<%
		}
	%>
	<a href="<%=request.getRequestURI() %>">Try Again</a>


</body>
</html>