<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <!-- 
  1. a태그를 이용하여 경로를 이동
  2. reg_video페이지로 상대 경로로 이동 설정
  3. reg_video페이지로 절대 경로로 이동 설정
  4. TestServlet으로 상대 경로로 이동 설정
  5. TestServlet으로 절대 경로로 이동 설정
  6. request 에 img에 폴더에 있는 이미지를 참조(img 태그 사용- width=100)
   
  
   -->
   
 <a href="../../request/req_video.jsp">상대 경로(req_video.jsp)</a><br>
 <a href="/basicJSP/request/req_video.jsp">절대 경로(req_video.jsp)</a><br>
 <a href="../../apple">서블릿 상대 경로(TestServlet)</a><br>
  <a href="/basicJSP/apple">서블릿 절대 경로(TestServlet)</a><br>
  <img src="../../request/img/정국.jpg" width="100"> <br>

</body>
</html>