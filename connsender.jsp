<%@include file="connect.jsp"%>
<%@include file="all_menu.html"%>
<%

try{
	
	String eid4=(String)session.getAttribute("eid2");
	String eid5=(String)session.getAttribute("eid3");
	String name=(String)session.getAttribute("name");
	int flag=0;
	Statement stmt= con.createStatement();

	String q3=" insert into mat_conn values ('"+eid4+"','"+eid5+"',"+flag+")"; 
	int t3=stmt.executeUpdate(q3);
	
	if(t3>0)
	{
	  
	   out.println("<br><br><h3><center>Request sent to <a href=fetch2.jsp?eid="+eid5+">"+name+"</a> !<br>");
	}

	con.close();
   }

	catch(Exception e)
		{
		   out.println("Already sent request");
		}
		
%>
