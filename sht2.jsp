<%@ include file="connect.jsp"%>
<%
	try{
	String min=request.getParameter("min");
	String max=request.getParameter("max");
	Statement stmt=con.createStatement();

	String q1="select * from mat_basic natural join mat_life natural join mat_profile natural join mat_edu where (height*0.0328084) between '"+min+"' and '"+max+"' ";
	ResultSet rs=stmt.executeQuery(q1);  
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