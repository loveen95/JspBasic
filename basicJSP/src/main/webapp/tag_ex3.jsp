
<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
ArrayList<Integer> list = new ArrayList<>();
Random ran = new Random();
while (list.size() < 6) {
	int num = ran.nextInt(45) + 1;
	if (!list.contains(num)) { //true이면 중복값이 생기니 !true가 아니면으로 해야함
		list.add(num);
	}
}
Collections.sort(list);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  
ArrayList를 사용하여 1~45까지 랜덤한 번호를 발생시키고 리스트에 담으세요. 
body태그에서 이번주 로또 번호[1,2,3,4,5,6] 형식으로 출력 
단, list.contain (값)을 사용하여 중복을 회피하고,
Collections.sort(리스트)를 사용하여 오름차순으로 정렬해주세요. 

-->
	결과 출력하기 :
	<br>이번주 로또 번호는
	<%=list.toString()%>
	입니다.



</body>
</html>