<%@include file="connect.jsp"%>
<%

try{
	String nm=request.getParameter("nm");
	String dob=request.getParameter("dob");
	String rlg=request.getParameter("rlg");
	String mtn=request.getParameter("mtn");
	String cont=request.getParameter("cont");
	String eid=(String)session.getAttribute("eid1");
	Statement stmt=con.createStatement();

	
	String q2= " insert into mat_basic values('"+nm+"','"+rlg+"','"+mtn+"','"+cont+"','"+eid+"',to_date('"+dob+"','yy-mm-dd'))";
	int t=stmt.executeUpdate(q2);
	if(t>0)
	{
		response.sendRedirect("mat_profile.jsp");
	}
	con.close();
   }

	catch(Exception e)
		{
		   out.println(e);
		}
		
%>