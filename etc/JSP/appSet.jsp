<%@page contentType="text/html;charset=euc-kr"%>
<%
	application.setAttribute("name","application object test");
	application.setAttribute("comment","여러 곳에서 함께 쓸 수 있습니다.");
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
Application의 이름은 <font color=red>"<%=name%>"</font>입니다.
<p>
<%
	String comment=(String)application.getAttribute("comment");
%>
Application의 comment는 <font color=red>"<%=comment%>"</font>입니다.
<p>다른 곳에서 알아보기
<a href=appGet.jsp>Go</a>
</body>
</html>