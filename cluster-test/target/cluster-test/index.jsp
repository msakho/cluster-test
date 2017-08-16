<html>
    <head>
        <title>Session replication Test</title>
    </head>
    <body>
        <h1>Session replication Test</h1>
        <h2>Session replication Test</h2>
        <h3>Session replication Test</h3>
<%
    Object sessAttr = session.getAttribute("visits");
    int visits = sessAttr == null ? 1 : Integer.valueOf(sessAttr+"");
    System.out.println("********************************+");
    System.out.println("Number of visits: " + visits);
    System.out.println("********************************+");
%>
        <h3>Current number of visits: <%=visits%></h3>
<%
    session.setAttribute("visits", ++visits);
%>
    </body>
</html>
