<%@page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>Application Get</title>
</head>
<body>
<h2>Confirmation Application Internal Object</h2>
Application Name : <font color=red><%=application.getAttribute("name")%></font>
<p>
Application Comment : <font color=red><%=application.getAttribute("comment")%></font>
</body>
</html>