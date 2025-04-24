package exp13.hib.HibernateProj1;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Project Started!" );
        
        try {
            // Create configuration - fixing the single quotes to double quotes
            Configuration cfg = new Configuration();
            cfg.configure("hibernate.cfg.xml");
            
            // Create session factory
            SessionFactory factory = cfg.buildSessionFactory();
            
            // Create student object
            student s1 = new student(102, "Pulkit", "New Delhi");
            
            // Open a session
            Session session = factory.openSession();
            
            // Begin transaction
            Transaction tx = session.beginTransaction();
            
            // Save the object
            session.persist(s1);
            
            // Commit transaction
            tx.commit();
            
            // Close session
            session.close();
            
            System.out.println("Record saved successfully!");
            
            // Close factory
            factory.close();
            
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error: " + e.getMessage());
        }
    }
}
