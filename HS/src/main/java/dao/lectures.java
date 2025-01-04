package dao;

import java.util.ArrayList;
import dto.lecture;

public class lectures {
	
	// 기존 과목 객체들을 담을 arraylist 변수 생성 
	private ArrayList<lecture> lecturess = new ArrayList<lecture> (); 
	
	private static lectures instance = new lectures();
	
	public static lectures getInstance() { 
		return instance;
	}
	
	public lectures() { // 기존 과목들을 담아둘 함수 
		
		// 수강 과목 관련 (30개)  
		lecture HansungLectures1 = new lecture();
		lecture HansungLectures2 = new lecture();
		lecture HansungLectures3 = new lecture();
		lecture HansungLectures4 = new lecture();
		lecture HansungLectures5 = new lecture();
		lecture HansungLectures6 = new lecture();
		lecture HansungLectures7 = new lecture();
		lecture HansungLectures8 = new lecture();
		lecture HansungLectures9 = new lecture();
		lecture HansungLectures10 = new lecture();
		lecture HansungLectures11 = new lecture();
		lecture HansungLectures12 = new lecture();
		lecture HansungLectures13 = new lecture();
		lecture HansungLectures14 = new lecture();
		lecture HansungLectures15 = new lecture();
		lecture HansungLectures16 = new lecture();
		lecture HansungLectures17 = new lecture();
		lecture HansungLectures18 = new lecture();
		lecture HansungLectures19 = new lecture();
		lecture HansungLectures20 = new lecture();
		lecture HansungLectures21 = new lecture();
		lecture HansungLectures22 = new lecture();
		lecture HansungLectures23 = new lecture();
		lecture HansungLectures24 = new lecture();
		lecture HansungLectures25 = new lecture();
		lecture HansungLectures26 = new lecture();
		lecture HansungLectures27 = new lecture();
		lecture HansungLectures28 = new lecture();
		lecture HansungLectures29 = new lecture();
		lecture HansungLectures30 = new lecture();
		
		// 1학년 
		HansungLectures1.setLectureTrack("모바일소프트웨어");
		HansungLectures1.setLectureCode("CTE0001");
		HansungLectures1.setLectureCredit("3");
		HansungLectures1.setLectureGrade("1");
		HansungLectures1.setLectureName("컴퓨터프로그래밍");
		HansungLectures1.setLectureSort("전공기초");
		HansungLectures1.setLectureDivision("7");
		HansungLectures1.setLectureProf("정인환");
		HansungLectures1.setLectureClassRoom("상상관307");
		HansungLectures1.setLectureDay1("목요일");
		HansungLectures1.setLectureStart1("13:00");
		HansungLectures1.setLectureEnd1("15:00");
		HansungLectures1.setLectureDay2(" ");
		HansungLectures1.setLectureStart2(" ");
		HansungLectures1.setLectureEnd2(" ");
		HansungLectures1.setLectureInformation("본 과목은 컴퓨터공학 전공을 위한 전공기초 과목이다. 본 과목은 프로그래밍의 개념을 이해하고 프로그램 개발환경인 IDE(Integrated Development Environment)를 이용하여 프로그래밍 언어의 기초인 C언어 프로그램을 작성할 수 있도록 강의한다. C언어의 구성요소인 변수, 연산자, 자료형, 제어문, 반복문, 함수, 배열, 포인터, 구조체 그리고 동적할당에 대한 기본 개념과 문법이 포함된다. 최종적으로는 학생들이 C언어를 이용하여 현실 세계의 간단한 문제를 해결할 수 있는 능력을 갖추도록 한다.");
		HansungLectures1.setLecturePeople("10");
		// 본 과목은 컴퓨터공학 전공을 위한 전공기초 과목이다. 본 과목은 프로그래밍의 개념을 이해하고 프로그램 개발환경인 IDE(Integrated Development Environment)를 이용하여 프로그래밍 언어의 기초인 C언어 프로그램을 작성할 수 있도록 강의한다. C언어의 구성요소인 변수, 연산자, 자료형, 제어문, 반복문, 함수, 배열, 포인터, 구조체 그리고 동적할당에 대한 기본 개념과 문법이 포함된다. 최종적으로는 학생들이 C언어를 이용하여 현실 세계의 간단한 문제를 해결할 수 있는 능력을 갖추도록 한다.
	
		HansungLectures2.setLectureTrack("영미문학문화");
		HansungLectures2.setLectureCode("CTH0025");
		HansungLectures2.setLectureCredit("3");
		HansungLectures2.setLectureGrade("1");
		HansungLectures2.setLectureName("영화로 읽는 영미문화콘텐츠");
		HansungLectures2.setLectureSort("전공기초");
		HansungLectures2.setLectureDivision("A");
		HansungLectures2.setLectureProf("김혜윤");
		HansungLectures2.setLectureClassRoom("상상관605/상상관503");
		HansungLectures2.setLectureDay1("월요일");
		HansungLectures2.setLectureStart1("10:30");
		HansungLectures2.setLectureEnd1("12:00");
		HansungLectures2.setLectureDay2("목요일");
		HansungLectures2.setLectureStart2("12:00");
		HansungLectures2.setLectureEnd2("13:30");
		HansungLectures2.setLectureInformation("영화로 읽는 영미문화콘텐츠 과목은 전공기초 과목입니다. 영미권 영화를 중심으로 영미문화의 주요 주제를 소개하고 대표 문학 작품들을 함께 읽습니다 본 과목에서는 영국문화와 미국문화를 각각 관통하는 주요한 흐름, 주제, 역사, 개념 등을 재현해 낸 영화와 함께 다양한 영상 자료들을 살펴봅니다.");
		HansungLectures2.setLecturePeople("10");
		
		HansungLectures3.setLectureTrack("한국어교육");
		HansungLectures3.setLectureCode("CTH0027");
		HansungLectures3.setLectureCredit("3");
		HansungLectures3.setLectureGrade("1");
		HansungLectures3.setLectureName("한국어교육의 이해");
		HansungLectures3.setLectureSort("전공기초");
		HansungLectures3.setLectureDivision("N");
		HansungLectures3.setLectureProf("김윤주");
		HansungLectures3.setLectureClassRoom("상상관501");
		HansungLectures3.setLectureDay1("목요일");
		HansungLectures3.setLectureStart1("18:00");
		HansungLectures3.setLectureEnd1("19:30");
		HansungLectures3.setLectureDay2(" ");
		HansungLectures3.setLectureStart2(" ");
		HansungLectures3.setLectureEnd2(" ");
		HansungLectures3.setLectureInformation("외국인을 대상으로 하는 한국어교육은 모어가 한국어인 사람들을 대상으로 하는 국어교육과는 여러 측면에서 다르다. 이 과목에서는 한국어교육이 무엇인지, 한국어교육에서 다루는 문제에는 어떤 것들이 있는지, 국내외 한국어 교육의 현황이 어떠한지, 한국어교육을 위해 알아야 할 제반 지식과 방법에 대해 살펴본다.");
		HansungLectures3.setLecturePeople("10");
		
		HansungLectures4.setLectureTrack("역사문화콘텐츠");
		HansungLectures4.setLectureCode("CHT0023");
		HansungLectures4.setLectureCredit("3");
		HansungLectures4.setLectureGrade("1");
		HansungLectures4.setLectureName("역사콘텐츠의 이해");
		HansungLectures4.setLectureSort("전공기초");
		HansungLectures4.setLectureDivision("A");
		HansungLectures4.setLectureProf("박준철");
		HansungLectures4.setLectureClassRoom("탐구관");
		HansungLectures4.setLectureDay1("월요일");
		HansungLectures4.setLectureStart1("12:00");
		HansungLectures4.setLectureEnd1("13:30");
		HansungLectures4.setLectureDay2("목요일");
		HansungLectures4.setLectureStart2("10:30");
		HansungLectures4.setLectureEnd2("12:00");
		HansungLectures4.setLectureInformation("본 강좌는 역사콘텐츠 트랙을 전공하고자 하는 학생들을 위한 트랙기초과목이다. 역사콘텐츠의 개념은 과연 무엇인가? 역사콘텐츠를 전공하면 향후 어떤 분야에 진출할 수 있는가? 역사콘텐츠가 될 수 있는 이야기들은 어떤 것인가? 본 강좌는 이러한 질문들에 대한 해답을 제시하는데 그 목적이 있다.");
		HansungLectures4.setLecturePeople("10");

		HansungLectures5.setLectureTrack("한국무용전공");
		HansungLectures5.setLectureCode("CTH0010");
		HansungLectures5.setLectureCredit("3");
		HansungLectures5.setLectureGrade("1");
		HansungLectures5.setLectureName("무용기본실기");
		HansungLectures5.setLectureSort("전공기초");
		HansungLectures5.setLectureDivision("A");
		HansungLectures5.setLectureProf("정유정");
		HansungLectures5.setLectureClassRoom("낙산관103");
		HansungLectures5.setLectureDay1("월요일");
		HansungLectures5.setLectureStart1("12:00");
		HansungLectures5.setLectureEnd1("13:30");
		HansungLectures5.setLectureDay2("목요일");
		HansungLectures5.setLectureStart2("10:30");
		HansungLectures5.setLectureEnd2("12:00");
		HansungLectures5.setLectureInformation("1. 무용기본실기의 기술을 잘 수행할 수 있다. 2. 무용기본실기의 배경지식과 원리를 잘 알고 적용할 수 있다. 3.무용기본실기를 잘 하기 위한 태도와 예절을 잘 알고 할 수 있다.");
		HansungLectures5.setLecturePeople("10");
		
		// 4학년 
		HansungLectures6.setLectureTrack("모바일소프트웨어");
		HansungLectures6.setLectureCode("V020035");
		HansungLectures6.setLectureCredit("3");
		HansungLectures6.setLectureGrade("4");
		HansungLectures6.setLectureName("SW온캠퍼스인턴십");
		HansungLectures6.setLectureSort("전공선택");
		HansungLectures6.setLectureDivision("7");
		HansungLectures6.setLectureProf("한기준");
		HansungLectures6.setLectureClassRoom("탐구관301");
		HansungLectures6.setLectureDay1("화요일");
		HansungLectures6.setLectureStart1("12:00");
		HansungLectures6.setLectureEnd1("15:00");
		HansungLectures6.setLectureDay2(" ");
		HansungLectures6.setLectureStart2(" ");
		HansungLectures6.setLectureEnd2(" ");
		HansungLectures6.setLectureInformation("이 교과목은 기업의 현장 문제 해결을 목표로 하는 소프트웨어 개발 프로젝트 중심의 수업으로, 학생들은 다양한 소프트웨어 기술 스택을 활용하여 실무 능력을 배양할 수 있습니다. 프로젝트 팀 주도 학습을 통해 프로젝트 기획부터 구현까지의 전 과정을 경험하며, 기업 전문가의 멘토링을 통해 종합적인 소프트웨어 설계 및 개발 역량을 향상시킬 수 있습니다. 2024년 2학기는 코스닥 상장업체이자 생성형AI 전문기업인 마음에이아이에서 산업계의 수요에 맞는 프로젝트를 제공하고 이를 함께 해결하는 과정을 통해 실무 개발 능력을 함양합니다.");
		HansungLectures6.setLecturePeople("10");
	
		HansungLectures7.setLectureTrack("발레전공");
		HansungLectures7.setLectureCode("P020048");
		HansungLectures7.setLectureCredit("2");
		HansungLectures7.setLectureGrade("4");
		HansungLectures7.setLectureName("공연예술현장의 이해와 취업");
		HansungLectures7.setLectureSort("전공선택");
		HansungLectures7.setLectureDivision("A");
		HansungLectures7.setLectureProf("김남용");
		HansungLectures7.setLectureClassRoom("상상관601");
		HansungLectures7.setLectureDay1("금요일");
		HansungLectures7.setLectureStart1("09:00");
		HansungLectures7.setLectureEnd1("11:00");
		HansungLectures7.setLectureDay2(" ");
		HansungLectures7.setLectureStart2(" ");
		HansungLectures7.setLectureEnd2(" ");
		HansungLectures7.setLectureInformation("본 교과목은 무용전공 대학생들의 진로 개발 및 취업 증진을 위한 이론과 실습 병행 수업으로 무용전문인으로서 자신이 택해야 할 진로 및 직업에는 어떠한 것이 있는지 조사하고, 실제 현장 전문가들의 이야기와 실습을 통해 실무의 특성을 파악하는 활동으로 구성되어 있다. 취업을 위한 기본적인 준비사항과 더불어 무용분야의 특수한 지식과 기술을 덧붙여 준비된 전문무용인력으로 성장할 수 있도록 한다.");
		HansungLectures7.setLecturePeople("10");
		
		HansungLectures8.setLectureTrack("동양화전공");
		HansungLectures8.setLectureCode("P022001");
		HansungLectures8.setLectureCredit("3");
		HansungLectures8.setLectureGrade("4");
		HansungLectures8.setLectureName("포트폴리오세미나");
		HansungLectures8.setLectureSort("전공선택");
		HansungLectures8.setLectureDivision("A");
		HansungLectures8.setLectureProf("이지수");
		HansungLectures8.setLectureClassRoom("상상관701");
		HansungLectures8.setLectureDay1("금요일");
		HansungLectures8.setLectureStart1("15:00");
		HansungLectures8.setLectureEnd1("18:00");
		HansungLectures8.setLectureDay2(" ");
		HansungLectures8.setLectureStart2(" ");
		HansungLectures8.setLectureEnd2(" ");
		HansungLectures8.setLectureInformation("이 과목은 졸업을 앞둔 학생들이 자신의 작품세계를 효과적으로 소통하는 포트폴리오를 제작하여 졸업 이후 미술계에서 활동하기 위한 기초적인 기반을 마련하는 것을 목적으로 한다. 학생들은 ppt 파일로 제작한 포트폴리오를 제작 발표하고, 인터넷 상에 작가 사이트를 만들어 기본적인 소통의 장을 마련하도록 한다. 교수는 이 과정에서 학생들의 포트폴리오에 대한 조언을 하고 학생들은 포트폴리오 발표를 통해 서로의 작품세계에 대해 피드백을 주고 받으며 자신의 작품에 대한 작가의 artist’s statement 작성에 도움을 받게 된다.");
		HansungLectures8.setLecturePeople("10");
		
		HansungLectures9.setLectureTrack("게임그래픽디자인");
		HansungLectures9.setLectureCode("T027013");
		HansungLectures9.setLectureCredit("3");
		HansungLectures9.setLectureGrade("4");
		HansungLectures9.setLectureName("디자인특허와 아트상품제작");
		HansungLectures9.setLectureSort("전공필수");
		HansungLectures9.setLectureDivision("8");
		HansungLectures9.setLectureProf("하승완");
		HansungLectures9.setLectureClassRoom("창의관402");
		HansungLectures9.setLectureDay1("금요일");
		HansungLectures9.setLectureStart1("13:00");
		HansungLectures9.setLectureEnd1("16:00");
		HansungLectures9.setLectureDay2(" ");
		HansungLectures9.setLectureStart2(" ");
		HansungLectures9.setLectureEnd2(" ");
		HansungLectures9.setLectureInformation("이 수업은 [게임 그래픽 디자인 트랙 졸업작품] 준비 수업입니다. *디자인특허와 아트상품 제작 8,N으로 분반 된 수업입니다. (안광준 교수님 수업은 7반) *1트랙이 게임그래픽디자인 분들은 필수로 수강하고 졸업작품 전시를 하셔야 합니다. *다른 트랙 학생이 게임트랙 졸업전시를 원할 경우 1트랙 교수님의 허가를 받아야 합니다.(미허가시도 수강은 가능) -앞선 학기에 1차 심사를 통과하셨던 분들은 2차,3차 심사를 거쳐 최종 졸업작품 전시를 하게 됩니다. (겨울에 졸업) -처음 수업을 듣는 분들은 1차 심사과정부터 거치게 됩니다. (여름에 졸업) -\"게임 일러스트레이션 트랙 졸업작품 세부 지침\"을 참고하시고 자신이 설정한 게임 세계관에 맞춰 졸업작품을 준비합니다. -게임 그래픽 트랙 졸업작품 준비가 아닌 상태에서 수강하시는 분들은 개인의 포토폴리오를 만드시면 됩니다. 추상적이고 모호한 디자인은 지양하며 그래픽 퀄리티는 메이저 게임 개발사에서 통용될 높은 수준으로 제작되어야 합니다.");
		HansungLectures9.setLecturePeople("10");
		
		HansungLectures10.setLectureTrack("빅데이터");
		HansungLectures10.setLectureCode("V020030");
		HansungLectures10.setLectureCredit("3");
		HansungLectures10.setLectureGrade("4");
		HansungLectures10.setLectureName("인공지능");
		HansungLectures10.setLectureSort("전공선택");
		HansungLectures10.setLectureDivision("A");
		HansungLectures10.setLectureProf("강희중");
		HansungLectures10.setLectureClassRoom("공학관305");
		HansungLectures10.setLectureDay1("수요일");
		HansungLectures10.setLectureStart1("15:00");
		HansungLectures10.setLectureEnd1("16:30");
		HansungLectures10.setLectureDay2(" ");
		HansungLectures10.setLectureStart2(" ");
		HansungLectures10.setLectureEnd2(" ");
		HansungLectures10.setLectureInformation("인공지능에서의 문제해결을 위한 기법들과 효율적인 탐색방법, 지식의 표현과 처리를 위한 다양한 기법들을 다룬다. 불확실성하에서의 추론, 퍼지이론, 지식 베이스를 이용하는 전문가 시스템, 기계학습, 신경망 이론, 지능형 에이전트, 딥러닝 등에 대한 기본적인 내용을 공부하고 관련분야에 대한 실습을 병행한다.");
		HansungLectures10.setLecturePeople("10");
		
		// 2학년 과목 
		HansungLectures11.setLectureTrack("모바일소프트웨어");
		HansungLectures11.setLectureCode("V020007");
		HansungLectures11.setLectureCredit("3");
		HansungLectures11.setLectureGrade("2");
		HansungLectures11.setLectureName("객체지향언어2");
		HansungLectures11.setLectureSort("전공선택");
		HansungLectures11.setLectureDivision("7");
		HansungLectures11.setLectureProf("황기태");
		HansungLectures11.setLectureClassRoom("미래관 B104");
		HansungLectures11.setLectureDay1("수요일");
		HansungLectures11.setLectureStart1("15:00");
		HansungLectures11.setLectureEnd1("18:00");
		HansungLectures11.setLectureDay2(" ");
		HansungLectures11.setLectureStart2(" ");
		HansungLectures11.setLectureEnd2(" ");
		HansungLectures11.setLectureInformation("객체지향언어로서 자바의 문법 구조 등을 배우고, 자바 프로그램 작성 능력을 함양한다. 자바는 다른 언어와 달리 한 번 작성하면 모든 컴퓨터, 운영체제에 상관없이 실행 가능한 장점을 가지고 있어, 데스크 톱, 웹, 모바일 등 다양한 환경에서 사용된다. 이 과목에서는 자바 프로그래밍에 있어 필수적인 컬렉션을 배우고, 스윙을 이용하여 GUI 프로그램 작성 방법을 배운다. 이것을 통해 모든 GUI의 기본이 되는 이벤트 기반 프로그래밍을 이해하고 안드로이드나 C#, 자바스크립트 등 GUI 프로그램을 작성하는 기반도 마련할 수도 있다. 또한 멀티스레드를 다루어 3학년 웹프레임워크 등 고급 과목의 수강에 꼭 필요하고 세상에 활용되는 응용프로그램을 만드는 기반을 만든다. 기말 고사는 없으며, 9차부터 미니프로젝트를 단독으로 수행하여 16주차에 발표한다. 프로젝트의 주제는 중간고사 즈음에 공개한다. 수업을 거쳐 많은 학생들은 프로젝트를 통해 많은 지식을 쌓았다고 평가한다.");
		HansungLectures11.setLecturePeople("10");
	
		HansungLectures12.setLectureTrack("모바일소프트웨어");
		HansungLectures12.setLectureCode("V020008");
		HansungLectures12.setLectureCredit("3");
		HansungLectures12.setLectureGrade("2");
		HansungLectures12.setLectureName("데이터통신");
		HansungLectures12.setLectureSort("전공선택");
		HansungLectures12.setLectureDivision("C");
		HansungLectures12.setLectureProf("김동욱");
		HansungLectures12.setLectureClassRoom("공학관 305");
		HansungLectures12.setLectureDay1("화요일");
		HansungLectures12.setLectureStart1("15:00");
		HansungLectures12.setLectureEnd1("16:00");
		HansungLectures12.setLectureDay2(" ");
		HansungLectures12.setLectureStart2(" ");
		HansungLectures12.setLectureEnd2(" ");
		HansungLectures12.setLectureInformation("정보화 사회에서 현대인들은 PC, 랩탑, 휴대폰 기기를 이용한 네트워크 연결없이 생활하기 어렵고 따라서 통신 네트워크의 동작원리와 기술동향을 이해하는 것은필수적이다. 본 데이터 통신 과목에서는 유무선 네트워크를 이용한 정보 전송의 규칙과 기술을 공부한다. 이 과목에서는 데이터 통신의 용어와 기술을 공부하여 향후 실전네트워크 기술 개발에 필요한 기초 지식을 습득한다. 인터넷 및 통신 프로토콜의 개념과 동작 원리를 이해하고, 미래 초연결형 사회의 필수적인 요소인 유무선 네트워크의최신 기술 동향을 파악하는 능력을 기른다.");
		HansungLectures12.setLecturePeople("10");
		
		HansungLectures13.setLectureTrack("발레전공");
		HansungLectures13.setLectureCode("P020032");
		HansungLectures13.setLectureCredit("3");
		HansungLectures13.setLectureGrade("2");
		HansungLectures13.setLectureName("무용과 음악");
		HansungLectures13.setLectureSort("전공선택");
		HansungLectures13.setLectureDivision("A");
		HansungLectures13.setLectureProf("이지혜");
		HansungLectures13.setLectureClassRoom("상상관 607");
		HansungLectures13.setLectureDay1("목요일");
		HansungLectures13.setLectureStart1("12:00");
		HansungLectures13.setLectureEnd1("15:00");
		HansungLectures13.setLectureDay2(" ");
		HansungLectures13.setLectureStart2(" ");
		HansungLectures13.setLectureEnd2(" ");
		HansungLectures13.setLectureInformation("다양한 음악의 역사적 유형 및 특성을 이해하고 그러한 음악을 무용에서 어떻게 효율적으로 활용할 수 있는지 배운다. 따라서 무용과 음악의 직접적인 상관관계를 구체적으로 이해시키고 음악사용과 관련하여 실질적으로 안무하는데 도움을 준다.");
		HansungLectures13.setLecturePeople("10");

		HansungLectures14.setLectureTrack("기계설계");
		HansungLectures14.setLectureCode("V030007");
		HansungLectures14.setLectureCredit("3");
		HansungLectures14.setLectureGrade("2");
		HansungLectures14.setLectureName("공학수학2");
		HansungLectures14.setLectureSort("전공선택");
		HansungLectures14.setLectureDivision("A");
		HansungLectures14.setLectureProf("이상열");
		HansungLectures14.setLectureClassRoom("공학관 516");
		HansungLectures14.setLectureDay1("월요일");
		HansungLectures14.setLectureStart1("15:00");
		HansungLectures14.setLectureEnd1("16:30");
		HansungLectures14.setLectureDay2(" ");
		HansungLectures14.setLectureStart2(" ");
		HansungLectures14.setLectureEnd2(" ");
		HansungLectures14.setLectureInformation("공업수학2는 공학 전반, 특히 기계공학의 핵심을 이루는 중요한 과목이다. 이 과정에서는 벡터와 행렬의 개념을 시작으로 선형대수학의 기초를 다루게 돼. 이는 기계공학의 4대 역학을 이해하는 데 필수적인 수학적 도구를 제공한다. 또한 푸리에 급수, 적분, 변환과 편미분방정식도 배우게 되는데, 이것들은 복잡한 공학 문제를 해석하고 해결하는 데 꼭 필요한 개념들이다. 이 과목을 통해 학생들은 실제 물리 현상을 수학적으로 표현하고 분석하는 능력을 키우게 된다. 결국 공업수학2는 미래 공학자들에게 문제 해결 능력과 창의적 사고의 기반을 제공하는 중요한 과목이라고 할 수 있다.");
		HansungLectures14.setLecturePeople("10");
	
		HansungLectures15.setLectureTrack("기업경영");
		HansungLectures15.setLectureCode("R010063");
		HansungLectures15.setLectureCredit("3");
		HansungLectures15.setLectureGrade("2");
		HansungLectures15.setLectureName("기업가정신");
		HansungLectures15.setLectureSort("전공선택");
		HansungLectures15.setLectureDivision("A");
		HansungLectures15.setLectureProf("최희선");
		HansungLectures15.setLectureClassRoom("탐구관 402");
		HansungLectures15.setLectureDay1("목요일");
		HansungLectures15.setLectureStart1("16:30");
		HansungLectures15.setLectureEnd1("18:00");
		HansungLectures15.setLectureDay2(" ");
		HansungLectures15.setLectureStart2(" ");
		HansungLectures15.setLectureEnd2(" ");
		HansungLectures15.setLectureInformation("본 과목은 대학이 전략적으로 추구하는 예비 기업가를 양성하기 위한 실천 전략 과목으로 경영학 및 창업 이론을 학습하고 실제 사업 준비 과정을 학습하는 실용 경영학이다. Entrepreneurship(기업가 정신)과 경영학의 기본개념과 주요 방법론을 학습하고 이해함으로써 기업가 정신을 함양하고, 기업가 이론 및 혁신 이론을 기초로 여러 창업 조직 및 창업 기업가들의 특성과 성공 요인을 분석한다. 아울러 경영학 각 분야의 기초 지식을 바탕으로 기업 창업의 기초 능력을 습득함을 목표로 한다. 구체적으로는 경영 환경 변화, 기업가 정신과 기업가 이론, 혁신 이론, 기업가 정신과 관련된 4차 산업혁명 이해와 글로벌 기업 분석, ESG 등이 포함되며, 기업가의 성공 및 실패 사례를 토대로 관련 주제들을 연구하여 도전 정신을 가진 기업가로서 역량을 배양하는 것을 목표로 한다.");
		HansungLectures15.setLecturePeople("10");
	
		HansungLectures16.setLectureTrack("부동산");
		HansungLectures16.setLectureCode("R017004");
		HansungLectures16.setLectureCredit("3");
		HansungLectures16.setLectureGrade("2");
		HansungLectures16.setLectureName("부동산공법론");
		HansungLectures16.setLectureSort("전공필수");
		HansungLectures16.setLectureDivision("A");
		HansungLectures16.setLectureProf("민태욱");
		HansungLectures16.setLectureClassRoom("상상관 507");
		HansungLectures16.setLectureDay1("수요일");
		HansungLectures16.setLectureStart1("13:30");
		HansungLectures16.setLectureEnd1("15:00");
		HansungLectures16.setLectureDay2(" ");
		HansungLectures16.setLectureStart2(" ");
		HansungLectures16.setLectureEnd2(" ");
		HansungLectures16.setLectureInformation("부동산에 관한 공법의 주요 내용을 학습함.");
		HansungLectures16.setLecturePeople("10");

		HansungLectures17.setLectureTrack("게임그래픽디자인");
		HansungLectures17.setLectureCode("T020004");
		HansungLectures17.setLectureCredit("3");
		HansungLectures17.setLectureGrade("2");
		HansungLectures17.setLectureName("디지털 스튜디오");
		HansungLectures17.setLectureSort("전공선택");
		HansungLectures17.setLectureDivision("A");
		HansungLectures17.setLectureProf("김효용");
		HansungLectures17.setLectureClassRoom("창의관 409");
		HansungLectures17.setLectureDay1("목요일");
		HansungLectures17.setLectureStart1("10:00");
		HansungLectures17.setLectureEnd1("11:00");
		HansungLectures17.setLectureDay2(" ");
		HansungLectures17.setLectureStart2(" ");
		HansungLectures17.setLectureEnd2(" ");
		HansungLectures17.setLectureInformation("디지털 기술을 이용하여 영상애니메이션 분야에 필요한 콘텐츠 제작 및 프로젝트 개발을 수행할 수 있도록 디지털관련 이론 및 실습을 통해 연구한다. 이와 함께 생성형AI 활용을 통해 오리지널 아이디어를 생성하고 제작과정의 효율성을 증대시키고, 콘텐츠 및 디자인 품질을 향상시킨다.");
		HansungLectures17.setLecturePeople("10");

		HansungLectures18.setLectureTrack("전자");
		HansungLectures18.setLectureCode("V031013");
		HansungLectures18.setLectureCredit("3");
		HansungLectures18.setLectureGrade("2");
		HansungLectures18.setLectureName("신호 및 시스템");
		HansungLectures18.setLectureSort("전공필수");
		HansungLectures18.setLectureDivision("A");
		HansungLectures18.setLectureProf("호광춘");
		HansungLectures18.setLectureClassRoom("상상관 701");
		HansungLectures18.setLectureDay1("금요일");
		HansungLectures18.setLectureStart1("13:00");
		HansungLectures18.setLectureEnd1("15:00");
		HansungLectures18.setLectureDay2(" ");
		HansungLectures18.setLectureStart2(" ");
		HansungLectures18.setLectureEnd2(" ");
		HansungLectures18.setLectureInformation("본 과목은 선형시스템에 기초한 신호 및 시스템 이론과 디지털 신호 처리를 위한 기초를 강의한다. 선형시스템과 convolution, Fourier 변환 및 샘플링 정리 등을 공부하고, Discrete Fourier 변환(DFT), Fast Fourier 변환(FFT)을 학습한다.");
		HansungLectures18.setLecturePeople("10");
		
		HansungLectures19.setLectureTrack("인테리어디자인");
		HansungLectures19.setLectureCode("T020014");
		HansungLectures19.setLectureCredit("3");
		HansungLectures19.setLectureGrade("2");
		HansungLectures19.setLectureName("3D MAX");
		HansungLectures19.setLectureSort("전공선택");
		HansungLectures19.setLectureDivision("A");
		HansungLectures19.setLectureProf("베이진");
		HansungLectures19.setLectureClassRoom("진리관 210");
		HansungLectures19.setLectureDay1("목요일");
		HansungLectures19.setLectureStart1("11:00");
		HansungLectures19.setLectureEnd1("12:00");
		HansungLectures19.setLectureDay2(" ");
		HansungLectures19.setLectureStart2(" ");
		HansungLectures19.setLectureEnd2(" ");
		HansungLectures19.setLectureInformation("본 과목에서는 디자인 표현에 필요한 스케치업 프로그램에서 모델링, 엔스케이프 렌더링 과정을 기초에서부터 고급모델링까지 습득할 수 있다. 건축, 인테리어뿐만 아니라 가구와 제품 디자인까지 다양하게 표현하고 활용할 수 있는 역량을 키운다.");
		HansungLectures19.setLecturePeople("10");
	
		HansungLectures20.setLectureTrack("공공행정");
		HansungLectures20.setLectureCode("R010050");
		HansungLectures20.setLectureCredit("3");
		HansungLectures20.setLectureGrade("2");
		HansungLectures20.setLectureName("행정과 IT활용");
		HansungLectures20.setLectureSort("전공선택");
		HansungLectures20.setLectureDivision("N");
		HansungLectures20.setLectureProf("정진택");
		HansungLectures20.setLectureClassRoom("상상관 306");
		HansungLectures20.setLectureDay1("목요일");
		HansungLectures20.setLectureStart1("18:00");
		HansungLectures20.setLectureEnd1("20:30");
		HansungLectures20.setLectureDay2(" ");
		HansungLectures20.setLectureStart2(" ");
		HansungLectures20.setLectureEnd2(" ");
		HansungLectures20.setLectureInformation("AI기술의 확산이 행정에 미치는 영향을 직접 학생들이 체험하도록 함으로써 향후 정보사회에서 이루어질 행정 전문인력 양성에 있음.");
		HansungLectures20.setLecturePeople("10");
	
		// 3학년 
		HansungLectures21.setLectureTrack("모바일소프트웨어");
		HansungLectures21.setLectureCode("V023005");
		HansungLectures21.setLectureCredit("3");
		HansungLectures21.setLectureGrade("3");
		HansungLectures21.setLectureName("가상현실");
		HansungLectures21.setLectureSort("전공선택");
		HansungLectures21.setLectureDivision("8");
		HansungLectures21.setLectureProf("김진모");
		HansungLectures21.setLectureClassRoom("공학관 201");
		HansungLectures21.setLectureDay1("월요일");
		HansungLectures21.setLectureStart1("12:00");
		HansungLectures21.setLectureEnd1("15:00");
		HansungLectures21.setLectureDay2(" ");
		HansungLectures21.setLectureStart2(" ");
		HansungLectures21.setLectureEnd2(" ");
		HansungLectures21.setLectureInformation("가상현실 시스템에 대하여 전반적으로 이해하고, 가상현실을 구성하는 여러 기술적 요소들을 학습한다. 사용자가 컴퓨터와 대화를 하듯이 입력과 출력을 할 수 있는 프로그램을 다루는 기술로 가상현실 환경에서 사실적인 대화형 콘텐츠 및 시스템을 제작하는 기초적인 방법을 다룬다. 진화하는 실감 미디어 환경에 맞추어 가상현실 기술을 활용하여 오감을 통해 체험할 수 있는 대화형 실감 미디어 어플리케이션 제작에 필요한 기초적인 이론 및 실무 기술을 다룬다.");
		HansungLectures21.setLecturePeople("10");

		HansungLectures22.setLectureTrack("문학문화콘텐츠");
		HansungLectures22.setLectureCode("Y020028");
		HansungLectures22.setLectureCredit("3");
		HansungLectures22.setLectureGrade("3");
		HansungLectures22.setLectureName("공연·엔터테인먼트 산업의 실재");
		HansungLectures22.setLectureSort("전공선택");
		HansungLectures22.setLectureDivision("A");
		HansungLectures22.setLectureProf("이규린");
		HansungLectures22.setLectureClassRoom("탐구관301");
		HansungLectures22.setLectureDay1("화요일");
		HansungLectures22.setLectureStart1("17:00");
		HansungLectures22.setLectureEnd1("18:00");
		HansungLectures22.setLectureDay2(" ");
		HansungLectures22.setLectureStart2(" ");
		HansungLectures22.setLectureEnd2(" ");
		HansungLectures22.setLectureInformation("공연, 엔터테인먼트 산업 전반의 흐름을 실제 사례를 중심으로 강의한다. 공연 및 엔터테인먼트 산업의 흐름과 장르별 특성을 알아보고, 뮤지컬을 중심으로 기획 제작 과정의 프로세스 사례를 강의한다. 뮤지컬을 주 사례로 콘텐츠가 탄생하는데 있어서 필요한 사전 준비 과정부터 창제작, 유통 및 마케팅 단계까지 각 단계에 필요한 기획과 흐름을 이해한다. 궁극적으로 가상의프로젝트 기획서와 제작 계획서 작성 실습을 통해 실무적 소양을기른다.");
		HansungLectures22.setLecturePeople("10");

		HansungLectures23.setLectureTrack("패션디자인");
		HansungLectures23.setLectureCode("T012007");
		HansungLectures23.setLectureCredit("3");
		HansungLectures23.setLectureGrade("3");
		HansungLectures23.setLectureName("패션CAD");
		HansungLectures23.setLectureSort("전공필수");
		HansungLectures23.setLectureDivision("7");
		HansungLectures23.setLectureProf("박준철");
		HansungLectures23.setLectureClassRoom("상상관607");
		HansungLectures23.setLectureDay1("수요일");
		HansungLectures23.setLectureStart1("12:00");
		HansungLectures23.setLectureEnd1("15:00");
		HansungLectures23.setLectureDay2(" ");
		HansungLectures23.setLectureStart2(" ");
		HansungLectures23.setLectureEnd2(" ");
		HansungLectures23.setLectureInformation("국내는 물론 전세계적으로 의류산업에서 사용하는Pattern 전문용 Apparel CAD System을 이용하여 의류제품의Pattern 제작 및 수정 기법을 익히며, 3D 가상봉제 실습과정을통하여 다양한 Apparel Sample 제작 및 3D 가상 착의 과정도단계별로 배우게 된다.");
		HansungLectures23.setLecturePeople("10");

		HansungLectures24.setLectureTrack("게임그래픽디자인");
		HansungLectures24.setLectureCode("T021007");
		HansungLectures24.setLectureCredit("3");
		HansungLectures24.setLectureGrade("3");
		HansungLectures24.setLectureName("커뮤니케이션그래픽");
		HansungLectures24.setLectureSort("전공필수");
		HansungLectures24.setLectureDivision("B");
		HansungLectures24.setLectureProf("장경국");
		HansungLectures24.setLectureClassRoom("창의관502");
		HansungLectures24.setLectureDay1("화요일");
		HansungLectures24.setLectureStart1("15:00");
		HansungLectures24.setLectureEnd1("18:00");
		HansungLectures24.setLectureDay2(" ");
		HansungLectures24.setLectureStart2(" ");
		HansungLectures24.setLectureEnd2(" ");
		HansungLectures24.setLectureInformation("커뮤니케이션에 필요한 시각적 메시지를 통합적으로 사고하고 그에 필요한 그래픽디자인을 새로운 매체와 상황에맞게 시각적 그래픽으로 표현한다. 스마트폰이나 인터넷, 광고, 상업공간 등의 장소와 매체에 커뮤니케이션그래픽을 효과적으로적용한다.");
		HansungLectures24.setLecturePeople("10");
			
		HansungLectures25.setLectureTrack("법&정책");
		HansungLectures25.setLectureCode("R016007");
		HansungLectures25.setLectureCredit("3");
		HansungLectures25.setLectureGrade("3");
		HansungLectures25.setLectureName("리더십개발론");
		HansungLectures25.setLectureSort("트랙필수");
		HansungLectures25.setLectureDivision("N");
		HansungLectures25.setLectureProf("김경희");
		HansungLectures25.setLectureClassRoom("탐구관102");
		HansungLectures25.setLectureDay1("화요일");
		HansungLectures25.setLectureStart1("17:00");
		HansungLectures25.setLectureEnd1("19:00");
		HansungLectures25.setLectureDay2(" ");
		HansungLectures25.setLectureStart2(" ");
		HansungLectures25.setLectureEnd2(" ");
		HansungLectures25.setLectureInformation("리더십개발을 위한 다양한 접근법과 실제 사례를종합하여 개인의 리더십 역량을 개발하고 효과적인 의사소통, 갈등관리, 동기부여방법을 비롯하여 조직의 문제해결과 조직관리역량을 증진시킨다.");
		HansungLectures25.setLecturePeople("10");
			 
		HansungLectures26.setLectureTrack("AI응용학과");
		HansungLectures26.setLectureCode("Y030022");
		HansungLectures26.setLectureCredit("3");
		HansungLectures26.setLectureGrade("3");
		HansungLectures26.setLectureName("클라우드 컴퓨팅");
		HansungLectures26.setLectureSort("전공선택");
		HansungLectures26.setLectureDivision("7");
		HansungLectures26.setLectureProf("이관우");
		HansungLectures26.setLectureClassRoom("공학관314");
		HansungLectures26.setLectureDay1("금요일");
		HansungLectures26.setLectureStart1("9:00");
		HansungLectures26.setLectureEnd1("12:00");
		HansungLectures26.setLectureDay2(" ");
		HansungLectures26.setLectureStart2(" ");
		HansungLectures26.setLectureEnd2(" ");
		HansungLectures26.setLectureInformation("클라우드 컴퓨팅 과목은 현대 IT 환경에서 필수적인 클라우드 기술의 원리, 구조, 활용 방법을 학습하는 것을 목표로 합니다. 학생들은 클라우드 컴퓨팅의 기본 개념, 서비스 모델, 배포 모델, 주요 클라우드 서비스 제공자의 플랫폼을 이해하고 실제로 활용할 수 있는 능력을 갖추게 됩니다.");
		HansungLectures26.setLecturePeople("10");
		 
		HansungLectures27.setLectureTrack("VMD·전시디자인");
		HansungLectures27.setLectureCode("T026011");
		HansungLectures27.setLectureCredit("3");
		HansungLectures27.setLectureGrade("3");
		HansungLectures27.setLectureName("전시디자인 스튜디오2");
		HansungLectures27.setLectureSort("전공필수");
		HansungLectures27.setLectureDivision("A");
		HansungLectures27.setLectureProf("이옥재");
		HansungLectures27.setLectureClassRoom("창의관604");
		HansungLectures27.setLectureDay1("화요일");
		HansungLectures27.setLectureStart1("10:00");
		HansungLectures27.setLectureEnd1("13:00");
		HansungLectures27.setLectureDay2(" ");
		HansungLectures27.setLectureStart2(" ");
		HansungLectures27.setLectureEnd2(" ");
		HansungLectures27.setLectureInformation("정보화 시대로 들어서면서 개인의 일상과 사회 전반에 걸쳐 관심과 가치의 유형과 방향이 급격하게 변화하고 있다. 디지털 매체는 시공간의 제한을 벗어나 실시간으로 다양하고 광범위한 정보를 제공하고 있으며 사용자는 질적인 만족을 추구한다. 이러한 배경에서 개인의 일상으로부터 사회적, 문화적, 경제적 영역에 이르기까지 가치 있는 콘텐츠를 탐색하고 새로운 문제를 정의하며 이를 교환 가치가 있는 상태로 전환하는 전시 기획및 실천 과정을 습득함으로써 시대적 요구에 대응하는 디자인 역량을 갖추도록 한다.");
		HansungLectures27.setLecturePeople("10");
		
		HansungLectures28.setLectureTrack("웹공학");
		HansungLectures28.setLectureCode("V024005");
		HansungLectures28.setLectureCredit("3");
		HansungLectures28.setLectureGrade("3");
		HansungLectures28.setLectureName("웹프레임워크1");
		HansungLectures28.setLectureSort("전공필수");
		HansungLectures28.setLectureDivision("C");
		HansungLectures28.setLectureProf("심규현");
		HansungLectures28.setLectureClassRoom("공학관309");
		HansungLectures28.setLectureDay1("목요일");
		HansungLectures28.setLectureStart1("13:30");
		HansungLectures28.setLectureEnd1("15:00");
		HansungLectures28.setLectureDay2(" ");
		HansungLectures28.setLectureStart2(" ");
		HansungLectures28.setLectureEnd2(" ");
		HansungLectures28.setLectureInformation("React는 사용자 인터페이스를 만들기 위한 라이브러리입니다. React는 Vue.js, Angular와 함께 웹 프론트엔드분야에서 활용도가 높습니다. 컴포넌트를 활용하는 React는 재사용성이 높고, Virtual DOM을 사용함으로써 동적인 웹페이지를 보다 효율적으로 렌더링할 수 있습니다. 본 교과목에서는JavaScript의 최신 문법을 토대로 React를 활용하는개발에서필요한 주요 개념을 이해하고, 효과적으로 사용자 인터페이스를구현하는 웹 프론트엔드 프로젝트를 수행합니다.");
		HansungLectures28.setLecturePeople("10");
			 
		HansungLectures29.setLectureTrack("한국어교육");
		HansungLectures29.setLectureCode("P013011");
		HansungLectures29.setLectureCredit("3");
		HansungLectures29.setLectureGrade("3");
		HansungLectures29.setLectureName("한국어 교재 연구");
		HansungLectures29.setLectureSort("전공필수");
		HansungLectures29.setLectureDivision("7");
		HansungLectures29.setLectureProf("김윤주");
		HansungLectures29.setLectureClassRoom("상상관501");
		HansungLectures29.setLectureDay1("목요일");
		HansungLectures29.setLectureStart1("16:30");
		HansungLectures29.setLectureEnd1("18:00");
		HansungLectures29.setLectureDay2(" ");
		HansungLectures29.setLectureStart2(" ");
		HansungLectures29.setLectureEnd2(" ");
		HansungLectures29.setLectureInformation("이 강좌에서는 한국어 교재의 개념과 역할에 대해고찰하고, 교재 개발 원리, 교재 분석과 평가, 개작과 활용 방안등에 대해 다양한 이론을 검토한 후 실제 한국어 교육 현장에서사용되고 있는 다양한 한국어 교재들을 대상으로 이론을 적용하고 분석해 본다. 또한 학습한 내용을 기반으로 실제 한국어 교재구성 방안을 모색해 본다.");
		HansungLectures29.setLecturePeople("10");
		
		HansungLectures30.setLectureTrack("모바일소프트웨어");
		HansungLectures30.setLectureCode("V020017");
		HansungLectures30.setLectureCredit("3");
		HansungLectures30.setLectureGrade("3");
		HansungLectures30.setLectureName("네트워크프로그래밍");
		HansungLectures30.setLectureSort("전공선택");
		HansungLectures30.setLectureDivision("A");
		HansungLectures30.setLectureProf("신성");
		HansungLectures30.setLectureClassRoom("상상관304");
		HansungLectures30.setLectureDay1("목요일");
		HansungLectures30.setLectureStart1("15:00");
		HansungLectures30.setLectureEnd1("16:30");
		HansungLectures30.setLectureDay2(" ");
		HansungLectures30.setLectureStart2(" ");
		HansungLectures30.setLectureEnd2(" ");
		HansungLectures30.setLectureInformation("네트워크프로그래밍 과목에서는 네트워크와TCP/IP 기본 이론을 배우고 다양한 기기간 데이터 교환을 할 수있도록 소켓프로그래밍을 강의한다. 소켓프로그래밍(Socket Programming)은 클라이언트/서버 환경하에서 데이터 교환을위한 응용프로그램에서 표준으로 사용되는 프로그래밍 기법이다. 본 과목에서는 Java 프로그래밍 언어를 사용하여 네트워크 애플리케이션을 개발하는 데 필요한 지식과 기술을 강의한다.");
		HansungLectures30.setLecturePeople("10");
		
		lecturess.add(HansungLectures1);
		lecturess.add(HansungLectures2);
		lecturess.add(HansungLectures3);
		lecturess.add(HansungLectures4);
		lecturess.add(HansungLectures5);
		lecturess.add(HansungLectures11);
		lecturess.add(HansungLectures12);
		lecturess.add(HansungLectures13);
		lecturess.add(HansungLectures14);
		lecturess.add(HansungLectures15);
		lecturess.add(HansungLectures16);
		lecturess.add(HansungLectures17);
		lecturess.add(HansungLectures18);
		lecturess.add(HansungLectures19);
		lecturess.add(HansungLectures20);
		lecturess.add(HansungLectures21);
		lecturess.add(HansungLectures22);
		lecturess.add(HansungLectures23);
		lecturess.add(HansungLectures24);
		lecturess.add(HansungLectures25);
		lecturess.add(HansungLectures26);
		lecturess.add(HansungLectures27);
		lecturess.add(HansungLectures28);
		lecturess.add(HansungLectures29);
		lecturess.add(HansungLectures30);
		lecturess.add(HansungLectures6);
		lecturess.add(HansungLectures7);
		lecturess.add(HansungLectures8);
		lecturess.add(HansungLectures9);
		lecturess.add(HansungLectures10);
		
	}
	
