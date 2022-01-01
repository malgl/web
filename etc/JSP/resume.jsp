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
		graduateHash.put("1","고졸");
		graduateHash.put("2","대졸");
		graduateHash.put("3","대학원졸");
		majorHash=new Hashtable();
		majorHash.put("1","컴퓨터공학과");
		majorHash.put("2","산업공학과");
		majorHash.put("3","전자공학과");
		majorHash.put("4","기타 공학 계열");
		majorHash.put("5","자연 과학 계열");
		majorHash.put("6","어학계열");
		majorHash.put("7","인문 사회 계열");
		majorHash.put("8","기타");
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
<title>이력서</title>
<style type="text/css">
<!--
	td{font-family:굴림체,굴림;font-size:10pt}
-->
</style>
</head>
<body>
<center>
<h1>이 력 서</h1>
<table border=1 cellpadding=5 width=700>
	<tr>
		<td width=100 align=center>성명
		<td align=center><%=username%>
		<td align=center width=100>주민등록번호
		<td align=center><%=jumin1+"-"+jumin2%>
		<td align=center width=30 rowspan=4>사진
		<td rowspan=4 width=100 align=center valign=center>3cm X 4cm
	</tr>
	<tr>
		<td width=100 align=center>학력
		<td align=center><%=(String)graduateHash.get(graduate)%>
		<td align=center width=100>학교/학과
		<td align=center><%=school+" "+(String)majorHash.get(major)%>
	</tr>
	<tr>
		<td width=100 align=center>보유기술
		<td colspan=3>1.<%=skill1%>, 2.<%=skill2%>, 3.<%=skill3%>, 4.<%=skill4%>
	</tr>
	<tr>
		<td width=100 align=center>사용 가능<br>운영 체제
		<td colspan=3>
		<%
			for(int i=0;i<platform.length;i++)
				if(i+1<platform.length)out.print((i+1)+". "+(String)platformHash.get(platform[i])+", ");
				else out.println((i+1)+". "+(String)platformHash.get(platform[i]));
		%>
	</tr>
	<tr>
		<td align=center height=100>장<br><br>점
		<td colspan=5><%=replaceReturnToBR(strength)%>
	</tr>
	<tr>
		<td align=center height=100>경<br><br>력
		<td colspan=5><%=replaceReturnToBR(career)%>
	</tr>
	<tr>
		<td align=center height=100>자기<br><br>소개
		<td colspan=5><%=replaceReturnToBR(introduce)%>
	</tr>
</table>
</center>
</body>
</html>