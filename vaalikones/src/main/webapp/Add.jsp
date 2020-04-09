<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*,vaalikone.Lisaa,persist.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Lis‰‰ ehdokas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <div id="container">
            
            <img id="headerimg" src="Logo.png" width="720" />
            <div class="kysymys">
                <h1>Lis‰‰ ehdokas</h1>
            </div>
                <br>     
        </div>

<form action=""> <!-- TODO: tallentaa submit buttonista teidot -->
	<label for="etunimi">Ehdokkaan etuimi: </label>
	<input type="text" id="etunimi" name="etunimi"><br><br>
	<label for="sukunimi">Ehdokkaan sukunimi: </label>
	<input type="text" id="sukunimi" name="sukunimi"><br><br>
	
	<input type="submit" value="Lis‰‰ ehdokas">
</form>

<%
	String message = (String) request.getAttribute("Message");
	String etunimi = (String) request.getAttribute("Etunimi");
	String sukunimi = (String) request.getAttribute("Sukunimi");
	
	out.println("Servlet communicated message: " + message + ", ");
	out.println("Ehdokkaan tiedot: Nimi: " + etunimi + " Sukunimi: " + sukunimi);
%>
</body>
</html>