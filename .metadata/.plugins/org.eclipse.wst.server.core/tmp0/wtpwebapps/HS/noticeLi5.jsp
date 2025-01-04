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
<link rel="stylesheet" href="css/noticeLi5.css">
<title>공지사항</title>
</head>
<body>

<div class="contents">
	<h2>공지사항</h2>
	<div class="notice">
	<hr class= "black">
		<div class="subject">
		<h3>2024학년도 겨울계절학기 학점교류 안내</h3>
		<p>작성일 2024.10.17 | 작성자 학사지원팀</p>
	<hr>
		</div>
	</div>
	<div class="write">
		<h4>2024학년도 겨울계절학기 학점교류 안내</h4>
		
<div class="mainContents">
  <form>
    <table>
      <thead>
        <tr>
          <th colspan="3">학점교류 대학 안내 (총 27개 대학)</th>
        </tr>
        <tr>
          <td colspan="3">
            <p>가톨릭대학교, 건국대학교, 강서대학교, 광운대학교, 덕성여자대학교, 동국대학교, 동덕여자대학교, 명지대학교, 부경대학교, <br> 
               삼육대학교, 상명대학교, 서경대학교, 서울과학기술대학교, 서울시립대학교, 서울여자대학교, 성공회대학교, 성신여자대학교, <br> 
               세종대학교, 숙명여자대학교, 숭실대학교, 중앙대학교, 추계예술대학교, 한국외국어대학교, 홍익대학교, 한경국립대학교, <br> 
               한국방송통신대학교, 한국항공대학교</p>
            <p class="green">※ 현재('24. 11. 22. 기준) 신청가능 대학 볼드표기하였으며, 최신화되므로 매번 공지 확인 요청바람.</p>
          </td>
        </tr>
          <tr><td colspan="3">신청자격</td></tr>
          <tr class="leftAli">
          	<td colspan="3">
            	<p class="blue">① 재학기간의 학업성적 평균평점이 3.0 이상이면서 1학년 이상 수료자이며 학칙에 의해 징계받은 사실이 없는 학생 (휴학생 불가)</p>
            	<p>② 학점교류를 희망하는 대학의 조건에 충족하는 학생</p>
            </td>
          </tr>
        <tr><td colspan="3">신청학점</td></tr>
        <tr><td colspan="3"><p><a class="blue">6학점</a> (학점교류 신청학점은 교내 수강신청학점과 합산되어 계산됨)</p></td></tr>
        <tr><td colspan="3">성적 처리 방법</td></tr>
        <tr class="leftAli"><td colspan="3">
            <p>학점교류로 이수한 과목에 대한 성적 처리는 다음과 같이 진행함.</p>
			<div class="lineLow">
			<p>- 학기가 끝난 후 각 소속 대학으로부터 100점 만점의 원점수를 기재한 성적 공문 접수.</p>
            <p>- 해당 성적을 본교의 절대평가 성적 변환 기준에 따라 등급으로 환산하여 성적 부여.</p>
            <p>- 학점교류로 수강한 과목은 재수강이 불가함.</p>
			</div>
          </td>
        </tr>
        <tr><td colspan="3">신청방법</td></tr>
        <tr class="leftAli"><td colspan="3">
            <ol>
              <li>종합정보시스템 → 교무 → ‘학점교류 신청’ 메뉴 선택</li>
              <li>‘교류대학’ 선택 후 ‘교과구분’ 선택</li>
              <li>교류대학 ‘신청과목’ 입력 (전공과목 수강시 전공 체크, 교양과목 수강시 교양 체크)</li>
              <li>‘신청’ 클릭하면 저장됨</li>
            </ol>
          </td>
        </tr>
      </thead>
      <tbody>
      <tr>
	      <td rowspan="22">신청기간<a class="blue"> (학점교류요청접수 순)</a></td>
	      <td>학교명</td>
	      <td>기간</td>
	  </tr>
        <tr>
          <td>1. 국립부경대학교</td>
          <td>10월 17일 15시 ~ 10월 31일 15시</td>
        </tr>
        <tr>
          <td>2. 한국항공대학교</td>
          <td>10월 17일 15시 ~ 10월 21일 15시</td>
        </tr>
        <tr>
          <td>3. 동국대학교</td>
          <td>10월 17일 15시 ~ 11월 4일 13시</td>
        </tr>
        <tr>
          <td>4. 숭실대학교</td>
          <td>10월 18일 15시 ~ 11월 22일 15시</td>
        </tr>
        <tr>
          <td>5. 서울시립대학교</td>
          <td>10월 21일 15시 ~ 11월 4일 13시</td>
        </tr>
        <tr>
          <td>6. 세종대학교</td>
          <td>10월 22일 15시 ~ 11월 18일 10시</td>
        </tr>
        <tr>
          <td>7. 동덕여자대학교</td>
          <td>10월 23일 13시 ~ 11월 7일 10시</td>
        </tr>
        <tr>
          <td>8. 덕성여자대학교</td>
          <td>10월 23일 15시 ~ 10월 30일 15시</td>
        </tr>
        <tr>
          <td>9. 숙명여자대학교</td>
          <td>10월 28일 13시 ~ 11월 1일 15시</td>
        </tr>
        <tr>
          <td>10. 한국외국어대학교</td>
          <td>10월 30일 16시 ~ 11월 13일 15시</td>
        </tr>
        <tr>
          <td>11. 중앙대학교</td>
          <td>10월 31일 13시 ~ 11월 11일 15시</td>
        </tr>
        <tr>
          <td>12. 상명대학교</td>
          <td>11월 1일 13시 ~ 11월 12일 10시</td>
        </tr>
        <tr>
          <td>13. 건국대학교</td>
          <td>11월 1일 15시 ~ 11월 13일 13시</td>
        </tr>
        <tr>
          <td>14. 홍익대학교</td>
          <td>11월 4일 13시 ~ 11월 18일 9시(선착순 5명)</td>
        </tr>
        <tr>
          <td>15. 한경국립대학교</td>
          <td>11월 6일 13시 ~ 11월 8일 9시</td>
        </tr>
        <tr>
          <td>16. 성신여자대학교</td>
          <td>11월 6일 13시 ~11월 13일 13시</td>
        </tr>
        <tr>
          <td>17. 가톨릭대학교</td>
          <td>11월 6일 15시 ~ 11월 11일 9시</td>
        </tr>
        <tr>
          <td>18. 서경대학교</td>
          <td>11월 11일 16시 ~ 11월 18일 9시</td>
        </tr>   
        <tr>
          <td>19. 삼육대학교</td>
          <td>11월 12일 16시 ~ 11월 14일 15시</td>
        </tr>
        <tr>
          <td>20. 성공회대학교</td>
          <td>11월 14일 15시 ~ 11월 18일 15시</td>
        </tr>
        <tr>
          <td>21. 명지대학교</td>
          <td>11월 15일 17시 ~ 11월 20일 9시</td>
        </tr>     
      <tr>
      <td style="text-align: center;"><p class="blue">제출서류</p></td>
      <td colspan="2" class="leftAli2">
        <p class="bold">전공으로 인정받고자 하는 경우: 전공학점 인정요청서</p>
        <p>- 전공학점 인정요청서: 종합정보시스템에서 출력 → 본인 서명 → 학과장/학장 결재(트랙사무실 방문)</p>
        <p class="bold">교양 과목을 수강하고자 하는 경우: 교양학점 인정요청서</p>
        <p>- 교양학점 인정요청서: 첨부파일 다운로드 → 본인 서명 → 학부장/학장 결재(상상력교양대학 방문)</p>
        <p class="bold">개인정보 수집 및 이용에 대한 동의서</p>
        <p>- 첨부파일 양식 출력 → 본인 서명 → 학사지원팀 제출</p>
      </td>
      </tr>
      <tr>
      <td style="text-align: center;"><p>제출처</p></td>
      <td colspan="2" class="leftAli2">
      	<p>우촌관 301호 학사지원팀 방문 / 이메일(haksa@hansung.ac.kr) 제출</p>
      	<p>※ 이메일 제출은 반드시 전화로 서류 수신여부를 확인바람</p>
      </td>
      </tr>
      <tr>
      <td style="text-align: center;"><p>제출기한</p></td>
      <td colspan="2" class="leftAli">
      	<p>2024학년도 겨울학기 개강 전까지</p>
      </td>
      </tr>
      </tbody>
    </table>
  </form>
  
  <div class="notice2">
  <p>※ 각 대학별 안내사항은 첨부파일 참고 바랍니다.</p>
  <p>※ 각 대학별 공문을 수신하는대로 위 내용은 계속 업데이트 예정입니다.</p>
  <p>※ 학점교류 신청기간(상단 참조: 대학별)을 각 대학별 학점교류생 추천기간(첨부파일 내 표기)보다 2~3일 일찍 마감하는 이유는 학생들이 제출한 서류 내용을 점검하고 해당 대학에 학점교류생을 추천하기 위해 필요한 학사지원팀의 내부절차를 진행하기 위함이니 학생분들의 양해 바랍니다.</p>
  <p class="blue">※ 2025. 02. 졸업예정자의 경우 학점교류대학에서 성적이 1월 셋째주까지 우리대학으로 송부되어야 해당 과목까지 포함하여 졸업사정이 이루어질 수 있습니다. 졸업예정자는 이를 학점교류대학에 직접 확인하여 졸업에 문제가 없도록 준비하기 바랍니다.</p>
  <p>※ 문의 : 학사지원팀(02-760-4219) / 우촌관 301호</p>
  </div>
  
  <div class="attach">
		    <div class="left">첨부파일</div>
		    <div class="attachList">
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1ca6k8ECCP9Uq95Qd8-p8z-ragomG_o5n&export=download">양식_개인정보 수집 및 이용에 대한 동의서.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1gk4k4bU3JP9dSN1jMvTHcJaQchtahzaU&export=download">(국립부경대학교)2024학년도 국립부경대학교 동계 계절수업 수학 안내.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=12QADFIFhdIrgqwx850Wqt-XZEq7KgClV&export=download">(한국항공대학교)2024학년도 동계 계절학기 학점교류 안내.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1iesLmQfGG3FYh9UUiCEOf6v2X32pQfTF&export=download">(한국항공대학교)2024-동계 학점교류 교과목표.xlsx <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1Mc7duK-ZB9JYX-tB8us9oswK89ryRYLb&export=download">(동국대학교)2024학년도 겨울계절학기 학점교류 수학 안내문.pdf  <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1SZgp3T18r0EQVLbWX50mqnr9t02TnOEO&export=download">(숭실대학교)2024학년도 겨울계절제 숭실대학교 학점교류 신청 안내.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=19r0Ns76N90G1ps-RRYt0IQSLbiF8BOCn&export=download">(서울시립대학교)겨울계절수업 수강안내 및 유의사항.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=16zw1PwfZto1QBmOvlwn_qVio5DjJ8CK7&export=download">(세종대학교)2024학년도 동계 계절학기 세종대학교 학점교류 안내.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1cFfbPgnAvhtLnmBtzM-wxkQS6B-jBEfp&export=download">(동덕여자대학교)2024학년도 동계계절학기 동덕여자대학교 학점교류 신청 안내문.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=16VkYJQ1wYZUd-PnlfiZdGLKRfTILWEs9&export=download">(동덕여자대학교)2024학년도 동계계절학기 동덕여자대학교 개설 강좌 목록.xlsx <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1qYWF2NtzqAsZM6kKUylThtmlVCOt2h1h&export=download">(덕성여자대학교)2024학년도_겨울계절학기_덕성여자대학교_학점교류_신청_안내문.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1b7EM8tSqYxEs3BQzDiWWCAl4JhXdBSug&export=download">(덕성여자대학교)포털가입_및_이메일_생성_매뉴얼.pptx  <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1XGJ8JYTciSNks0rCMULnhdh6GHctp2hw&export=download">(숙명여자대학교)2024학년도 겨울계절학기 숙명여자대학교 학점교류 안내문.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1GgSnalygFHKjpgRsCYTSWbDuqZpnlfEG&export=download">(숙명여자대학교)2024-겨울계절 수강신청 매뉴얼.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1rG0x6W00wnPvMMQUZ_ObOIn9HXOO96RW&export=download">(한국외국어대학교)2024학년도 겨울계절학기 수강 안내문.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1liemc4Gt-qh3hIlX0ChmqfrHHEQRePbM&export=download">(중앙대학교)2024학년도 동계 계절학기 중앙대학교 학점교류 안내.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=11B--jz8kRQWmxCB4iA95PsPfXObYCC9J&export=download">(상명대학교)2024학년도 동계 계절수업 학점교류 시행 안내.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1K2Px0eUr4p4zpGZEeJwi4Z90I9B1fkjX&export=download">(건국대학교)2024학년도동계계절학기학점교류안내.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=11kYI9q3sMHGdmvhATjJB87MhGeD24TLZ&export=download">(홍익대학교)2024학년도 동계계절학기 학점교류 안내.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1_Onw1t7ATZ1_Yv31c23GcpRTMuJ2akF6&export=download">(한경국립대학교)2024년 동계 계절학기 학점교류 안내.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=10scms8gGXSLttP8IH2-31UGL_T5kqIGD&export=download">(성신여자대학교)2024학년도 겨울계절수업 학점교류생 수강신청 안내문.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1-XRoRE2r3gPuDrQHdKznN3URWsATcV4y&export=download">(가톨릭대학교)2024-겨울계절학기 학점교류 안내.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1SjaDo4HixgJ4AyqUS4dRt8AQSNs_00kC&export=download">(가톨릭대학교)2024-겨울계절학기 개설과목 목록.xlsx <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1M8S37xA6yMGHoM07eDqo9e2F0nXqaNSk&export=download">(서경대학교)2024학년도 동계 계절학기 학점교류 신청방법 안내.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1d7XMCTohxBLpjQMKEtmEqsR_sHzneW1v&export=download">(서경대학교)개인정보수집이용동의서(국내학점교류).pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=11zWF9p3ObX9bTu2U2ZXwTAK5DTXB-5MV&export=download">(삼육대학교)2024학년도 2학기 동계 계절학기 학점교류 안내문.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=195PeiVXELvouWsTP-MfiVIIYbUHeh10x&export=download">(성공회대학교)2024학년도 겨울계절학기 개설과목(학점교류).pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1LOPWFn4dIsGDOBMZvfh032ab4I2eAX-S&export=download">(성공회대학교)2024학년도 겨울계절학기 학점교류 안내문.pdf <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=17rvSOY7jw0CQgue8X53wQPQl21NirQMY&export=download">(명지대학교)학점교류 안내문.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=15ILCtg3-zagV5_EoSmC3PN9I3Uyszhzz&export=download">(명지대학교)개설교과목 목록-24-동계.xlsx <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		        <p>- <a href="https://drive.usercontent.google.com/u/3/uc?id=1rlSz4_fpK9Xl5YbCvNYH4TQc8xqBp69j&export=download">양식_교양학점인정요청서.hwp <img src="img/attach.png" alt="바로가기 아이콘"></a></p>
		    </div>
		</div>
		<div class="listBtnContainer"><a href="Notice.jsp" class="listBtn">목록</a></div>
	</div>
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