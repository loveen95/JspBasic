<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    //세션정보가 없다면 redirect로 login입력 부분으로 되돌리기 
    //url로 직접 입력하여 접근하는 것을 차단하기 위해서....
    
    if(session.getAttribute("user_id") ==null){
    	response.sendRedirect("session_login.jsp");  //비 정상적인 접근을 막기위해 사전에 차단한다.
    }
    request.setCharacterEncoding("utf-8");          
    String nick = (String)session.getAttribute("user_name");
    String id = (String)session.getAttribute("user_id");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<h2><%=id%>(<%=nick%>)님 환영합니다.</h2>
 <a href="session_logout.jsp">로그아웃</a>



</body>
</html>