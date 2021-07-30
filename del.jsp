<%@include file="connect.jsp" %>
<%@include file="all_menu1.jsp" %>
<%
	String eid = request.getParameter("emailid");
	try{
		Statement stmt = con.createStatement();
		String q6 = "delete from mat_signup where emailid = ' "+eid+" ' ";
		String q1 = "delete from mat_basic where emailid = '"+eid+"' ";
		String q2 = "delete from mat_authentication where emailid = '"+eid+"' ";
		String q3 = "delete from mat_edu where emailid = '"+eid+"' ";
		String q4 = "delete from mat_life where emailid = '"+eid+"' ";
		String q5 = "delete from mat_profile where emailid = '"+eid+"' ";
		int t6 =  stmt.executeUpdate(q6);
		int t1 =  stmt.executeUpdate(q1);
		int t2 =  stmt.executeUpdate(q2);
		int t3 =  stmt.executeUpdate(q3);
		int t4 =  stmt.executeUpdate(q4);
		int t5 =  stmt.executeUpdate(q5);
		
		if(t1>0 && t2>0 && t3>0 && t4>0 && t5>0 && t6>0) 
			out.println("The profile with email-id "+eid+" has been deleted successfully.");
		else 
			out.println("The profile with email-id "+eid+" does not exist");
	con.close();
	}
	
	catch(Exception e){out.print(e);}
%>