<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>
User Name: ${param.name }<br>
Email Id:${param.emailId}<br>
Food Choice 1:${paramValues.food[0]}<br>
Food Choice 2:${paramValues.food[1]}<br>
Food Choice 3:${paramValues.food[2]}<br>
</h2>
<br>
<h1>
Host Name :-${header.host}
<br>
Method is:-${pageContext.request.method }
SessionId is :-${cookie.JSESSIONID.value}<br>
Application Context Parameter AdminEmail is :- ${initParam.AdminEmail}
</h1>
</body>
</html>