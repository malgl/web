<%@page contentType="text/html;charset=euc-kr"%>
<%
	java.util.Date d=new java.util.Date();
	int h=d.getHours();
	int one=10;
	int two=20;
%>
<%!
	public int oper(int i,int j)
	{
		return i>j?i:j;
	}
%>
지금은 오전일까요, 오후일까요?<%=(h<12)?"오전":"오후"%>
<p>one 과 two 둘 중 큰 숫자는?<%=oper(one,two)%>