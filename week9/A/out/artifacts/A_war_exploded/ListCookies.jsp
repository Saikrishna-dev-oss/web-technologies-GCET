<%--
  Created by IntelliJ IDEA.
  User: Sai Krishna
  Date: 03-04-2026
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.servlet.http.Cookie" %>
<html>
<head>
    <title>List Cookies</title>
</head>
<body>
<%
    String str1 = request.getParameter("name");
    String str2 = request.getParameter("age");
    String str3 = request.getParameter("add");
    String str4 = request.getParameter("list");

    if (str3 != null) {
        // Add a new cookie
        Cookie c1 = new Cookie(str1, str2);
        c1.setMaxAge(60 * 60); // cookie lasts 1 hour
        response.addCookie(c1);
        out.println("<h3>Cookie Added: " + str1 + " = " + str2 + "</h3>");
    } else if (str4 != null) {
        // List all cookies
        Cookie clientCookies[] = request.getCookies();
        if (clientCookies != null) {
            out.println("<h3>Cookies Stored in Browser:</h3>");
            for (int i = 0; i < clientCookies.length; i++) {
                out.println("<b>" + clientCookies[i].getName() + " : "
                        + clientCookies[i].getValue() + "</b><br>");
            }
        } else {
            out.println("<h3>No cookies found!</h3>");
        }
    }
%>
</body>
</html>
