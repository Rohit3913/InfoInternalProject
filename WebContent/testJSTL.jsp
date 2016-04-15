<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 	<%@page errorPage="error.jsp"  %> --%>
	<h1><a href="FirstMVCservlet"> Click me </a></h1>
	
	<h1>
	
	
	<a href="<c:url value="FirstMVCservlet"></c:url>">  Click me to encode </a>
	
	</h1>
	<h2>
		<c:out value="<i>are used to show italic</i>" escapeXml="false"></c:out>
	</h2>
	<h3>
		Hello
		<c:out value="${user}" default="Rohit" ></c:out>
	<br><br><br>
	<c:if test="${showtable }">
	<table border="2">
		<c:forEach var="animal" items="${animals}" varStatus="counter">
			<tr>
				<td>${counter.count}</td>
				<td>${animal}</td>
			</tr>
		</c:forEach>
	</table></h3>
	</c:if>
	
	<c:choose>
	<c:when test="${authority=='high'}">
	You are high authority user and you can update the database 
	</c:when>
	<c:when test="${authority=='medium'}">
	You are an medium authority user and you can view database
	</c:when>
	<c:otherwise>
	Sorry Sir you are not allowed in here 
	</c:otherwise>
	</c:choose>
	
	<c:set var="userName" scope="session" value="${animals[2]}">
	
	
	</c:set>
	
	
	<c:set target="${user}" property="emailId">
	jason@gamail.com
	
	</c:set>
	
	<c:set target="${map}" property="Ashish" value="265431504"></c:set>
	
	<c:set target="${map}" property="Rohit" value="254631876"></c:set>
	
	<h1>${map['Ashish']}
	
	<br>Updated Rohit is ${map['Rohit']}
	</h1>
	<c:set var="technologies" scope="session" >
	Java,.Net,Cobol,PHP	
	</c:set>
	<c:catch var="exceptionobject">
	<%= 1/0%>
	</c:catch >
	<br><h2><i>
	<h1>
	Exception message ${exceptionobject.message }
	</h1>
	Animal name in session :- ${userName}
	</i></h2>
	if you need any info just google here
	
	<div style="width: 600px;height: 500px;margin-left: 100px;" align="center">
		<c:import url="http://www.google.com">
		<c:param name="subtitle" value="rohit"></c:param>
		</c:import>
	</div>
	
	<br><h2><i>
	We offer books on :- ${technologies}
	</i></h2>
	
	<h1>Updated value using target:- ${user.emailId}
	
	</h1>
	
	<c:remove var="technologies" scope="session"/>
	
	
	
</body>
</html>