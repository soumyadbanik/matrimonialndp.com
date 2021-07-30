<%@include file="connect.jsp" %>
<%
	try{
	String emailid=request.getParameter("eid");
	String password=request.getParameter("password");
	session.setAttribute("eid",emailid);
	Statement stmt=con.createStatement();
	String q1="select * from mat_authentication  where emailid='"+emailid+"' and password='"+password+"'";
	ResultSet rs=stmt.executeQuery(q1);
	if(rs.next())
	{
		String actor=rs.getString(3);
		if(actor.equals("admin"))
		response.sendRedirect("adminhome.jsp");
		else
		{
		 	response.sendRedirect("userhome.jsp");
		}
	}
	else
	{
%>
<%@include file="index.html"%>
<center>
<font color=red>Invalid Email-id or password.Try again!</font>
<%
	}
	con.close();
	}
	catch(Exception e){}
%>