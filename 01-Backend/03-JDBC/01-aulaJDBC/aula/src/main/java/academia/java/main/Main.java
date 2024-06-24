package academia.java.main;

import academia.java.database.DbConnection;
import academia.java.model.Person;

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        DbConnection.getConnection();

        DbConnection.getPerson(new Person(1));
        DbConnection.disconnect();
    }

}