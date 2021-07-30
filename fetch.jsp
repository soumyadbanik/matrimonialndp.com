<%@ include file="all_menu.html"%>
<%@ include file="connect.jsp"%>
<%
try{
String eid=request.getParameter("eid");
session.setAttribute("eid3",eid);
String q1="select * from mat_basic natural join mat_profile natural join mat_edu natural join mat_life  where emailid ='"+eid+"'";
Statement stmt=con.createStatement();
ResultSet rs = stmt.executeQuery(q1);
if(rs.next())
{
%>
<center>
<table border="1">
<tr>
<td>
EMAIL ID:<input type=text name=eid value="<%=rs.getString(1)%>" readonly><br>
NAME:     <input type=text name=nm value="<%=rs.getString(2)%>" readonly><br>
RELIGION: <input type=text name=rlg value="<%=rs.getString(3)%>" readonly><br>
MOTHER TOUNGE: <input type=text name=mtn value="<%=rs.getString(4)%>" readonly><br>
COUNTRY: <input type=text name=cont value="<%=rs.getString(5)%>" readonly><br>
</td>
</tr>
<tr>
<td>
DATE OF BIRTH: <input type=text name=dob value="<%=rs.getString(6)%>" readonly><br>
STATE: <input type=text name=st value="<%=rs.getString(7)%>" readonly><br>
CITY: <input type=text name=city value="<%=rs.getString(8)%>" readonly><br>
MARTIAL STATUS: <input type=text name=mstatus value="<%=rs.getString(9)%>" readonly><br>
COMMUNITY: <input type=text name=comm value="<%=rs.getString(10)%>" readonly><br>
</td></tr>
<tr><td>
HIGHEST DEGREE: <input type=text name=edu value="<%=rs.getString(11)%>" readonly><br>
EDUCATIONAL FIELD: <input type=text name=edf value="<%=rs.getString(12)%>" readonly><br>
COLLEGE: <input type=text name=clg value="<%=rs.getString(13)%>" readonly><br>
JOB: <input type=text name=work value="<%=rs.getString(14)%>" readonly><br>
WORKPLACE: <input type=text name=ywork value="<%=rs.getString(15)%>" readonly><br>
</td></tr>
<tr><td>
ANNUAL INCOME: <input type=text name=ain value="<%=rs.getString(16)%>" readonly><br>
DIET: <input type=text name=diet value="<%=rs.getString(17)%>" readonly><br>
SMOKING: <input type=text name=smoke value="<%=rs.getString(18)%>" readonly><br>
DRINKING: <input type=text name=drink value="<%=rs.getString(19)%>" readonly><br>
HEIGHT(centimeter): <input type=text name=ht value="<%=rs.getString(20)%>" readonly><br>
</td></tr>
<tr><td>
BODY TYPE: <input type=text name=body value="<%=rs.getString(21)%>" readonly><br>
WEIGHT(kg.): <input type=text name=wt value="<%=rs.getString(22)%>" readonly><br>
SKINTONE: <input type=text name=skin value="<%=rs.getString(23)%>" readonly><br>
MOBILE NUMBER: <input type=text name=mobcd value="<%=rs.getString(24)%>" readonly><br>
PH: <input type=text name=ph value="<%=rs.getString(25)%>" readonly><br>
</td></tr>
</table>
 
<%
session.setAttribute("name",rs.getString(2));
}
else
out.println("<font color=red>INVALID PROFILE");
con.close();
}
catch(Exception e){}
%>  
<html>
<body>
<form action = connsender.jsp method=post><br>
<input type = submit value=Connect>
</from>
</body>
</html>