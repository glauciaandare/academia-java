package academia.java;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Main {
    private static String url = "jdbc:postgresql://localhost:5432/postgres";
    private static String user = "postgres";
    private static String password = "2030";

    public static void main(String[] args) {
        List<Person> persons = new ArrayList<Person>();
        try (Connection con = DriverManager.getConnection(url, user, password);          //Conectando ao BD
             PreparedStatement ps = con.prepareStatement("select * from Person")) {    //Preparando query
            System.out.println("Conectado com sucesso!");
            ResultSet rs = ps.executeQuery();                                           //Executando query no BD
            while (rs.next()) {
                persons.add(new Person(rs.getInt("personid"),
                        rs.getString("name"), rs.getString("email")));
            }
        } catch (SQLException e) {
            System.out.println("Erro ao conectar ao banco: " + e.getMessage());
        }
        System.out.println(persons);
    }
}