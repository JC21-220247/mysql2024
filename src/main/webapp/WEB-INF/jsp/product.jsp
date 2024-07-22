<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JK3B 13</title>
</head>

<%
	ArrayList<String[]> maker1 = (ArrayList<String[]>) request.getAttribute("maker1");

	ArrayList<String[]> product3 = (ArrayList<String[]>) request.getAttribute("product3");
	
%>
	
<body>
<h1>メーカー一覧表</h1>

	<FORM method="get" action="./product">
	<SELECT name="ID">
	
	<% for (String[] ss : maker1) {%>
			<OPTION value="<%= ss[0] %>">
			<%= ss[1] %>
			</OPTION>
		
	<% } %>
	</SELECT>
	<INPUT type="submit" value="絞り込む">
	</FORM>
	

	
<h1>プロダクト一覧表</h1>

	<TABLE >
	<% for (String[] ss : product3) {%>
		<TR> 		
			<TD> <%= ss[0] %></TD> 
		    <TD> <%= ss[1] %></TD> 
			<TD> <%= ss[2] %></TD>
		</TR>
		
	<% } %>
	</TABLE>
	
	


</body>
</html>
