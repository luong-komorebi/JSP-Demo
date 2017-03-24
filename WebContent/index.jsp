<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP demo</title>
</head>
<body>
    <h1>Hello JSP</h1>
    
    <% java.util.Date date = new java.util.Date();%>
    
    <h2>
        Now is 
        <%=date.toString()%>
    </h2>
</body>
</html>