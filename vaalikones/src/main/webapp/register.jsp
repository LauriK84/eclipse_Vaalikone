<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rekister�inti</title> 
</head> 
<!-- register.jsp HTML-tiedoston CSS-tyylitys --> 
<style>
@charset "ISO-8859-1";
body {
    margin: 0 auto;
    width: 500px;
}

img {
    margin-left: 20px;
}

form {
    margin-left: 25px;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    border-radius: 25px;
    transition: 0.4s;
}

button:hover {
    opacity: 0.8;
}

@media screen and (max-width: 300px) {
    span.psw {
        display: block;
        float: none;
    }
    .cancelbtn {
        width: 100%;
    }
}

input.required {
    opacity: 0.8;
}

input[type=text],
input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
    border-radius: 25px;
}
</style>
 <!-- CSS-tyylitys loppuu -->
 
 <!-- register-form HTML-runko -->
<body>
<img id="headerimg" src="Logo.png" width="500" />
<form action="register" method="post">

  <div class="container">
    <label for="email"><b>S�hk�postiosoite</b></label>
    <input type="text" placeholder="Sy�t� s�hk�postiosoite" name="email" required>

    <label for="pass"><b>Salasana</b></label>
    <input type="password" placeholder="Sy�t� salasana" name="pass" required>

    <button type="submit" value="login">Rekister�idy</button>
    </div>
</form>
<!-- login-form loppuu -->
</body>
</html>