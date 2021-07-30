<%@include file="connect.jsp"%>
<%

try{
	String eid=request.getParameter("eid");
	session.setAttribute("eid1",eid);
	String pass=request.getParameter("pass");
	String rltn=request.getParameter("rltn");
	String gend=request.getParameter("gend");

	Statement stmt= con.createStatement();
	String q= " insert into mat_signup values(' "+eid+" ',' "+pass+" ','"+rltn+"','"+gend+"') ";
	int t=stmt.executeUpdate(q);
	Statement stmt1 = con.createStatement();
	String q2="insert into mat_authentication values('"+eid+"','"+pass+"','user')";
	int t1=stmt1.executeUpdate(q2);
	if(t>0 && t1>0)
	 {
		response.sendRedirect("mat_basic.jsp");
	 }
	   con.close();
   }

	catch(Exception e)
		{
		   out.println(e);
		}
		
%>					
