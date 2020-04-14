<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <link href="style.css" rel="stylesheet" type="text/css">
    
    <head>
        <title>Kirjautuminen</title>
    </head>
    <body>
        <form method="post" action="login">
            Sähköpostiosoite:
            <input type="text" name="email" />
            <br/> Salasana:
            <input type="password" name="pass" />
            <br/>
            <input type="submit" value="login" />
        </form>
    </body>

    </html>