	public ArrayList<lecture> getAllLectures() {
		return lecturess;
	}
	
	// 3. arraylist의 요소를 추가하는 add 함수 -> 입력 받은 인자 값을 불러와, 객체 하나를 추가 함. 
	public void addLecture(String t1, String t2, String t3, String t4, String t5, String t6, String t7, String t8, String t9, String t10, String t11, String t12, String t13, String t14, String t15, String t17, String t18) { 
		lecture addLectures = new lecture();
		
		addLectures.setLectureTrack(t1);
		addLectures.setLectureCode(t2);
		addLectures.setLectureCredit(t3);
		addLectures.setLectureGrade(t4);
		addLectures.setLectureName(t5);
		addLectures.setLectureSort(t6);
		addLectures.setLectureDivision(t7);
		addLectures.setLectureProf(t8);
		addLectures.setLectureClassRoom(t9);
		addLectures.setLectureDay1(t10);
		addLectures.setLectureStart1(t11);
		addLectures.setLectureEnd1(t12);
		addLectures.setLectureDay2(t13);
		addLectures.setLectureStart2(t14);
		addLectures.setLectureEnd2(t15);
		addLectures.setLectureInformation(t17);
		addLectures.setLecturePeople(t18);
		
		lecturess.add(addLectures);
	}
	
