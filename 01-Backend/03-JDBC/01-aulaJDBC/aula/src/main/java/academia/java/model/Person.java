package academia.java.model;

public class Person {
    private int personID;
    private String Name;
    private String email;

    public Person(String email, String name, int personID) {
        this.email = email;
        Name = name;
        this.personID = personID;
    }

    public Person(String name, String email) {
        Name = name;
        this.email = email;
    }

    public Person() {
    }

    public int getPersonID() {
        return personID;
    }

    public void setPersonID(int personID) {
        this.personID = personID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Person{" +
                "personID=" + personID +
                ", Name='" + Name + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}



