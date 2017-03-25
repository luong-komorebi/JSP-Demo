<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Use Bean</title>
</head>
<body>

    <jsp:useBean id="helloBean" class="jsp.tutorial.HelloBean"></jsp:useBean>
    <h3>Say Hello :</h3>
    <jsp:getProperty name="helloBean" property="hello" />    
    
    <!-- Set property name for helloBean -->
    <jsp:setProperty name="helloBean" property="name" value="JSP"/>
    <h3>Say Hello after setName</h3>
    <jsp:getProperty name="helloBean" property="hello"/>
</body>
</html>