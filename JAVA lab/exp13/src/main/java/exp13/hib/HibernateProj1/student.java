package exp13.hib.HibernateProj1;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class student {
    @Id
    private int id;
    private String name;
    private String city;
    
    // Default constructor required by Hibernate
    public student() {
    }
    
    public student(int id, String name, String city) {
        this.id = id;
        this.name = name;
        this.city = city;
    }
    
    // Getters and setters
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    
    @Override
    public String toString() {
        return "Student [id=" + id + ", name=" + name + ", city=" + city + "]";
    }
}