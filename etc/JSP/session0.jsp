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
<%=nameSession%>(<font color=red><%=idSession%></font>)ȸ����. ȯ���մϴ�.
<p>���� Ȯ���� ��ó���? �� Page������ Session�� ���� �����Խ��ϴ�.
</body>
</html>