<%@page import="java.sql.*" %>
<%!
	Connection con=null;
%>
<%
	try{
	Class.forName("oracle.jdbc.OracleDriver");
	con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","scott","tiger");
	}
	catch(Exception e){}
%>