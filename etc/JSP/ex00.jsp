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
������ �����ϱ��, �����ϱ��?<%=(h<12)?"����":"����"%>
<p>one �� two �� �� ū ���ڴ�?<%=oper(one,two)%>