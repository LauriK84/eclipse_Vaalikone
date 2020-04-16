package vaalikone;

import java.sql.*;

public class Validate {
	
    public static boolean checkUser(String email, String pass) {
        boolean st = false;
        try {
        		
        	
        	
            //Tehd��n yhteys databaseen
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vaalikone", "root", "Qwerty1!");
            //Valmistellaan sql-komento
            String sql = "SELECT * FROM admins WHERE email = ? and password = ?";
            //luodaan komento
            PreparedStatement ps = con.prepareStatement(sql);
            // annetaan arvot s�hk�posti sek� MD5 -salauksen luona k�ytetty salasana
            ps.setString(1, email);
            ps.setString(2, (MD5.getMd5(pass)));
            ResultSet rs = ps.executeQuery();
            st = rs.next();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return st;
    }

}