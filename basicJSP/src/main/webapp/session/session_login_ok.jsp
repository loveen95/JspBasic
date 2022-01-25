<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
/*
1. 아이디와 비밀번호, 닉네임을 받기
2. 조건 : 아이디와 비밀번호가 서로 동일하면 로그인
로그인시에 user_id로 id값을 세션에 저장
user_name이름으로 nick을 세션에 저장
session_welcome.jsp페이지로 이동하여"id님(nick) 환영합니다."
3.로그인 실패시에는 다시 로그인 페이지로 리다이렉트 처리 response.sendRedirect();

   
*/
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String nick = request.getParameter("nick");
String pw = request.getParameter("pw");

if (id.equals(pw)) {
	session.setAttribute("user_id", id);
	session.setAttribute("user_name", nick);
	response.sendRedirect("session_welcome.jsp");
} else {
	//response.sendRedirect("session_login.jsp");

   
    /* 자바스크립트를 써보자!!
      자바스크립트의 변수 선언
      var a = 1;  //정수형
      var b = "1"; //문자형
      let c = 1; 
      const d = "1";
      
      자바스크립트의 함수 
      fuction 이름(매개변수) {
    	  
      }
      함수(es6방식)
      이름 = () => {
    	  
      }
      제어 : for, if, while, switch, try ....
      자바스크립트 내에서 자주 사용하는 내장객체 
       ex)alert() : 경고창 
          confirm() : 확인창
          history.go(-1) : 뒤로가기
          location.href = "경로"; //웹 페이지를 "경로" 정보로 redirect
    */
    %>
    <script>
        check(); //함수 호출 선언, 선언 되면  앞뒤 어디서든 사용 가능함.
        
        function check(){
        	alert("로그인에 실패했습니다."); //경고창
        	history.go(-1); // 뒤로 가기(history 객체는 접속 페이지를 저장하는 객체)
        }
      </script>    
          
<%}

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