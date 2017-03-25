<%@ page import="jsp.tutorial.CookiesUtils" language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cookies Demo</title>
</head>
<body>
 <%
   CookiesUtils.demoUserCookie(request,response, out);
 %>
 
 <a href ="">Try again!!</a>
</body>
</html>