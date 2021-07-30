<%@ include file="connect.jsp"%>
<%
	try{
	int min=Integer.parseInt(request.getParameter("min"));
	int max=Integer.parseInt(request.getParameter("max"));
	Statement stmt=con.createStatement();

	String q="select * from mat_basic natural join mat_life natural join mat_profile natural join mat_edu where (to_char(sysdate,'yyyy')-to_char(date_of_birth,'yyyy')) between "+min+" and "+max+" ";
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