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
<link rel="stylesheet" href="css/noticeLi.css">
<title>공지사항</title>
</head>
<body>

<div class="contents">
	<h2>공지사항</h2>
	<div class="notice">
	<hr class= "black">
		<div class="subject">
		<h3>2024학년도 겨울계절학기 안내</h3>
		<p>작성일 2024.11.02 | 작성자 학사지원팀</p>
	<hr>
		</div>
	</div>
	
	<div class="write">
		<h4>2024학년도 겨울계절학기 안내문</h4>
		<p>※ 컴퓨터공학부 내 트랙을 선택하고자 하는 학생은 트랙기초 과목(컴퓨터프로그래밍, 웹프로그래밍기초)에서 B0이상 받아야 선택 가능합니다.</p>
		<p>※ <사고와 표현> 재수강 서면신청 관련 안내 </span>
		<p>- 해당 과목 재수강을 희망하는 학생은 서면신청을 통해 수강신청 해야 합니다. </span>
		<p>- 수강신청 기간 내에 수강신청 정정원을 작성하여 이메일(312645@hansung.ac.kr)로 제출하여 주시기 바랍니다.(관련문의: 02-760-4354)</p>
		<p>※ 수강료 납부 및 고지서 확인기간(1차)변경 안내</span>
		<p>기존: 2024. 11. 25.(월) 00:00 ~ 11. 26.(화) 16:00 → 변경: 2024. 11. 26.(화) 00:00 ~ 11. 27.(수) 16:00 </p>
		
		<div class="mainContents">
			<p class="bold">1. 학사일정</p>
			<p>가. 수강신청 기간 : &nbsp;<a class="blue">2024. 11. 19.(화) 10:00 ~ 11. 21.(목) 23:59 / 3일간 온라인 신청</a></p>
			<p>나. 폐강 공고(1차) : 2024. 11. 22.(금) &nbsp;<a class="red">1차 폐강 (예정)</a></p>
			<p>다. 수강료 납부 및 고지서 확인기간(1차) : &nbsp;<a class="blue">2024. 11. 26.(화) 00:00 ~ 11. 27.(수) 16:00 / 2일간</a></p>
			<p>라. 1차 폐강 이후 수강신청 정정 접수 기간 :&nbsp;<a class="blue">2024. 11. 28.(목) 10:00 ~ 11. 29.(금) 23:59 / 2일간 방문 및 메일 신청(haksa@hansung.ac.kr)</a></p>
			<p>마. 수강료 납부 및 고지서 확인기간(2차) : &nbsp;<a class="blue">2024. 12. 3.(화) 00:00 ~ 12. 4.(수) 16:00 / 2일간</a></p>
			<p>바. 폐강 공고(2차) : 2024. 12. 6.(금) &nbsp;<a class="red">2차 폐강 (예정)</a></p>
			<p>사. 폐강교과목 수강신청 정정 : &nbsp;<a class="blue">2024. 12. 9.(월) 10:00 ~ 12. 10.(화) 23:59 / 2일간 방문 및 메일 신청(haksa@hansung.ac.kr)</a></p>
			<p>※ 수강신청한 과목이 폐강한 경우, 수강정정 가능.</p>
			<p>※ 1-2차 기간에 수강신청 후 수강료를 납부한 학생도 원하면 수강정정 가능.(수강취소는 불가능)</p>
			<p>※ 계절학기 수강신청을 놓친 학생도 신규 수강신청 가능.</p>
			<p>아. 수강료 납부 및 고지서 확인기간(3차) : &nbsp;<a class="blue">2024. 12. 12.(목) 00:00 ~ 12. 13.(금) 16:00 / 2일간</a></p>
			<p>※ 12/9~12/10에 신규 수강신청을 한 학생도 수강료 납부.</p>
			<p>※ 12/9~12/10에 수강정정으로 차액을 추가로 납부해야 하는 학생도 수강료 납부.</p>
			<p>※ 수강료 납부(3차) 기간까지 수강료를 납부 완료하지 않은 학생은 추후 수강신청 취소로 처리됨.</p>
			<p>자. 계절학기 수업기간 : &nbsp;<a class="red">2024. 12. 23.(월) ~ 2025. 1. 14.(화) / 15일간</a></p>
			<p class="bold">2. 수강신청방법</p>
			<p>가. 본교생</p>
			<p>① 한성대 [종합정보시스템] 로그인 → [계절학기] → [계절학기수강신청] 클릭</p>
			<p>② [과목전공] 클릭 → 수강과목 직접 신청(주·야간 교차수강 가능)</p>
			<p>③ 하단의 [2024학년도 겨울학기 수강신청 내역] 확인 → 수강료 납부(납부 방법은 하단 참조)</p>
			<p>※ 수강신청은 수강료를 납부하여야 완료되며 &nbsp;<a class="redLine">수강료 납부 시 수강신청한 과목이 폐강된 경우와 개설 가능</a></p>
			<p><a class="redLine">기준을 초과한 인원에 대해서만 선착순으로 수강취소 및 수강료 반환을 허용하며, 개강 후에는 절대 취소/정정 및 환불 불가</a></p>
			<p class="bold">3. 수강료 납부방법</p>
			<p>가. 수강료 : 시간당 80.000원</p>
			<p>- 오프라인 강좌는 수업시간에 따라 부과 / 시간당 80,000원으로 계산함.</p>
			<p>예) 3학점 3시간 240,000원, 2학점 3시간 240,000원, 2학점 2시간 160,000원.</p>
			<p>- 온라인 강좌는 학점에 따라 부과 / 학점당 80,000원으로 계산함.</p>
			<p><a class="red">※</a>&nbsp;<a class="redLine">개설 가능 기준을 초과한 인원에 대해서만 선착순으로 수강취소 및 수강료 반환(개강 후 절대 환불 불가).</a></p>
			<p><a class="redLine">단, 천재지변, 폐강, 입원 등 수강이 불가할 경우에 환불을 허용함(수강료 납부 시 신중을 기해야 함)</a></p>
			<p>나. 납부방법</p>
			<p>① 본교생 : 한성대 [종합정보시스템] 로그인 → [계절학기] → [수강신청서(출력)] 클릭 → 팝업창에 표기된 계좌번호로 입금</p>
			<p>② 타대생 : 한성대 [종합정보시스템] 로그인 → [교무] → [수강신청] → 수강신청서 출력 우측의 [인쇄] 버튼 클릭 → 팝업창에 표기된 계좌번호로 입금</p>
			<p>다. 납부확인 방법</p>
			<p>① 본교생 : 한성대 [종합정보시스템] 로그인 → [계절학기] → [계절학기수납내역]에서 확인</p>
			<p>② 타대생 : 한성대 [종합정보시스템] 로그인 → [교무] → [수강신청] → 하단 [수강신청내역]</p>
		</div>
	</div>
	
		<div class="attach">
		    <div class="left">첨부파일</div>
		    <div class="attachList">
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=12giEFjhCrmoEzpeaDVN7jCNBMpneoxY1&export=download">수강신청 정정원_겨울계절학기.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=17I2CByBour9dkNJCBxuc5eS3M3HrjjFf&export=download">2024학년도 겨울계절학기 안내문.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		    </div>
		</div>
		
	<div class="listBtnContainer"><a href="Notice.jsp" class="listBtn">목록</a></div>
	
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