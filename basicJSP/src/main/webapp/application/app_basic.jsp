<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
      //1. application session과 사용 방법이 많이 비슷하다.
      //서버가 동작할때 1개 생성되고 , 서버가 꺼질때 까지 유지가 된다(생명주기 requst, session 다름)
      
      int count = 0;
      
      if(application.getAttribute("visit") != null){
    	  count = (int)application.getAttribute("visit"); 
      } 
      
      count++;
      
      application.setAttribute("visit", count);
      
      
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
누적값 : <%=count %>
</body>
</html>