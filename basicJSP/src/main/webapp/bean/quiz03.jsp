<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.bean.User" %>

<% 
User user = (User)request.getAttribute("user");
 %>

<%=user.getId()%> (<%=user.getName() %>)님 회원가입을 축하합니다. <br>
비밀번호는 <%=user.getPw() %> 입니다.

<jsp:useBean id="user" class="com.bean.User" scope="request" />
<jsp:getProperty property="id" name="user" />
(<jsp:getProperty property="name" name="user" />)님 회원가입을 축하합니다.<br>

비밀번호는 <jsp:getProperty property="pw" name="u1" />



</body>
</html>