<html>
<body>
<form action=mat_basic2.jsp method=post>
<center><h1><font>Great! Now some basic details </font><br><br>
<table>
	
	<tr>
		<td>Name</td>
		<td><input type=text name=nm placeholder="Enter Name"></td>
	</tr>
	<tr>
		<td>Date Of Birth</td>
		<td><input type=date name=dob></td>
	</tr>
	<tr>
		<td>Religion</td>
	<td>
		<select name=rlg><option>Select</option>
		<option value=Hindu>Hindu</option>
		<option value=Muslim>Muslim</option>
		<option value=Christian>Christian</option>
		<option value=Sikh>Sikh</option>
		<option value=Parsi>Parsi</option>
		<option value=Jain>Jain</option>
		<option value=Buddhist>Buddhist</option>
	</td>
	</tr>
	
	<tr>
		<td>Mother Tongue</td>
	<td>
		<select name=mtn><option>Select</option>
		<option value=Bengali>Bengali</option>
		<option value=English>English</option>
		<option value=Hindi>Hindi</option>
		<option value=Gujrati>Gujrati</option>
		<option value=Punjabi>Punjabi</option>
		<option value=Russian>Russian</option>
		<option value=Chinese>Chinese</option>
		<option value=Arabic>Arabic</option>
	</td>
	</tr>

	<tr>
		<td>Country</td>
	<td>
		<select name=cont><option>Select</option>
		<option value=India>India</option>
		<option value=Pakistan>Pakistan</option>
		<option value=China>China</option>
		<option value=Russia>Russia</option>
		<option value=England>England</option>
		<option value="Saudi Arabia">Saudi Arabia</option>
		<option value=Bhutan>Bhutan</option>
		<option value=Ireland>Ireland</option>
	</td>
	</tr>
</table>
	<center><input type=reset value=RESET>
	             <input type= submit value=CONTINUE>

</form>
</body>
</html>
