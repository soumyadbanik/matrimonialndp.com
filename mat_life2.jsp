<%@include file="connect.jsp"%>
<%@include file="all_menu.html"%>
<%

try{
	String diet=request.getParameter("diet");
	String smoke=request.getParameter("smoke");
	String drink=request.getParameter("drink");
	String ht=request.getParameter("ht");
	String body=request.getParameter("body");
	String wt=request.getParameter("wt");
	String skin=request.getParameter("skin");
	String mobcd=request.getParameter("mobcd");
	String pwd=request.getParameter("pwd");
	String eid=(String)session.getAttribute("eid1");
	session.setAttribute("eid",eid);
	Statement stmt=con.createStatement();
	String q4= " insert into mat_life values ('"+eid+"','"+diet+"','"+smoke+"','"+drink+"','"+ht+"','"+body+"','"+wt+"','"+skin+"','"+mobcd+"','"+pwd+"')";
	int t=stmt.executeUpdate(q4);
	if(t>0)
		out.println("<center><h4><font color=green>Profile Created.");
	con.close();
   }

	catch(Exception e)
		{
		   out.println(e);
		}
		
%>