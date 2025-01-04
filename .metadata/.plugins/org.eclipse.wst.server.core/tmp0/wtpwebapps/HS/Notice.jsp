<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                request.getRequestDispatcher("Header.jsp").include(request, response); // 기본 헤더는 Header.jsp
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
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/notice.css">
<title>한성대학교 수강신청 페이지</title>
</head>
<body>

<div class="notice">
    <h2>공지사항</h2>
    
    <div class="list">
        <p>총<a class="orange"> 5 </a>개의 게시글이 있습니다.</p>
        <form>
            <table>
                <tr>
                    <td class="firstLi">
                    <a href="noticeLi1.jsp">2024학년도 겨울계절학기 안내</a>
                    </td>
                </tr>
                <tr>
                    <td><a href="noticeLi2.jsp">2025학년도 1학기 트랙선택 신청안내 (11/4~11/22)</a></td>
                </tr>
                <tr>
                    <td><a href="noticeLi3.jsp">2025학년도 1학기 일반 전부(과) 선발 안내 (~11월 8일까지)</a></td>
                </tr>
                <tr>
                    <td><a href="noticeLi4.jsp">2024학년도 2학기 수업평가 중간조사 시행 안내</a></td>
                </tr>
                <tr>
                    <td><a href="noticeLi5.jsp">2024학년도 겨울계절학기 학점교류 안내</a></td>
                </tr>
            </table>
        </form>
    </div>
    
    <div class="btn">
    	<a href=""><img src="img/left-arrow.gif"></a>
    	<p class="num">1</p>
    	<a href=""><img src="img/right-arrow.gif"></a>
    </div>
</div>

<footer>
<div class="container">
	<div class="section1">개인정보처리방침</div>
	<div class="section2">
		주소: [02876] 서울특별시 성북구 삼선교로 16길 116(삼선동2가)  Tel : 02-760-4114<br>
		Copyright 2024. HANSUNG UNIVERSITY All Rights Reserved.</div>
	<div class="section3"><p><img src="img/logo.png" alt="한성대 로고"></p></div>
</div>
</footer>
</body>
</html>
