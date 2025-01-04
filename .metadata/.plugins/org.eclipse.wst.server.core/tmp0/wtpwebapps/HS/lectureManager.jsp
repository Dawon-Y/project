<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.lecture"%>
<%@ page import="dao.lectures"%>
<%@ page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<style>
body {
margin-top: 180px;
}

#InputTable {
width : 90%;
margin-left : auto;
margin-right : auto;
font-size : 17px;
border-collapse : collapse;
}

#InputTrId1 {
text-align : center;
height : 35px;
border-bottom : 1px solid black;
border-top : 1px solid black;
background-color : #F9F5F9 ;
}

#listHr{
border : 0px;
height : 2px;
background : black;
width : 20px;
margin-left : 5%;
margin-top: 100px;
}

#listTitle {
font-size : 25x;
margin-left : 5%;
}

#InputHr{
border : 0px;
height : 2px;
background : black;
width : 20px;
margin-left : 5%;
margin-top: 180px;
}

#InputHr2{
border : 0px;
height : 2px;
background : black;
width : 20px;
margin-left : 5%;
margin-top: 180px;
}

#InputTrId2 {
text-align : center;
height : 40px;
border-bottom : 1px solid #C2C5CC ;
margin-left: auto;
margin-right : auto;
}

#send {
background-color : black;
border-radius :5px;
color : white;
height : 28px;
width: 38px;
border : none;
}

#t1,#t2,#t3,#t4,#t5,#t6,#t7,#t8,#t9,#t10,#t11,#t12,#t13,#t14,#t15,#t16,#t17,#t18 {
width : 55px;
}

#listTable { 
width : 90%;
margin-left : auto;
margin-right : auto;
border-collapse : collapse;
text-align : center;
}

#listTr {
height : 35px;
background-color:black;
color : white;
font-size : 17px;
}

#listLecTr { 
border-bottom: 1px solid #C2C5CC;
height : 40px;
font-size : 16px;
}

#InputTitle {
font-size : 25px;
margin-left : 5%;
}

#edit {
background-color : black;
border-radius :5px;
border : none;
height : 25px;
color : white;
}

#delete {
background-color : #333435;
border : none;
height : 25px;
border-radius :5px;
color : white;
}

#listTitle { 
margin-left : 5%;
font-size : 25px;
}

#planTitle { 
text-align : center;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@ include file="HeaderAdminLogin.jsp"%>
<title>관리자용 페이지(2171030 남유진)</title>
</head>
<body>
<%
lectures dao = lectures.getInstance();
ArrayList<lecture> lecturess = dao.getAllLectures();
%>   
<hr id = "InputHr">
<p id = "InputTitle">과목 추가 및 변경창</p>
<form action = "lectureMethod.jsp" method="get">
<table id = "InputTable"> 
<tr id = "InputTrId1"> 
<td> 
<td> 트랙 
<td> 코드  
<td> 학점 
<td> 학년 
<td> 이름 
<td> 분류 
<td> 분반 
<td> 교수 
<td> 교실 
<td> 수업1
<td> 시작1 
<td> 종료1 
<td> 수업2 
<td> 시작2 
<td> 종료2 
<td> 정보 
<td> 인원 
<td> 
</tr>

<tr id = "InputTrId2"> 
<td> <input name = "EAD" id = "EAD" type = "hidden"> </td>
<td> <input style = "width: 50px" name = "t1" id = "t1" type = "text"> </td>
<td> <input style = "width: 50px" name = "t2" id = "t2" type = "text">  </td>
<td> <input style = "width: 12px" name = "t3" id = "t3" type = "text"> </td>
<td> <input style = "width: 12px" name = "t4" id = "t4" type = "text"> </td>
<td> <input style = "width: 50px" name = "t5" id = "t5" type = "text"> </td>
<td> <input style = "width: 25px"  name = "t6" id = "t6" type = "text"> </td>
<td> <input style = "width: 12px" name = "t7" id = "t7" type = "text"> </td>
<td> <input style = "width: 40px" name = "t8" id = "t8" type = "text"> </td>
<td> <input style = "width: 40px" name = "t9" id = "t9" type = "text"> </td>
<td> <input style = "width: 40px" name = "t10" id = "t10" type = "text"> </td>
<td> <input style = "width: 40px" name = "t11" id = "t11" type = "text"> </td>
<td> <input style = "width: 40px" name = "t12" id = "t12" type = "text"> </td>
<td> <input style = "width: 40px" name = "t13" id = "t13" type = "text"> </td>
<td> <input style = "width: 40px" name = "t14" id = "t14" type = "text"> </td>
<td> <input style = "width: 40px" name = "t15" id = "t15" type = "text"> </td>
<td> <input style = "width: 50px" name = "t17" id = "t17" type = "text"> </td>
<td> <input style = "width: 12px" name = "t18" id = "t18" type = "text"> </td>
<td> <input style = "text-align : left;" id = "send" name = "click" type = "submit" value = "변경" > &nbsp;</input> </td>
</table>
</form>

<hr id = "listHr"> 
<p id = "listTitle">과목 목록</p>

