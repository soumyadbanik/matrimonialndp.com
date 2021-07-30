<%
	String eid1=(String)session.getAttribute("eid");
%>
<html>
<body>
<form action=mat_edu2.jsp method=post>
<center><font><h1>Just a few more steps!</font>
<center><font><h3>Please add your education and career details.</font><br><br>
<table>
	
	<tr>
		<td>Your education level</td>
	<td>
		<select name=edu><option>Select</option>
		<option value=Doctorate>Doctorate</option>
		<option value=Masters>Masters</option>
		<option value=Honours>Honours Degree</option>
		<option value=Bachelors>Bachelors</option>
		<option value=Undergraduate>Undergraduate</option>
		<option value="High School">High School</option>
	</td>
	</tr>
	<tr>
		<td>Your education field</td>
	<td>
		<select name=edf><option>Select</option>
		<option value=Arts>Arts</option>
		<option value=Commerce>Commerce</option>
		<option value=Computers>Computers/IT</option>
		<option value=Education>Education</option>
		<option value=Engineering>Engineering</option>
		<option value=Fashion Designing>Fashion Designing</option>
		<option value=Law>Law</option>
		<option value=Management>Management</option>
	</td>
	</tr>
	<tr>
		<td>College</td>
		<td><input type=text name=clg placeholder="Enter College"></td>
	</tr>
	<tr>
		<td>Work as</td>
	<td>
		<select name=work><option>Select</option>
		<option value="Banking Professional">Banking Professional</option>
		<option value="Chartered Accountant">Chartered Accountant</option>
		<option value="Administration and HR">Administration and HR</option>
		<option value=Actor>Actor</option>
		<option value=Journalist>Journalist</option>
		<option value=Farming>Farming</option>
		<option value="Air Hostress">Air Hostress</option>
		<option value="Interior Designer">Interior Designer</option>
	</td>
	</tr>
	<tr>
		<td>You work with</td>
	<td>
		<select name=ywork><option>Select</option>
		<option value="Private Company">Private Company</option>
		<option value="Government/Public Sector">Government/Public Sector</option>
		<option value="Defence/Civil Services">Defence/Civil Services</option>
		<option value="Business/Self-employed">Business/Self-Employed</option>
		<option value="Not Working">Not Working</option>
	</td>
	</tr>
	<tr>
		<td>Your annual income</td>
	<td>
		<select name=ain><option>Select</option>
		<option value="Upto INR 1 lakh">Upto INR 1 lakh</option>
		<option value="INR 1 lakh to 3 lakh">INR 1 lakh to 3 lakh</option>
		<option value="INR 3 lakh to 5 lakh">INR 3 lakh to 5 lakh</option>
		<option value="INR 5 lakh to 7 lakh">INR 5 lakh to 7 lakh</option>
		<option value="INR 7 lakh to 10 lakh">INR 7 lakh to 10 lakh</option>
		<option value="INR 10 lakh to 15 lakh">INR 10 lakh to 15 lakh</option>
		<option value="INR 15 lakh to 20 lakh">INR 15 lakh to 20 lakh</option>
	</td>
	</tr>
</table>
	<center><input type=reset value=RESET>
	<input type=submit value=CONTINUE>

</form>
</body>
</html>