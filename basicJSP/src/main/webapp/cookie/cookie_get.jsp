<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //쿠키 사용하기
    //쿠키는 요청시 자동으로 전송되고 request에 자동으로 저장됨.
    Cookie[] arr= request.getCookies(); //배열형태로 지정해야함
    if (arr!=null) {  //쿠키가 null이 아닌경우(존재할 경우)
            for(int i = 0; i < arr.length; i++){
            	out.println(arr[i].getName() + "<br>"); //getName()쿠키의 이름을 얻음.
            	out.println(arr[i].getValue() + "<br>");//getValue() 쿠키의 값 얻음.
            	out.println("<br>");
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

</body>
</html>