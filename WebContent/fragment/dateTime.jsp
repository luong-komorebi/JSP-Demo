
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<% 
Date date = new Date();
DateFormat df =  new SimpleDateFormat("dd-MM-yyy HH:mm:ss SSS");

%>

<h4>Current Time:</h4>
<%=df.format(date)%>