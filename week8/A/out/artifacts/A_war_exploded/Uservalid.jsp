<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<html>
<body>
<%
    String n = request.getParameter("username");
    String p = request.getParameter("userpass");

    try {
        String URL = "jdbc:mysql://localhost:3306/krishna";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection(URL, "root", "saikrishna011");

        PreparedStatement ps = conn.prepareStatement("SELECT * FROM user WHERE name=? AND pass=?");
        ps.setString(1, n);
        ps.setString(2, p);

        ResultSet rs = ps.executeQuery();
        if(rs.next()) {
            out.println("<h1>Welcome " + n+"<h1");
        } else {
            out.println("<h1>Sorry, username or password error<h1>");
        }

        rs.close();
        ps.close();
        conn.close();
    } catch(Exception ex) {
        out.println("Unable to connect to database. Error: " + ex.getMessage());
    }
%>
</body>
</html>
