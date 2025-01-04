<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.lecture"%>
<%@ page import="dao.lectures"%>
<%@ page import="java.util.*"%>
   
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="manager.css" />
<meta charset="UTF-8">
<title>선택적 표 선택 임시 문서</title>

<script> 
function hideTracks() { 
	var choose = document.getElementById('listLecTr');
	var rows = listLecTr.rows;
	var track = document.getElementById('track').value;
	for(var i=0;i<rows.length;i++) {
		if(track.equals("모바일소프트웨어") {
			rows[r].style.display = 'none';
		}
	}
	
}
</script>
</head>
<body>

<h1 id = "planTitle">선택적 표 선택 임시 문서</h1>

<form> 
<input type = "button" value = "choose" onclick = "hideTracks()"> 
</form>

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
<td> 첫 날짜 
<td> 첫 시작 
<td> 첫 종료 
<td> 둘 날짜 
<td> 둘 시작 
<td> 둘 종료 
<td> 인원 
</tr>
<% 
lectures dao = lectures.getInstance();
ArrayList<lecture> lecturess = dao.getAllLectures();
for (int i = 0; i < lecturess.size(); i++) {
lecture lecture = lecturess.get(i);
%>
<tr id = "listLecTr"> 
<td id = "track"> <%=lecture.getLectureTrack() %> </td> 
<td id = "code"> <%=lecture.getLectureCode() %> </td> 
<td id = "credit"> <%=lecture.getLectureCredit() %> </td>  
<td id = "grade"> <%=lecture.getLectureGrade() %> </td>  
<td id = "Name" > <%=lecture.getLectureName() %> </td>  
<td id = "sort"> <%=lecture.getLectureSort() %> </td>  
<td id = "division"> <%=lecture.getLectureDivision() %> </td>  
<td id = "prof"> <%=lecture.getLectureProf() %> </td>  
<td id = "classRoom"> <%=lecture.getLectureClassRoom() %> </td>  
<td id = "day1"> <%=lecture.getLectureDay1() %> </td>  
<td id = "start1"> <%=lecture.getLectureStart1() %> </td>  
<td id = "end1"> <%=lecture.getLectureEnd1() %> </td>  
<td id = "day2"> <%=lecture.getLectureDay2() %> </td> 
<td id = "start2"> <%=lecture.getLectureStart2() %> </td>  
<td id = "end2"> <%=lecture.getLectureEnd2() %> </td> 
<td id = "people"> <%=lecture.getLecturePeople() %> </td>  
<%}%>
</tr>

</table>
</form>
</body>
</html>