<html>
<head>
<style>
input[type="text"]{
width:135px;
border-radius:10px;
background-color:#c2d6d6;
}
ul {
    list-style-type: none;
    margin-top:10;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    top: 0
}
li {
    float: left;
}
li a, .dropbtn {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
li a:hover, .dropdown:hover .dropbtn {
    background-color: green;
}
li.dropdown {
    position: relative
    display: inline-block;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #g9g9g9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.6);
    z-index: 1;
}
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}
.dropdown-content a:hover {background-color: #C0C0C0}
.dropdown:hover .dropdown-content {
    display: block;
}
</style>
</head>
<body>
<form action ="sinc2.jsp" method=post>
<ul>
  <li><a href="userhome.jsp">My Profile</a></li>
  <li><a href="success.jsp">Success Stories</a></li>
  <li><a href="contact.jsp">Contact us</a></li>
  <li>
    <a><input type="text" name=inc placeholder="enter income"></a>
    <a> <input type="submit" value=search></a>
  </li>
  <li><a href="logout.jsp">Log Out</a></li>
  <li style="float:right"><a href="about.jsp">About Us </a></li>
</ul>
</form>
</body>