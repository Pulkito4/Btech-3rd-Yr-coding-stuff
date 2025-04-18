import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SetCookieServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        Cookie cookie = new Cookie("user", username);
        cookie.setMaxAge(60 * 60); // 1 hour
        response.addCookie(cookie);

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h3>Cookie set for user: " + username + "</h3>");
    }
}
