<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
@import url(https://fonts.googleapis.com/css?family=Roboto:300);

.login-page {
width: 860px;
padding: 8% 0 0;
margin: auto;
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
  display: block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 15px;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default checkbox */
.container input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom checkbox */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 25px;
  width: 25px;
  background-color: #eee;
}

/* On mouse-over, add a grey background color */
.container:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the checkbox is checked, add a blue background */
.container input:checked ~ .checkmark {
  background-color: #2196F3;
}

/* Create the checkmark/indicator (hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
  display: block;
}

/* Style the checkmark/indicator */
.container .checkmark:after {
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
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
<body><h1 align="center" style="font-size:38px ;font-family:ubuntu; color:white">Project grants received from funding agencies</h1>

	 <%
		if(session.getAttribute("username")==null)
			response.sendRedirect("login.jsp");
	%>
  <div class="login-page">
<div class="form">
    <form action="form2" class="login-form" align="left">
        
        Name: <input type="text" name="firstName">
        <br>
        Project Name: <input type="text" name="ProjectName">
        <br>
        Funding agency: <input type="text" name="agency">
        <br>
        Sanctioned amount: <input type ="number" value=0 name="s_amount">
        <br>
        Sanctioned Year: <input type ="number" value=2000 max="2018" name="s_year">
        <br>
        Amount received: <input type ="number" value=0 name="amount">
        <br>
        year grant:	<label class="container">1st year
  					<input type="radio" checked="checked" name="grant">
  					<span class="checkmark"></span>
					</label>

					<label class="container">2nd year
  					<input type="radio" name="grant">
 					<span class="checkmark"></span>
					</label>

					<label class="container">3rd year
  					<input type="radio" name="grant">
  					<span class="checkmark"></span>
					</label><br> 
        <input type="submit" onclick="myFunction()" value="Submit">
        <script>
		function myFunction() {
    		alert("response recorded");
		}
		</script>
    </form>
</div>
</div> 	

</body>
</html>