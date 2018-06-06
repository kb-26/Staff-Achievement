<%@page import="java.sql.ResultSet"%>
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
width: 860px;
padding: 8% 0 0;
margin: auto;
}

table, th, td {
    border: 1px solid black;
    padding: 3px;
    text-align: left;
    border-spacing: 5px;
}

.form {
position: relative;
z-index: 1;
background: #FFFFFF;
max-width: 860px;
margin: 0 auto 100px;
padding: 45px;
text-align: center;
box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
font-family: "Roboto", sans-serif;
outline: 0;
background: #f2f2f2;
width: 100%;
border: 0;
margin: 0 0 15px;
padding: 15px;
box-sizing: border-box;
font-size: 14px;
}
.form input[type="submit"] {
font-family: "Roboto", sans-serif;
color: #FFFFFF;
outline: 0;
background: #4CAF50;
width: 100%;
border: 0;
margin: 0 0 15px;
padding: 15px;
box-sizing: border-box;
font-size: 14px;
}

.form button {
font-family: "Roboto", sans-serif;
text-transform: uppercase;
outline: 0;
background: #4CAF50;
width: 100%;
border: 0;
padding: 15px;
color: #FFFFFF;
font-size: 14px;
transition: all;
cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
background: #43A047;
}
.form .message {
margin: 15px 0 0;
color: #b3b3b3;
font-size: 12px;
}
.form .message a {
color: #4CAF50;
text-decoration: none;
}
.form .register-form {
display: none;
}
.container {
position: relative;
z-index: 1;
max-width: 300px;
margin: 0 auto;
}

table#t01 tr:nth-child(even) {
    background-color: #eee;
}

.container:before, .container:after {
content: "";
display: block;
clear: both;
}
.container .info {
margin: 50px auto;
text-align: center;
}
.container .info h1 {
margin: 0 0 15px;
padding: 0;
font-size: 36px;
font-weight: 300;
color: #1a1a1a;
}
.container .info span {
color: #4d4d4d;
font-size: 12px;
}
.container .info span a {
color: #000000;
text-decoration: none;
}
.container .info span .fa {
color: #EF3B3A;
}
body {
background: #76b852;
background: -webkit-linear-gradient(right, #76b852, #8DC26F);
background: -moz-linear-gradient(right, #76b852, #8DC26F);
background: -o-linear-gradient(right, #76b852, #8DC26F);
background: linear-gradient(to left, #76b852, #8DC26F);
font-family: "Roboto", sans-serif;
-webkit-font-smoothing: antialiased;
-moz-osx-font-smoothing: grayscale;
}
</style>
<body>
<div class="login-page">
<div class="form">

<form action="achievements.jsp" class="login-form" align="left">

<TABLE class="login-form" style="width:100%" id="t01">
<%

	try{  
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection(  
	"jdbc:mysql://localhost:3306/StaffAchievement","root","topsecret123");  
	
	Statement stmt=con.createStatement();  
	ResultSet rs=stmt.executeQuery("select * from Project_List");  
	
	while (rs.next()) {
%>
	<TR>
	<TD><font face="verdana" color="black"><%=rs.getString(1)%></font></TD>
	<TD><font face="verdana" color="black"><%=rs.getString(2)%></font></TD>
	<TD><font face="verdana" color="black"><%=rs.getString(3)%></font></TD>
	<TD><font face="verdana" color="black"><%=rs.getString(4)%></font></TD>
	<TD><font face="verdana" color="black"><%=rs.getString(5)%></font></TD>
	<TD><font face="verdana" color="black"><%=rs.getString(6)%></font></TD>
	
	</TR>
<% 	}
	con.close();
	}catch(Exception e){ System.out.println(e);}  
%>

</TABLE>
	<input type="submit"  value="back">
</form>

</body>
</div>
</div>
</html>
