<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
//request 에는 브라우저에 대한 정보, 사용자가 전달하고자 하는 많은 정보를 자동으로 저장함.
StringBuffer url = request.getRequestURL();
String uri = request.getRequestURI();
String path = request.getContextPath();
String query = request.getQueryString();
String addr = request.getRemoteAddr();
String server = request.getServerName();
 int port = request.getServerPort(); 
String name = request.getParameter("name");

System.out.println("접속주소 : " + addr);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     url 주소 : <%=url %><br>
      uri 주소 :<%=uri %> <br>
       context 경로 :<%=path %> <br>
        쿼리값 : <%=query %><br>
         접속 경로 : <%=addr %><br>
          서버 이름 : <%= server %><br>
           포트 번호 : <%= port %><br>
             이름 : <%= name %>
         



</body>
</html>