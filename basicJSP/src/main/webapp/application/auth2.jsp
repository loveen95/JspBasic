<%@page import="java.util.Arrays"%>
<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
       UUID uuid = UUID.randomUUID();
    	String struuid = uuid.toString();
    	System.out.println(struuid);
    	
    	String[] str = struuid.split("-");
    	System.out.println(Arrays.toString(str));
    	
    	session.setAttribute("auth", str[0]);

     
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
  <h2>인증 페이지</h2>
  <hr>
  <form action="auth2_ok.jsp" method="post">
  	<h3>인증 문자</h3><br><del><%=str[0] %></del> <br><br>
  	인증 문자를 입력하세요 : <input type="text" name="code" size="8">
  	<input type="submit" value="확인"> 
</form>
</div>
</body>
</html>