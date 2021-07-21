<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri=“http://java.sun.com/jsp/jstl/core” prefix=“c” %>
<%@ taglib uri=“http://www.springframeworkj.org/tags/form” prefix=“form” %>
<%@ taglib uri=“http://java.sun.com/jsp/jstl/functions” prefix=“fn” %>
<%@ taglib uri=“http://java.sun.com/jsp/jstl/fmt” prefix=“fmt” %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title> 
</head>
<body>

<%
	int sum = 0;
	for (int i = 0; i <= 10; i++){
		sum += i;
	}
%> 
1부터 10까지의 합은 <%= sum %> 입니다.
</body>
</html>