<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" type="com.rohit.User"  class="com.rohit.User" scope="request" >
<jsp:setProperty property="*" name="user" />
</jsp:useBean>

<h2>hello
<jsp:getProperty property="name" name="user"/>
<br>
Your password is <jsp:getProperty property="password" name="user"/>
<br> 
Your Email-Id is <jsp:getProperty property="emailId" name="user"/>
</h2> 

</body>
</html>