	// 4. arraylist의 요소를 업데이트 하는 update 함수 ( 재 실행 되면 다시 원상 복구됨 ) -> 존재하는 인덱스 번호의 요소들을 업데이트하기 때문에 인덱스 번호와 다른 데이터들을 인자로 불러와 수정함. 
	public void updateLecture(int index, String t1, String t2, String t3, String t4, String t5, String t6, String t7, String t8, String t9, String t10, String t11, String t12, String t13, String t14, String t15, String t17, String t18) {
		
		lecture updateLectures = lecturess.get(index); 
		
		updateLectures.setLectureTrack(t1);
		updateLectures.setLectureCode(t2);
		updateLectures.setLectureCredit(t3);
		updateLectures.setLectureGrade(t4);
		updateLectures.setLectureName(t5);
		updateLectures.setLectureSort(t6);
		updateLectures.setLectureDivision(t7);
		updateLectures.setLectureProf(t8);
		updateLectures.setLectureClassRoom(t9);
		updateLectures.setLectureDay1(t10);
		updateLectures.setLectureStart1(t11);
		updateLectures.setLectureEnd1(t12);
		updateLectures.setLectureDay2(t13);
		updateLectures.setLectureStart2(t14);
		updateLectures.setLectureEnd2(t15);
		updateLectures.setLectureInformation(t17);
		updateLectures.setLecturePeople(t18);
		
	}
	
	// 5. arraylist의 요소를 삭제하는 delete 함수 ( 재 실행 되면 다시 원상 복구됨 ) -> 존재하는 인덱스 번호의 요소를 삭제하기 때문에 숫자를 인자로 넣어줌. 
	public void removeLecture(int number) {
		lecturess.remove(number);
	}
	
}
