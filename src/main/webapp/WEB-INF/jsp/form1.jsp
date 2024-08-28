<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JK3B 13</title>
</head>

<%
	ArrayList<String[]> result 
			= (ArrayList<String[]>) request.getAttribute("result");
%>
	
<body>

	<FORM method="get" action="./result1">
	<SELECT name="ID">
	
	<% for (String[] ss : result) {%>
			<OPTION value="<%= ss[1] %>">
			<%= ss[0] %>
			</OPTION>
		
	<% } %>
	</SELECT>
	<INPUT type="submit" value="絞り込む">
	</FORM>

</body>
</html>