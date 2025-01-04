<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="dto.lecture"%>
<%@ page import="dao.lectures"%>
<%@ page import="java.util.*"%>
<%
    // 세션을 가져오고, 세션이 없을 경우 null 처리
    HttpSession userSession = request.getSession(false); // 세션이 없을 경우 null 반환
    String userType = null;
    Boolean isLoggedIn = false;
    String previousPage = null;

    if (userSession != null) {
        // 세션에서 필요한 값들 가져오기
        userType = (String) userSession.getAttribute("userType");
        isLoggedIn = (Boolean) userSession.getAttribute("isLoggedIn");
        previousPage = (String) userSession.getAttribute("previousPage");
    }

    // 로그인되지 않았을 경우 기본값 설정 (guest)
    if (userSession == null || !Boolean.TRUE.equals(isLoggedIn)) {
        isLoggedIn = false; // 로그인되지 않은 상태
        userType = "guest"; // 기본값으로 guest 설정
    }

    // 이전 페이지에 맞는 헤더 로드
    if (previousPage != null) {
        if ("notice".equals(previousPage)) {
            // 로그인된 경우 헤더를 로그인된 상태로 표시
            if (Boolean.TRUE.equals(isLoggedIn)) {
                if ("admin".equals(userType)) {
                    request.getRequestDispatcher("HeaderAdminLogin.jsp").include(request, response);
                } else if ("student".equals(userType)) {
                    request.getRequestDispatcher("HeaderStudentLogin.jsp").include(request, response);
                }
            } else {
                // 로그인되지 않은 경우 헤더를 비로그인 상태로 표시
                request.getRequestDispatcher("HeaderStudent.jsp").include(request, response); // 기본 헤더는 HeaderStudent.jsp
            }
        }
    } else {
        // 기본적으로 사용자 타입에 맞는 헤더 로딩
        if (Boolean.TRUE.equals(isLoggedIn)) {
            // 로그인된 상태에서 헤더 처리
            if ("admin".equals(userType)) {
                request.getRequestDispatcher("HeaderAdminLogin.jsp").include(request, response);
            } else if ("student".equals(userType)) {
                request.getRequestDispatcher("HeaderStudentLogin.jsp").include(request, response);
            }
        } else {
            // 로그인되지 않은 상태에서는 기본으로 Header.jsp를 로드
            request.getRequestDispatcher("Header.jsp").include(request, response);
        }
    }
%>

   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style>
body {
margin-top : 10%;
}
#listTable {
width : 80%;
font-size : 18px;
border-collapse : collapse;
text-align : center;
margin-left : auto;
margin-right : auto;
}

#listTr {
border : 1px;
font-size : 19px;
height : 35px;
color : #353D89;
border-bottom : 1px solid black;
border-top : 1px solid black;
}

#listLecTr { 
border : 1px;
font-size : 15px;
height : 40px;
border-bottom : 1px solid #D1D3D4;
}

#planButton {
background : #00AC28;
border-radius :5px;
border-color : #00AC28;
border: none;
font-size : 15px;
color : white;
height : 28px;
}

#planTitle {
font-size : 25px;
margin-left : 10%;
}

#planHr {
border : 0px;
height : 2px;
background : #353D89;
width : 15px;
margin-left : 10%;
 }
</style>
<meta charset="UTF-8">
<title>수강 과목 조회 페이지 (2171030 남유진)</title>

<script> 
function showLecturesPlansPage() { 
	window.open("lecturesPlansPage.jsp","lecturesPlansPage","width = 800, height = 1200, top = 100, left = 800");
}
</script>
</head>
<body>
<hr id = "planHr">
<p id = "planTitle"> 과목 조회 </p>

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
<td> 인원 
<td style = "border-right : none;"> 기능 
</tr>

<% 
lectures dao = lectures.getInstance();
ArrayList<lecture> lecturess = dao.getAllLectures();
for (int i = 0; i < lecturess.size(); i++) {
lecture lecture = lecturess.get(i);
%>
<tr id = "listLecTr"> 
<td> <%=lecture.getLectureTrack() %> </td> 
<td> <%=lecture.getLectureCode() %> </td> 
<td> <%=lecture.getLectureCredit() %> </td>  
<td> <%=lecture.getLectureGrade() %> </td>  
<td id = "Lecname"> <%=lecture.getLectureName() %> </td>  
<td> <%=lecture.getLectureSort() %> </td>  
<td> <%=lecture.getLectureDivision() %> </td>  
<td> <%=lecture.getLectureProf() %> </td>  
<td> <%=lecture.getLectureClassRoom() %> </td>  
<td> <%=lecture.getLectureDay1() %> </td>  
<td> <%=lecture.getLectureStart1() %> </td>  
<td> <%=lecture.getLectureEnd1() %> </td>  
<td> <%=lecture.getLectureDay2() %> </td> 
<td> <%=lecture.getLectureStart2() %> </td>  
<td> <%=lecture.getLectureEnd2() %> </td> 
<td> <%=lecture.getLecturePeople() %> </td>  
<td> <input id = "planButton" type = "button" value = "강의 계획서" onclick 
= "javacript:window.open('lecturesPlansPage.jsp?index=<%=i%>','lecturesPlansPage','width = 800, height = 700, top=180, left = 400')"> </input>
<%}%>
</tr>
</table>
</form>
</body>
<br><br><br><br><br>
<footer>
<%@ include file="Footer.jsp"%>
</footer>
</html>