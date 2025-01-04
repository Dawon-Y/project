<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<title>수강신청 이월 학점 조회</title>
<style>
body {
	margin: 10px;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>  

<form>
<p><img src="img/dot_2.gif">&nbsp;<font color="blue"><strong>수강신청 이월학점 조회</strong></font></p>

<table width=710 border=1 cellpadding="0" cellspacing="0" bordercolor="#D0D8FF" bordercolordark="white" bordercolorlight="#086E35">
  <tr bgcolor="#D0D8FF" align="center" height=30>
    <td width=100>순번</td>
    <td width=200>학년도</td>
    <td width=200>학기</td>
    <td width=200>이월학점</td>
  </tr> 

  <tr><td colspan=4 height=30 align=center>해당 자료가 존재하지 않습니다.</td></td>
</table>

<table border=0 cellPadding=0 cellSpacing=0 width="100%">
	<tr>
		<td height="30"></td>
	</tr>
	<tr>
		<td width="900"><img src="img/dot_2.gif">&nbsp;<font color="blue"><strong>안내</strong></font></td>
	</tr>
	<tr>
		<td height="10"></td>
	</tr>
</table>

<table width=710 border=1 cellpadding="0" cellspacing="0" bordercolor="#D0D8FF" bordercolordark="white">
  <tr>
    <td>
    <div style="margin: 20px 20px;">
    	<font size=2>
    	  1. 수강신청 기준학점에서 사용하지 않은 학점 중 최대 3학점까지 이월하여 사용할 수 있다.
    	  <br>
    	  <br> 2. 이월학점 소멸 및 제한   
    	  <br> - 이월된 학점을 사용하지 않는 경우에는 자동 소멸. 일부만 사용하더라도 남은 이월학점이 다음학기로 재이월 되지 않음
    	  <br> - 학기를 초과하여 등록하는 경우 이월학점은 자동 소멸
    	  <br>&nbsp;&nbsp;&nbsp;&nbsp;즉, 8학기 의무등록 학생이 8학기차에 잔여학점이 발생하였다 하더라도 초과학기인 9학기로 이월되지 않음 
    	  <br> - 자퇴나 제적시에도 이월학점은 자동 소멸
    	  <br>
    	  <br> 3. 예외사항
    	  <br> - 휴학이나 전과시에는 잔여학점이 소멸되지 않고 다음 학기로 이월하여 사용가능   
    	  <br> - 수강포기한 학점도 이월 가능
    	  <br>
    	  </font>
    	  </div>
    </td>
  </tr> 
</table>

</form>
</body>
</html>