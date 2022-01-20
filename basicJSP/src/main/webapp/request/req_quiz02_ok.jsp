<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    
    //String num = request.getQueryString();
    Integer num = Integer.parseInt(request.getParameter("num"));
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=num%> 번 학생 번호출력




</body>
</html>