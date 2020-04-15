<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%//@page import="java.util.*,vaalikone.Lisaa,persist.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LISTA EHDOKKAISTA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet" type="text/css">
        
    </head>
    <body>
       
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/vaalikone"
         user = "root"  password = "P33n1155"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from ehdokkaat;
      </sql:query>
     
     
      	
 
      <table border = "1" width = "100%">
 
		<tr>
			<th>ID</th>
			<th>Sukunimi</th>
			<th>Etunimi</th>
			<th>Puolue</th>
			<th>Kotipaikkakunta</th>
			<th>ik�</th>
			<th>Miksi eduskuntaan</th>
			<th>Mit� asioida haluat edist��</th>
			<th>Ammatti</th>
		</tr>
      <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.EHDOKAS_ID}"/></td>
               <td><c:out value = "${row.SUKUNIMI}"/></td>
               <td><c:out value = "${row.ETUNIMI}"/></td>
               <td><c:out value = "${row.PUOLUE}"/></td>
               <td><c:out value = "${row.KOTIPAIKKAKUNTA}"/></td>
               <td><c:out value = "${row.IKA}"/></td>
               <td><c:out value = "${row.MIKSI_EDUSKUNTAAN}"/></td>
               <td><c:out value = "${row.MITA_ASIOITA_HALUAT_EDISTAA}"/></td>
               <td><c:out value = "${row.AMMATTI}"/></td>
               <td>
               
               <form action="/PoistaK" method="Post">
               <input type="hidden" name="id" value="${row.EHDOKAS_ID}">
               <input type="submit" value="poista">
               </form>
          
 				
 				</td>
            </tr>
         </c:forEach>
      </table>

		</body>

</html>