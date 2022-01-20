<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    
    /* show 쿠키가 있다면, 쿠키가 가지고 있는 값을 화면에 출력
       만약에 쿠키 값이 업다면, "쿠키가 없습니다." 출력
    
    
    */
   Cookie[] show = request.getCookies();
   String date = null;
    if(show != null){ //쿠키 존재 여부 확인
    	for(int i=0; i < show.length;i++){
    		if(show[i].getName().equals("show")){
    			date = show[i].getValue();
    		}
    	
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if (date == null) {%>
    쿠키값이 없습니다.
    <%}else{ %>
    마지막 접속 날짜: <%=date %>
    <%} %>
</body>
</html>