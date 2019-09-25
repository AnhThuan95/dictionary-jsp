<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.Writer" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="jdk.nashorn.internal.ir.debug.JSONWriter" %><%--
  Created by IntelliJ IDEA.
  User: thuan
  Date: 9/25/19
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dictionary = new HashMap<>();
%>
<%
    dictionary.put("hello", "Xin chào");
    dictionary.put("how", "Thế nào");
    dictionary.put("book", "Quyển vở");
    dictionary.put("computer", "Máy tính");

    String search = request.getParameter("search");

    String result = dictionary.get(search);

    PrintWriter writer = response.getWriter();
    if (result != null) {
        writer.println("Word: " + search);
        writer.println("Result: " + result);
    } else {
        writer.println("Not found!");
    }
%>
</body>
</html>
