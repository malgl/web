<%@page contentType="text/html;charset=euc-kr"%>
<%@page import="java.io.*,java.util.*"%>
<%!
	private Hashtable graduateHash,majorHash,platformHash;
	public String fixHangul(String param)
	{
		try{return new String(param.getBytes("ISO-8859-1"),"EUC-KR");}
		catch(UnsupportedEncodingException e){return null;}
	}
	public String replaceReturnToBR(String param)
	{
		StringTokenizer st=new StringTokenizer(param,"\r\n");
		StringBuffer sb=new StringBuffer();
		while(st.hasMoreTokens())sb.append(st.nextToken()+"<BR>");
		return sb.toString();
	}
	public void jspInit()
	{
		graduateHash=new Hashtable();
		graduateHash.put("1","����");
		graduateHash.put("2","����");
		graduateHash.put("3","���п���");
		majorHash=new Hashtable();
		majorHash.put("1","��ǻ�Ͱ��а�");
		majorHash.put("2","������а�");
		majorHash.put("3","���ڰ��а�");
		majorHash.put("4","��Ÿ ���� �迭");
		majorHash.put("5","�ڿ� ���� �迭");
		majorHash.put("6","���а迭");
		majorHash.put("7","�ι� ��ȸ �迭");
		majorHash.put("8","��Ÿ");
		platformHash=new Hashtable();
		platformHash.put("1","Windows NT");
		platformHash.put("2","UNIX");
		platformHash.put("3","IBM OS/390");
		platformHash.put("4","RS/6000");
		platformHash.put("5","As/400");
		platformHash.put("6","OS/2");
	}
%>
<%
	String username=fixHangul(request.getParameter("username"));
	String jumin1=request.getParameter("jumin1");
	String jumin2=request.getParameter("jumin2");
	String graduate=request.getParameter("graduate");
	String school=fixHangul(request.getParameter("school"));
	String major=request.getParameter("major");
	String skill1=fixHangul(request.getParameter("skill1"));
	String skill2=fixHangul(request.getParameter("skill2"));
	String skill3=fixHangul(request.getParameter("skill3"));
	String skill4=fixHangul(request.getParameter("skill4"));
	String platform[]=request.getParameterValues("platform");
	String strength=fixHangul(request.getParameter("strength"));
	String career=fixHangul(request.getParameter("career"));
	String introduce=fixHangul(request.getParameter("introduce"));
%>
<html>
<head>
<title>�̷¼�</title>
<style type="text/css">
<!--
	td{font-family:����ü,����;font-size:10pt}
-->
</style>
</head>
<body>
<center>
<h1>�� �� ��</h1>
<table border=1 cellpadding=5 width=700>
	<tr>
		<td width=100 align=center>����
		<td align=center><%=username%>
		<td align=center width=100>�ֹε�Ϲ�ȣ
		<td align=center><%=jumin1+"-"+jumin2%>
		<td align=center width=30 rowspan=4>����
		<td rowspan=4 width=100 align=center valign=center>3cm X 4cm
	</tr>
	<tr>
		<td width=100 align=center>�з�
		<td align=center><%=(String)graduateHash.get(graduate)%>
		<td align=center width=100>�б�/�а�
		<td align=center><%=school+" "+(String)majorHash.get(major)%>
	</tr>
	<tr>
		<td width=100 align=center>�������
		<td colspan=3>1.<%=skill1%>, 2.<%=skill2%>, 3.<%=skill3%>, 4.<%=skill4%>
	</tr>
	<tr>
		<td width=100 align=center>��� ����<br>� ü��
		<td colspan=3>
		<%
			for(int i=0;i<platform.length;i++)
				if(i+1<platform.length)out.print((i+1)+". "+(String)platformHash.get(platform[i])+", ");
				else out.println((i+1)+". "+(String)platformHash.get(platform[i]));
		%>
	</tr>
	<tr>
		<td align=center height=100>��<br><br>��
		<td colspan=5><%=replaceReturnToBR(strength)%>
	</tr>
	<tr>
		<td align=center height=100>��<br><br>��
		<td colspan=5><%=replaceReturnToBR(career)%>
	</tr>
	<tr>
		<td align=center height=100>�ڱ�<br><br>�Ұ�
		<td colspan=5><%=replaceReturnToBR(introduce)%>
	</tr>
</table>
</center>
</body>
</html>