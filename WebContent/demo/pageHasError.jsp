<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This page has Error</title>
</head>
<body>
    <h2>Page has Error</h2>
    
    <%
    // Error divided by 0
    int i = 1000 / 0;
    %>
</body>
</html>