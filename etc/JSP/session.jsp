<%@page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>Session Example</title>
</head>
<body>
<p><h2>Session Object Test</h2>
<br>
<%
	String name=request.getParameter("name");
	String id=request.getParameter("id");
	session.setAttribute("name",name);
	session.setAttribute("id",id);
	String nameSession=(String)session.getAttribute("name");
	nameSession=new String(nameSession.getBytes("ISO8859-1"),"KSC5601");
	String idSession = (String)session.getAttribute("id");
%>
<%=nameSession%>(<font color=red><%=idSession%></font>)회원님. 환영합니다.
<p><a href=session0.jsp>이곳</a>으로 이동해 보시면 Session을 확인할 수 있습니다.
</body>
</html>