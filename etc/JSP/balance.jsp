<!--http://localhost/balance.jsp?name=Adam&balance=9500.25-->
<%@page contentType="text/html;charset=euc-kr"%>
<html>
<head>
<title>request</title>
</head>
<body>
<%
	String name=request.getParameter("name");
	String balance=request.getParameter("balance");
	double accountBalance;
	try{accountBalance=Double.valueOf(balance).doubleValue();}
	catch(Exception e){accountBalance=0;}
%>
<%=name%>���� �ܾ� : <%=accountBalance%>
<p>
<%if(accountBalance<=1000000){%>
<b>���ڸ��� �˾ƺ��ô°� ���ڱ���.</b><br>
<%}else if(accountBalance<=2000000){%>
<b>������ �÷��� �� �� ���׿�.</b><br>
<%}else{%>
<b>���ڽó׿�.</b><br>
<%}%>
</body>
</html>