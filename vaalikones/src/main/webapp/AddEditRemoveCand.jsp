<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ehdokkaiden muokkaus</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
        <div id="container">
            
            <img id="headerimg" src="Logo.png" width="720" />
            <div class="kysymys">
                <h1>Ehdokkaiden muokkaus</h1>
            </div>
                <br>     
        </div>
        
        <div id="buttonit">
            <form action="Lisaa"> <!-- ohjaa Lis�� ehdokas -sivulle -->
            <input id="submitnappi" type="submit" value="Lis�� ehdokas" name="btnLisaa" />                                                              
            </form>
            <form action=" "> <!-- ohjaa Muokkaa ehdokasta -sivulle -->
            <input id="submitnappi" type="submit" value="Muokkaa ehdokasta" name="btnMuokkaa" />      
            </form>
            <form action=" "> <!-- ohjaa Poista ehdokas -sivulle -->
            <input id="submitnappi" type="submit" value="Poista ehdokas" name="btnPoista" />
            </form>
        
        </div>
    </body>
</html>