<form> 
<table id = "listTable"> 
<tr id = "listTr"> 
<td> 트랙 
<td> 코드  
<td> 학점 
<td> 학년 
<td> 이름 
<td> 분류 
<td> 분반 
<td> 교수 
<td> 교실 
<td> 수업1 
<td> 시작1 
<td> 종료1 
<td> 수업2 
<td> 시작2 
<td> 종료2 
<td> 정보 
<td> 인원 
<td> 기능 
</tr>
<div id = "chooseTable">
<% 
for (int i = 0; i < lecturess.size(); i++) {
lecture lecture = lecturess.get(i);
%>
</div> 

<tr name = "listLecTr" id = "listLecTr"> 
<div> <td> <%=lecture.getLectureTrack() %> </td> </div>
<div> <td> <%=lecture.getLectureCode() %> </td> </div> 
<div> <td> <%=lecture.getLectureCredit() %> </td> </div> 
<div> <td> <%=lecture.getLectureGrade() %> </td> </div> 
<div> <td> <%=lecture.getLectureName() %> </td> </div> 
<div> <td> <%=lecture.getLectureSort() %> </td> </div> 
<div> <td> <%=lecture.getLectureDivision() %> </td> </div> 
<div> <td> <%=lecture.getLectureProf() %> </td> </div> 
<div> <td> <%=lecture.getLectureClassRoom() %> </td> </div> 
<div> <td> <%=lecture.getLectureDay1() %> </td> </div> 
<div> <td> <%=lecture.getLectureStart1() %> </td> </div> 
<div> <td> <%=lecture.getLectureEnd1() %> </td> </div> 
<div> <td> <%=lecture.getLectureDay2() %> </td> </div> 
<div> <td> <%=lecture.getLectureStart2() %> </td> </div> 
<div> <td> <%=lecture.getLectureEnd2() %> </td> </div> 
<td> <div style = "font-size:10px; overflow:hidden;white-space:nowrap;text-overflow:ellipsis;width:30px;"> <%=lecture.getLectureInformation() %> </div> </td>
<div> <td> <%=lecture.getLecturePeople() %> </td>  
<div> <td> <input id = "edit" type = "button" value = "수정" 
onclick ="document.getElementById('t1').value = '<%=lecture.getLectureTrack()%>';
document.getElementById('t2').value = '<%=lecture.getLectureCode()%>';
document.getElementById('t3').value = '<%=lecture.getLectureCredit()%>'; 
document.getElementById('t4').value = '<%=lecture.getLectureGrade() %>';
document.getElementById('t5').value = '<%=lecture.getLectureName() %>';  
document.getElementById('t6').value = '<%=lecture.getLectureSort() %>';
document.getElementById('t7').value = '<%=lecture.getLectureDivision()%>';
document.getElementById('t8').value = '<%=lecture.getLectureProf() %>';
document.getElementById('t9').value = '<%=lecture.getLectureClassRoom() %>';
document.getElementById('t10').value = '<%=lecture.getLectureDay1() %>';
document.getElementById('t11').value = '<%=lecture.getLectureStart1() %>';
document.getElementById('t12').value = '<%=lecture.getLectureEnd1() %>';
document.getElementById('t13').value = '<%=lecture.getLectureDay2() %>';
document.getElementById('t14').value = '<%=lecture.getLectureStart2() %>';
document.getElementById('t15').value = '<%=lecture.getLectureEnd2() %>';
document.getElementById('t17').value = '<%=lecture.getLectureInformation() %>';
document.getElementById('t18').value = '<%=lecture.getLecturePeople()%>';
document.getElementById('EAD').value = '<%=i%>';
"> </input> 
<input id = "delete" type = "button" value = "삭제" 
onclick = "document.getElementById('t1').value = '<%=lecture.getLectureTrack()%>';
document.getElementById('t2').value = '<%=lecture.getLectureCode()%>';
document.getElementById('t3').value = '<%=lecture.getLectureCredit()%>'; 
document.getElementById('t4').value = '<%=lecture.getLectureGrade() %>';
document.getElementById('t5').value = '<%=lecture.getLectureName() %>';  
document.getElementById('t6').value = '<%=lecture.getLectureSort() %>';
document.getElementById('t7').value = '<%=lecture.getLectureDivision()%>';
document.getElementById('t8').value = '<%=lecture.getLectureProf() %>';
document.getElementById('t9').value = '<%=lecture.getLectureClassRoom() %>';
document.getElementById('t10').value = '<%=lecture.getLectureDay1() %>';
document.getElementById('t11').value = '<%=lecture.getLectureStart1() %>';
document.getElementById('t12').value = '<%=lecture.getLectureEnd1() %>';
document.getElementById('t13').value = '<%=lecture.getLectureDay2() %>';
document.getElementById('t14').value = '<%=lecture.getLectureStart2() %>';
document.getElementById('t15').value = '<%=lecture.getLectureEnd2() %>';
document.getElementById('t17').value = '<%=lecture.getLectureInformation() %>';
document.getElementById('t18').value = '<%=lecture.getLecturePeople()%>';
document.getElementById('EAD').value = '100<%=i%>'
"> </input> </td>
</tr>
<% 
}
%>
</div>
</table>
</form>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
</body>
<footer>
<%@ include file="Footer.jsp"%>
</footer>
</html>