<%@ include file="connect.jsp"%>
<%
	try{
	String inc=request.getParameter("inc");
	Statement stmt=con.createStatement();

	String q="select * from mat_basic natural join mat_life natural join mat_profile natural join mat_edu where income like '"+inc+"' ";
	ResultSet rs=stmt.executeQuery(q);  
	while(rs.next())
	{
	   String eid=rs.getString(1);
	   String name=rs.getString(2);
	   out.println("<center><a href=fetch.jsp?eid="+eid+">"+name+"</a><br>");
	}
	con.close();
	}
	catch(Exception e){out.println(e);}
%>