<%@include file="connect.jsp"%>
<%

try{
	String edu=request.getParameter("edu");
	String edf=request.getParameter("edf");
	String clg=request.getParameter("clg");
	String work=request.getParameter("work");
	String ywork=request.getParameter("ywork");
	String ain=request.getParameter("ain");
	String eid=(String)session.getAttribute("eid1");
	Statement stmt=con.createStatement();
	String q3= " insert into mat_edu values('"+edu+"','"+edf+"','"+clg+"','"+work+"','"+ywork+"','"+ain+"','"+eid+"') ";
	int t=stmt.executeUpdate(q3);
	if(t>0)
	{
		response.sendRedirect("mat_life.jsp");
	}
	con.close();
   }

	catch(Exception e)
		{
		   out.println(e);
		}
		
%>