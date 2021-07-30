<html>
<body>
<form action=mat_profile2.jsp method=post>
<center><h1><font>Thanks for Registering.Now let's build your profile.</font><br><br>
<table>
	<tr>
		<td>State</td>
		<td><input type=text name=st placeholder="Enter Your State"></td>
	</tr>
	
	<tr>
		<td>City</td>
		<td><input type=text name=city placeholder="Enter Your City"></td>
	</tr>
	<tr>
		<td>Your Martial Status</td>
	<td>
		<select name=mstatus><option>Select</option>
		<option value=Never married>Never Married</option>
		<option value=Divorced>Divorced</option>
		<option value=Widowed>Widowed</option>
		<option value=Awaiting Divorce>Awaiting Divorce</option>
		<option value=Annulled>Annulled</option>
	</td>
	</tr>
	<tr>
		<td>Your Community</td>
	<td>
		<select name=comm><option>Select</option>
		<option value=Brahmin>Brahmin</option>
		<option value=Kshatriya>Kshatriya</option>
		<option value=Rajput>Rajput</option>
		<option value=Kayastha>Kayastha</option>
		<option value=Arora>Arora</option>
	</td>
	</tr>
	
</table>
	<center><input type=reset value=RESET>
	<input type=submit value=CONTINUE>

</form>
</body>
</html>
