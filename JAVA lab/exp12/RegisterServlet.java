import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.sql.*;

@WebServlet("/RegisterServlet")  // URL mapping
public class RegisterServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        String mobile = request.getParameter("mobile");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pulkit", "root", "");

            PreparedStatement ps = conn.prepareStatement("INSERT INTO users(name, email, address, mobile) VALUES (?, ?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, address);
            ps.setString(4, mobile);

            ps.executeUpdate();

            response.sendRedirect("Success.jsp");
        } catch (Exception e) {
//            e.printStackTrace();
            response.getWriter().println("Error: " + e.getMessage());

        }
    }
}

