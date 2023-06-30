<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Home</title>
<style type="text/css">
div>p {
	display: inline-block;
	margin-left: 10px;
}
</style>
</head>
<body>
	<form action="/insertName.do" method="post">
		<input type="text" name="name"> 
		<input type="text" name="tel">
		<input type="submit" value="전송">
	</form>
	<div>
		<c:forEach items="${nameList}" var="name" varStatus="status">
<%-- 			<div>
			<c:if test="${name.name == '이경일'}">
				<p style="color:blue;">${status.count}</p>
				<p style="color:blue;">${status.index}</p>
				<p style="color:blue;">"${name.name }</p>
				<p style="color:blue;">${name.tel }</p>
			</c:if>
			<c:if test="${name.name != '이경일'}">
				<p style="color:green;">${status.count}</p>
				<p style="color:green;">${status.index}</p>
				<p style="color:green;">"${name.name }</p>
				<p style="color:green;">${name.tel }</p>
			</c:if>
			</div> --%>
			
			<div>
			<c:choose>
			<c:when test="${name.name =='이경일'}">
				<p style="color:green;">${status.count}</p>
				<p style="color:green;">${status.index}</p>
				<p style="color:green;">"${name.name }</p>
				<p style="color:green;">${name.tel }</p>
			</c:when>
			<c:otherwise>
				<p style="color:red;">${status.count}</p>
				<p style="color:red;">${status.index}</p>
				<p style="color:red;">"${name.name }</p>
				<p style="color:red;">${name.tel }</p>
			</c:otherwise>
			</c:choose>
			
		</c:forEach>
			
	</div>
</body>
</html>
