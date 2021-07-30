<%@include file="connect.jsp"%>
<%@ include file="all_menu.html"%>
<%
	try
	{
		String eid6=(String)session.getAttribute("eid2");
		Statement stmt=con.createStatement();
		String q= " select * from mat_basic b , mat_conn c where b.emailid=c.sender and receiver like '"+eid6+"' ";
		//out.println(q);
		ResultSet rs=stmt.executeQuery(q); 
		 int flag=0; 
		  while(rs.next())
		  {
		   String nm=rs.getString(1);
		   String eid7=rs.getString(5);
		   session.setAttribute("sender",eid7);
	 	  out.println( "<a href=fetch.jsp?eid="+eid7+">"+nm+"</a> wants to connect you<br>");
		  flag=1;
%>
		<html>
		<body>
		<form action =acc.jsp method = post>
		<input type=submit  value=Accept>
		</form><form action =rej.jsp method = post>
		<input type=submit  value=Reject>
		</form>
		</body>
		</html>
<%
		   }
		
		if(flag==0)
		 out.println("<h3><font color=red>No notifications for you right now !");
		 con.close();
		

	}

	catch(Exception e){}
%>
