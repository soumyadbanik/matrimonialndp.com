<%@include file="connect.jsp"%>
<%

try{
	String st=request.getParameter("st");
	String city=request.getParameter("city");
	String mstatus=request.getParameter("mstatus");
	String comm=request.getParameter("comm");
	String eid=(String)session.getAttribute("eid1");
	Statement stmt=con.createStatement();
	String q5= " insert into mat_profile values('"+eid+"','"+st+"','"+city+"','"+mstatus+"','"+comm+"') ";
	int t=stmt.executeUpdate(q5);
	if(t>0)
	{
		response.sendRedirect("mat_edu.jsp");
	}
	con.close();
   }

	catch(Exception e)
		{
		   out.println(e);
		}
		
%>