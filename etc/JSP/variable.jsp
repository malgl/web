<%@page contentType="text/html;charset=euc-kr"%>
<%@page import="java.io.*,java.util.*"%>
<html>
<head>
<title>ȯ�� ����</title>
</head>
<body>
<ul>
	<li>AUTH_TYPE : <%=request.getAuthType()%>
	<li>CONTENT_LENGTH : <%=request.getContentLength()%>
	<li>CONTENT_TYPE : <%=request.getContentType()%>
	<li>DOCUMENT_ROOT : <%=request.getRealPath("/")%>
	<li>HTTP_ACCEPT : <%=request.getHeader("Accept")%>
	<li>HTTP_REFERER : <%=request.getHeader("Referer")%>
	<li>HTTP_USER_AGENT : <%=request.getHeader("User-Agent")%>
	<li>PATH_INFO : <%=request.getPathInfo()%>
	<li>PATH_TRANSLATED : <%=request.getPathTranslated()%>
	<li>QUERY_STRING : <%=request.getQueryString()%>
	<li>REMOTE_ADDR : <%=request.getRemoteAddr()%>
	<li>REMOTE_HOST : <%=request.getRemoteHost()%>
	<li>REMOTE_USER : <%=request.getRemoteUser()%>
	<li>REQUEST_METHOD : <%=request.getMethod()%>
	<li>SCRIPT_NAME : <%=request.getServletPath()%>
	<li>SERVER_NAME : <%=request.getServerName()%>
	<li>SERVER_PORT : <%=request.getServerPort()%>
	<li>SERVER_PROTOCOL : <%=request.getProtocol()%>
	<li>SERVER_SOFTWARE : <%=application.getServerInfo()%>
</ul>
<%
	if(request.getRemoteAddr().equals("127.0.0.1"))out.println("���ÿ��� ���� �ϼ̱���.");
	else out.println("���� Ȩ�������� ���Ű��� ȯ���մϴ�.");
%>
</body>
</html>