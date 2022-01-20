<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
    
     /*
      세션에 저장된 값은 같은 브라우저가 종료되기 까지, 또는 기본 시간 30분까지 어느 페이지에서도 
      사용이 가능합니다.
      get.Attribute("세션이름") 메서드를 사용
      
      
     */
    
     String id = (String)session.getAttribute("id"); //형변환
     //세션의 데이터 타입이 object이기 때문에 캐스팅을 해야한다.
     String name = (String)session.getAttribute("name");
     
     //세션 유지기간 확인 
     int time =  session.getMaxInactiveInterval(); //인자값은 따로 없다. 
     
     //세션 유지시간 변경
     session.setMaxInactiveInterval(3600); //
     int time2 = session.getMaxInactiveInterval();
     
     //특정 세션 삭제
     session.removeAttribute("id");
     //모든 세션 삭제
     session.invalidate();
     //getid()
     String _session = session.getId();
   
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   아이디 :<%=id %> <br>
   이름 : <%=name %> <br>
   세션 유지시간(처음) : <%=time %><br>
   세션 유지시간(변경) : <%=time2 %><br>
   세션 ID : <%=_session %>
   

</body>
</html>