<%@page contentType="text/html;charset=euc-kr"%>
<%@page buffer="10kb"%>
<%@page autoFlush="false"%>
<html>
<head>
<title>flush</title>
</head>
<body>
<%
	StringBuffer sb=new StringBuffer();
	for(int i=0;i<100;i++)
	{
		sb.append("**");
		out.println(sb.toString()+"<br>");
		out.flush();
	}
%>
</body>
</html>