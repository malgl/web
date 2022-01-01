<%@page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>Session Object Example</title>
</head>
<body>
<p><h2>Session Object Test</h2>
<br>
<%
	String nameSession=(String)session.getAttribute("name");
	nameSession=new String(nameSession.getBytes("ISO8859-1"),"KSC5601");
	String idSession=(String)session.getAttribute("id");
%>
<%=nameSession%>(<font color=red><%=idSession%></font>)회원님. 환영합니다.
<p>이제 확신이 드시나요? 이 Page에서는 Session의 값만 가져왔습니다.
</body>
</html>