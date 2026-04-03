<%--
  Created by IntelliJ IDEA.
  User: Sai Krishna
  Date: 02-04-2026
  Time: 23:39
--%>

<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<%
    int n1 = Integer.parseInt(request.getParameter("num1"));
    int n2 = Integer.parseInt(request.getParameter("num2"));
    String op = request.getParameter("r1");

    if (op.equals("add")) {
        out.println("<h1>Addition is: </h1>" + (n1 + n2));
    } else if (op.equals("sub")) {
        out.println("<h1>Subtraction is: </h1>" + (n1 - n2));
    } else if (op.equals("mul")) {
        out.println("<h1>Multiplication is: </h1>" + (n1 * n2));
    } else if (op.equals("div")) {
        if (n2 != 0) {
            out.println("<h1>Division is: </h1>" + (n1 / n2));
        } else {
            out.println("<h1>Error: Division by zero</h1>");
        }
    } else if (op.equals("mod")) {
        out.println("<h1>Modulus is: </h1>" + (n1 % n2));
    } else {
        out.println("<h1>Please select a valid operator</h1>");
    }
%>
</body>
</html>
