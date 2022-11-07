<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSPL 문법</title>
</head>
<body>
<!-- 변수선언 -->
<c:set var='gender' value='male' />

<c:if test="${gender eq male}"> 당신은 남성입니다 </c:if>
<c:if test="${gender eq female}"> 당신은 여성입니다 </c:if>

<!-- 태그 사이의 값이 value 값 -->
<c:set var='age'>15</c:set>
<c:choose>
	<c:when test="${age lt 10 }">어린이입니다.</c:when>
	<c:when test="${10 gt age and age lt 20 }">청소년입니다.</c:when>
	<c:otherwise>성인입니다.</c:otherwise>
</c:choose>	
<hr/>
<!-- sum 이라는 변수에 i 값을 대입하여 100까지 합 -->	
<c:set var='sum' value='0'/>
<c:forEach var='i' begin='1' end='100'>
	<c:set var='sum' value='${sum+i}'/>
</c:forEach>		
1~100 까지의 합 : &{sum} <hr/>




<!--  변수 i 1 부터 100까지 for문 돌리기-->
<!-- 1부터 100까지의 짝수의 합 / 홀수의 합 구하기 -->
<c:set var='sum' value='0'/>
<c:forEach var='i' begin='1' end='100'>
	<c:choose>
		<c:when test="${i mod 2 eq 0}">
			<c:set var='even' value='${even + i}'/>
		</c:when>
		<c:otherwise>
			<c:set var='odd' value='${odd + i}'/>
		</c:otherwise>
	</c:choose>
</c:forEach>	
1~100까지의 짝수 합 : ${even } <br/>
1~100까지의 홀수 합 : ${odd } <br/>
	
	
</body>
</html>


<!-- 

	* JSP 기초 문법
	
	< %@ % > : 설정
				- page
				- include
				- taglib : JSTL 사용
				
	< %! % > : 선언 (변수, 함수)
	< % % >  : 스크립트릿 (자바코드)
	< %= % > : 표현식 (화면결과 출력) ==> EL


 -->
 
 
 
 