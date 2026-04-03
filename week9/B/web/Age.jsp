<%--
  Created by IntelliJ IDEA.
  User: Sai Krishna
  Date: 03-04-2026
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Age Validation Result</title>
</head>
<body>
<%
    String name = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    if (age < 18) {
        out.println("<h2>Hello " + name + ", you are not authorized to visit this site.</h2>");
    } else {
        out.println("<h2>Welcome " + name + " to this site!</h2>");
    }
%>
</body>
</html>