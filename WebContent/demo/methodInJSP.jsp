<%@page import="java.util.Random"%>
<%!
public int sum(int a,int b) {
	return a+b;
}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Method in JSP</title>
</head>
<body>
 
  <h1>
  Sum of two Random Integer: 
  <%
  Random random = new Random();
  int randomInt1 = random.nextInt(1000);
  int randomInt2 = random.nextInt(1000);
  %>
      <%=randomInt1 %> + <%=randomInt2 %> =    <%=sum(randomInt1, randomInt2)%>
  </h1>
 
</body>