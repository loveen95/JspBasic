<%-- <%@page import="com.bean.User"%>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    /*
    1.전달 받은 값을 처리
    2.pw와 pw_check값이 같으면 User객체에 quiz 01로부터 받은 값을 저장하여 quiz03으로 전달
     화면 출력 내용 : "id(name)님의 회원가입을 축하합니다. 비밀번호는 ****입니디."
    3.pw와 pw_check값이 틀린경우 , quiz04.jsp로 넘어가서 "회원가입에 실패했습니다." 출력
    */
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    String pw_check = request.getParameter("pw_check");
    String name =request.getParameter("name");
    

    if (pw.equals(pw_check)) { %>
<jsp:useBean id="user" class="com.bean.User" scope="request"/>
<jsp:setProperty property="id" name="user" value=<%=id %> />
<jsp:setProperty property="pw" name="user" value=<%=pw %>  />
<jsp:setProperty property="name" name="user" value=<%=name %>  />

<jsp:forward page="quiz03.jsp" />
    <%-- 	User user = new User();
    	user.setId(id);
    	user.setName(name);
    	user.setPw(pw);
    	request.setAttribute("user", user);
    	RequestDispatcher dp = request.getRequestDispatcher("quiz03.jsp");
    	dp.forward(request, response); --%>
    	
    	//.forward(request, response); 이렇게 하면 객체를 생성안하고도 포워드 할수 있음.
    <% }else {
    	RequestDispatcher dp = request.getRequestDispatcher("quiz04.jsp");
    	dp.forward(request, response);
    }
    
    %>

 
    
   
