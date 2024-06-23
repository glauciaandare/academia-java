package academia.java.database;

import academia.java.model.Person;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbConnection {
   private String url = "jdbc:mysql://localhost:3306/COMPANY";
   private String user = "root";
   private String pass = "root";
   private static Connection con ;

    public static Connection getConnection() {
        try {
            if(con == null || con.isClosed()) {
                con = DriverManager.getConnection(url, user, pass);
                System.out.println("Connected to COMPANY database");
            }
        } catch (SQLException e) {
            System.out.println("aulaJDBC.Database connection failed");
            throw new RuntimeException(e);
        }
        return con;
    }
    public static int insertPerson(Person person){
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("insert into person (name, email) values (?,?)");
            ps.setString(1, person.getName());
            ps.setString(2, person.getEmail());
            return ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static int updatePerson(Person person){
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("UPDATE person SET name = ?, email = ? WHERE personid = ?");
            ps.setString(1, person.getName());
            ps.setString(2, person.getEmail());
            ps.setInt(3, person.GetPersonID());
            return ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static int deletePerson(Person person){
        PreparedStatement ps = null;
        try {
            ps = con.prepareStatement("Delete from person where personid = ?");
            ps.setInt(1, person.GetPersonID());
            return ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public static void disconnect() {
        try {
            if (con != null || !con.isClosed()) {
                con.close();
                System.out.println("Disconnected from COMPANY database");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}


