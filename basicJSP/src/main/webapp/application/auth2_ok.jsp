<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	request.setCharacterEncoding("utf-8");
     	String code = request.getParameter("code");
        String auth = (String)session.getAttribute("auth");
        
        if(code.equals(auth)){
        	response.sendRedirect("reserve.jsp");
        }else{
        	response.sendRedirect("auth2.jsp");
        }
    
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>