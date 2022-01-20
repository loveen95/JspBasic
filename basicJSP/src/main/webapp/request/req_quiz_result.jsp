<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    <%   
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    Double cm = Double.parseDouble(request.getParameter("height"));
    Double kg = Double.parseDouble(request.getParameter("weight"));
    Double BMI = kg / (cm/100 * cm/100);
    BMI = (int)(BMI * 100) / 100.0; //연산을 통해서 자릿수를 나타내기
    String BMII= "";
    if(BMI >= 25){
        BMII = "과체중";   	
    }else if(BMI <= 18){
    	  BMII = "저체중";
    }else 
    	  BMII = "정상";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름 :<%=name %> <br>
키 : <%= cm %><br>
몸무게 :<%=kg %> <br>
BMI : <%=BMI %><br>
BMI 지수 결과 : <%=BMII %>

</body>
</html>

