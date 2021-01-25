<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My 1st JSP Page</title>
</head>
<body>


<!--JSP EXPRESSION  --> 
Today date <%= new java.util.Date() %>


<br/><br/>

25 multiplied by 4 equals <%= 25*4 %>

<br/><br/>

Is 75 less than 69? <%= 75 < 69 %>


<!-- JSP SCRIPTLET -->

<%
for(int i=0;i<10;i++)
{
 out.print(i+"<br>");
 
}
out.println(25*4);
%>

<br/><br/>
Upper case of ravi is: <%= makeupper("rAVI") %>
<br/><br/>
Upper case of sukhan is: <%= makeupper("sukhan") %>

<!-- JSP DECLARATION -->

<%!
String makeupper(String s)
{
 return s.toUpperCase();
}
%>


<%!
int a=34;
%>
<br/><br/>
a is: <%= a %>


<br/>
<br/>



</body>
</html>