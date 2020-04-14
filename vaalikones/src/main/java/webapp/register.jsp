<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html>
    <link href="style.css" rel="stylesheet" type="text/css">
    <head>
        <title>Rekisteröinti</title>
    </head>
        <body>
            <form method="post" action="register">
                <br/> Sähköpostiosoite:
                <input type="text" name="email" />
                <br/> Salasana:
                <input type="text" name="pass" />
                <br/>
                <input type="submit" value="register" />
            </form>
        </body>
    </html>
