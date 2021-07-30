<%@include file="connect.jsp"%>
<%@ include file="all_menu.html"%>
<%
	try
	{	
		String sender=(String)session.getAttribute("sender");
		Statement stmt = con.createStatement();
		String q8= " update mat_conn set flag=1 where  sender like '"+sender+"' ";
		int t4= stmt.executeUpdate(q8);
		
		if(t4>0)
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
	 	  out.print( "<a href=fetch.jsp?eid="+eid7+">"+nm+"</a> wants to connect you");
		  out.print("<h3>Accepted");
		}
		}
	con.close();
   }

	catch(Exception e)
		{
		   out.println(e);
		}
		
%>