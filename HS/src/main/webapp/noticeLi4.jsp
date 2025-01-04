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
<meta charset="UTF-8">
<meta name = "viewport" content="width=device-width", initial-scale="1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/noticeLi4.css">
<title>공지사항</title>
</head>
<body>

<div class="contents">
	<h2>공지사항</h2>
	<div class="notice">
	<hr class= "black">
		<div class="subject">
		<h3>2024학년도 2학기 수업평가 중간조사 시행 안내</h3>
		<p>작성일 2024.10.18 | 작성자 학사지원팀</p>
	<hr>
		</div>
	</div>
	
	<div class="write">
		<p>본 설문조사는 중간 수업 만족도와 요구를 파악하여 이번 학기 수업의 품질 개선하는 데 목적을 두었습니다.</p>
		<p>수업평가 중간조사는 응답률 제고와 유의미한 품질 개선을 위해 매학기 9주차에 실시하고 있습니다.(22-1학기부터 적용)</p>
		<p>통계법 제33조(비밀의 보호), 34조(통계종사자의 의무)에 의거하여 여러분의 의견은 보호될 것이며, 통계 작성 외의 목적으로 사용되지 않습니다.</p>
		<p>조사방법 및 기간을 다음과 같이 안내하오니 많은 참여 바랍니다.</p>
		
		<div class="mainContents">
			<p><br>- 다 음 -</p>
			<p>1. 조사기간 : 2024.10.28.(월) 10:00 ~ 11.1.(금) 23:59</p>
			<p>2. 조사과목 : 2024학년도 2학기 수강 과목</span>
			<p>3. 조사방법 : 종합정보시스템 로그인→교무→수업평가 메뉴 선택→대상과목 클릭→평가 후 저장</p>
			<p>※ 설문응시자의 신상정보는 해당과목 교수님께서 절대 확인이 불가능합니다.</p>
			<p>※ 조사화면 안내</p>
			<p><img class="search" src="img/search1.png"></p>
			<p>① [종합정보시스템]에 로그인 한 뒤, [교무]메뉴의 [수업평가]를 클릭</p>
			<p>② 과목을 선택 후 평가항목 모두 응답</p>
			<p><img class="search" src="img/search2.png"></p>
			<p>③ 응답 후 반드시 [저장]버튼을 클릭하여 저장</p>
			<p><br><br>※ 수업평가 중간 조사는 본인이 수강하고 있는 강의의 개선을 위한 참고 자료로 활용되므로 진솔하게 평가하여 주시기 바랍니다.</p>
			<p>기타 자세한 문의사항이나 건의사항은 학사지원팀(☎760-4219)에 연락 바랍니다.</p>
		</div>
			<div class="attach">
		    <div class="left">첨부파일</div>
		    <div class="attachList">
		        첨부파일이(가) 없습니다.
		    </div>
		</div>
		<div class="listBtnContainer"><a href="Notice.jsp" class="listBtn">목록</a></div>
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