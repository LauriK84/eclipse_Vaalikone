<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%//@page import="java.util.*,vaalikone.Lisaa,persist.*"%>
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

<form method="POST"action="/Lisaa">
	<label for="etunimi">Ehdokkaan etunimi: </label>
	<input type="text" id="etunimi" name="etunimi"><br><br>
	<label for="sukunimi">Ehdokkaan sukunimi: </label>
	<input type="text" id="sukunimi" name="sukunimi"><br><br>
	<label for="puolue">Ehdokkaan puolue: </label>
	<input type="text" id="puolue" name="puolue"><br><br>
	<label for="ika">Ehdokkaan ik‰: </label>
	<input type="text" id="ika" name="ika"><br><br>
	<label for="kotipaikkakunta">Ehdokkaan kotipaikkakunta: </label>
	<input type="text" id="kotipaikkakunta" name="kotipaikkakunta"><br><br>
	<label for="ammatti">Ehdokkaan ammatti: </label>
	<input type="text" id="ammatti" name="ammatti"><br><br>
	<label for="miksiEduskuntaan">Miksi haluan eduskuntaan: </label>
	<input type="text" id="miksiEduskuntaan" name="miksiEduskuntaan"><br><br>
	<label for="mitaAsioitaHaluatEdistaa">Mit‰ asioita haluan edist‰‰: </label>
	<input type="text" id="mitaAsioitaHaluatEdistaa" name="mitaAsioitaHaluatEdistaa"><br><br>
	
	<input type="submit" value="Lis‰‰ ehdokas">
</form>

<%

	//String message = (String) request.getAttribute("Message");
	//String etunimi = (String) request.getAttribute("Etunimi");
	//String sukunimi = (String) request.getAttribute("Sukunimi");
	
	//out.println("Servlet communicated message: " + message + ", ");
%>
</body>
</html>