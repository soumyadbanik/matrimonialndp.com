<%@include file="connect.jsp"%>
<%@ include file="all_menu.html"%>
<%
	try
	{	
		String sender=(String)session.getAttribute("sender");
		Statement stmt = con.createStatement();
		String q9= " delete from  mat_conn where  sender like '"+sender+"' ";
		int t5= stmt.executeUpdate(q9);
		
		if(t5>0)
		{
		   String eid6=(String)session.getAttribute("eid2");
		Statement stmt1=con.createStatement();
		String q= " select * from mat_basic b , mat_conn c where b.emailid=c.sender and receiver like '"+eid6+"' ";
		//out.println(q);
		ResultSet rs=stmt1.executeQuery(q); 
		  while(rs.next())
		  {
		   String nm=rs.getString(1);
		   String eid7=rs.getString(5);
		   session.setAttribute("sender",eid7);
	 	  out.println( "<a href=fetch.jsp?eid="+eid7+">"+nm+"</a> wants to connect you");
		  out.println("<h3>Rejected!");
		}
		}
	con.close();
   }

	catch(Exception e)
		{
		   out.println(e);
		}
		
%>