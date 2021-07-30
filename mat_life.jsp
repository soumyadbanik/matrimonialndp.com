<html>
<body>
<form action=mat_life2.jsp method=post>
<center><h1><font>Add your lifestyle details and we are done! </font><br><br>
<table>
	<tr>
		<td>What's your diet?</td>
	<td>
		<select name=diet><option>Select</option>
		<option value=Vegeterian>Veg</option>
		<option value="Non-vegterian">Non-Veg</option>
		<option value=Jain>Jain</option>
	</td>
	</tr>
	
	<tr>	
		<td>Do you smoke?</td>
		<td><label><input type=radio name=smoke value=yes>Yes
		    <label><input type=radio name=smoke value=no>No
	</tr>
	<tr>	
		<td>Drink?</td>
		<td><label><input type=radio name=drink value=yes>Yes
		    <label><input type=radio name=drink value=no>No
	</tr>
	<tr>
		<td>Height(cm)</td>
		<td><input type=text name=ht></td>
	</tr>
	<tr>
		<td>Body type</td>
	<td>
		<select name=body><option>Select</option>
		<option value=Slim>Slim</option>
		<option value=Athletic>Athletic</option>
		<option value=Average>Average</option>
		<option value=Heavy>Heavy</option>
	</td>
	</tr>
	<tr>
		<td>Weight(kg)</td>
		<td><input type=text name=wt></td>
	</tr>
	<tr>
		<td>Skin tone</td>
	<td>
		<select name=skin><option>Select</option>
		<option value=Fair>Fair</option>
		<option value=Very Fair>Very fair</option>
		<option value=Wheatish>Wheatish</option>
		<option value=Dark>Dark</option>
	</td>
	</tr>
	<td>
	<tr>	
		<td>Mobile No.</td>
		<td>+91<input type=text name=mobcd></td>
	</tr>
	</tr>
	<tr>
		<td>Any disability?</td>
		<td><label><input type=radio name=pwd value=yes>Yes
		    <label><input type=radio name=pwd value=no>No
	</tr>
</table>
	<br><center><input type=submit value=Create>

</form>
</body>
</html>
