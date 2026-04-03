import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.*;
import javax.servlet.http.*;

public class FirstServlet extends HttpServlet
{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String n=request.getParameter("username");
        String p=request.getParameter("userpass");
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/krishna", "root", "saikrishna011");
            String sql = "SELECT * FROM user WHERE name = ? AND pass = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, n);
            stmt.setString(2, p);
            ResultSet rs = stmt.executeQuery();
            if (rs.next())
            {
                out.println("<h2>Welcome " + n + "</h2>");
            }
            else
            {
                out.println("<h2>Sorry username or password error<h2>");
                RequestDispatcher rd=request.getRequestDispatcher("/index.html");
                rd.include(request,response);
            }
            rs.close();
            stmt.close();
            conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        out.close();
    }
}