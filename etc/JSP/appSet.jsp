<%@page contentType="text/html;charset=euc-kr"%>
<%
	application.setAttribute("name","application object test");
	application.setAttribute("comment","���� ������ �Բ� �� �� �ֽ��ϴ�.");
%>
<html>
<head>
<title>Application Set</title>
</head>
<body>
<h2>Application Internal Object Example</h2>
<%
	String name=(String)application.getAttribute("name");
%>
Application�� �̸��� <font color=red>"<%=name%>"</font>�Դϴ�.
<p>
<%
	String comment=(String)application.getAttribute("comment");
%>
Application�� comment�� <font color=red>"<%=comment%>"</font>�Դϴ�.
<p>�ٸ� ������ �˾ƺ���
<a href=appGet.jsp>Go</a>
</body>
</html>