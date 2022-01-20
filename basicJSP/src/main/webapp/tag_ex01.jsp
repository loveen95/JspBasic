<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%! /*선언자와 스크립트릿의 차이 => 멤버 변수는 전역변수의 성질을 가지면서 전체 영향을 준다.
   
    */    
    
    int total = 0; //전역변수
	public int randomNum(){
		Random ran = new Random();
		int num = ran.nextInt(100);
		return num;
}

%>  
    <%
    
   /*  1. 페이지를 접속 할 때마다 랜덤으로 생성된 값을 출력(메소드를 사용) : 
	    출력 양식 = > 오늘의 숫자 : 랜덤 숫자를 출력
       2. 페이지 누적 요청 숫자를 계산하여 출력
        출력 양식 = > 페이지 누적 요청 : 누적 요청 수(int)
       3. 요청한 페이지 개별 요청 숫자를 표시
        출력 양식 => 페이지 개별 요청 : 개별 요청 수(int)
        
        //페이지가 실행 될 때마다 발생하는 코드를 작성
    */    
        int each = 0;    // 스크립틀릿 안에 있는 변수들을 실행할때마다 다시 초기화 된다.
        
        total++;  //스크립틀릿 밖에 있는 값은 누적할수 있다.
        each++; 
        int rn = randomNum(); //0~100사이에 있는 랜덤 값 출력
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<p>
<br> 오늘의 숫자 :<%=rn%><br>
<br> 페이지 누적 요청 :<%=total%> <br> 
<br> 페이지 개별 요청 :<%=each %><br>

</body>
</html>