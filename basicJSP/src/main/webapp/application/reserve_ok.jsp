<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% 
    //예약 설정 확인 페이지
    //1. 리스트 2개를 생성(좌석을 저장한 리스트, 사본을 저장할 리스트) //체크박스는 리스트로 반환
    List<String> list = new ArrayList<>();
    List<String> temp = new ArrayList<>();
    //2. app에 예약 현황이 있다면 원본 리스트에 저장
    if(application.getAttribute("seat")!= null){
        list = (List<String>)application.getAttribute("seat");
    }
    //3. reserve.jsp에서 넘어온 예약값을 확인 requst.
    String[] arr = request.getParameterValues("seat");
    
    //4. arr에 저장된 값이 list에 포함되어 있는지 확인. contains(값)
    for(String s : arr){
    	if(list.contains(s)){ //예약이 된 경우
    		break; // 중단
    	}else { //예약되지 않은 경우
    		temp.add(s);
    	}
    }
    //5. arr길이와 temp 길이 체크. 같다면 중복된 좌석이 없는 경우, 예약 현황(list)에 추가
     if(arr.length == temp.size()){
    	 list.addAll(temp);
     } //예약 실패시 작업
     //6. application에 저장
     application.setAttribute("seat", list);
     
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <div align="center">
   <h2>예약 신청 결과 : </h2><br>
     <P> <b>선택한 좌석</b> <br>
       <% for (String s:arr){%>
       [<%=s %>]
       <%} %><br>
       <b>예약 신청 결과</b>
       <%=arr.length == temp.size() ?"성공":"실패"%>
       <br> <br>
       <%
       if(arr.length != temp.size()){%>
       이미 예약된 좌석 입니다.
       <%} %>
   
   	</P>
    <a href="reserve.jsp">다시 예약 하기</a>
 </div>
</body>
</html>