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
<%=name%>님의 잔액 : <%=accountBalance%>
<p>
<%if(accountBalance<=1000000){%>
<b>일자리를 알아보시는게 좋겠군요.</b><br>
<%}else if(accountBalance<=2000000){%>
<b>저축을 늘려야 될 것 같네요.</b><br>
<%}else{%>
<b>부자시네요.</b><br>
<%}%>
</body>
</html>