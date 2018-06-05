<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Staff-Login</title>
</head>
<!--<body>
	<form action="login">
		username <input type ="text"  name="uname">
        <hr>
        password <input type ="password" onfocus="this.value=''" name="pass">
        <hr>
        <input type="submit" value="login">
	</form>
</body>
</html>-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>

<style>

    article {
        padding: 50px;
        overflow: hidden;
        align-items: center;
    }
    p {
        font-family: times;
        font-size: 150%;
        font-weight: bold;
    }
    input.search {
        width: 10em;  height: 2.5em;
    }
    h1 {
        font-family: SansSerif;
        font-size: 75px;
        font-weight: bold;
    }
</style>

<div>

    <article>
        <h1 align="center" style="font-family:Ubuntu; color: black">Staff Achievement</h1>
        <h1 align="center" style="font-family:Ubuntu; color: black">Management System</h1>
        <p><img src='https://static01.nyt.com/images/2016/10/03/opinion/RFD-trophies/RFD-trophies-facebookJumbo.jpg'
                style='position:fixed;top:0px;left:0px;width:100%;height:100%;z-index:-1;opacity:0.35'></p>
    </article>
</div>

<p>
    <br>
<div class="w3-container">

    <div align="center">
        <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-green w3-large">Login</button>
    </div>
    <div id="id01" class="w3-modal">
        <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

            <div class="w3-center"><br>
                <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
            </div>

            <form class="w3-container" action="login">
                <div class="w3-section">
                    <label><b>Username</b></label>
                    <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="uname" required>
                    <label><b>Password</b></label>
                    <input class="w3-input w3-border" type="password" placeholder="Enter Password" onfocus="this.value=''" name="pass" required>
                    <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit" >Login</button>
                    <input class="w3-check w3-margin-top" type="checkbox"> Remember me
                </div>
            </form>

            <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
                <button onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
                <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
            </div>

        </div>
    </div>
</div>
</p>
</body>
</html>
