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
<%=nameSession%>(<font color=red><%=idSession%></font>)ȸ����. ȯ���մϴ�.
<p><a href=session0.jsp>�̰�</a>���� �̵��� ���ø� Session�� Ȯ���� �� �ֽ��ϴ�.
</body>
</html>