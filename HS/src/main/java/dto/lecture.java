package dto;
import java.util.ArrayList; // ArrayList 관련 패키지 임포트 

import dao.lectures;

public class lecture { // 강의를 구성하는 요소를 담은 lecture 클래스 생성 
	
	// 1. 강의 정보를 구성하는 요소들을 private 변수로 선언.
	private String lectureTrack; // 강의 트랙
	private String lectureCode; // 강의 코드
	private String lectureCredit; 	// 강의 학점 
	private String lectureGrade; 	// 강의 학년 
	private String lectureName;	// 강의 이름 
	private String lectureSort; // 강의 종류 
	private String lectureDivision; // 강의 분반 
	private String lectureProf; // 강의 교수 
	private String lectureClassRoom; // 강의실  
	private String lectureDay1;// 강의 날짜1
	private String lectureStart1; // 수업 시작 시간 1 
	private String lectureEnd1; // 수업 종료시간 1
	private String lectureDay2; // 강의 날짜2 
	private String lectureStart2; // 수업 시작 시간 2
	private String lectureEnd2; // 수업 종료 시간 2
	private String lectureInformation; // 강의 설명 ( 계획서에 포함될 내용 ) 
	private String lecturePeople; // 잔여인원
	
	// 생성자 클래스 생성 
	public lecture() {
		super(); // 자기 자신을 가리킴. 
	}
	 
	// 1-1. set : 요소들에 붙이는 함수 ( 인자와 값이 전달 됐을 때, 해당 요소들을 변경해주는 함수 ) 
	public void setLectureTrack(String lectureTrack) { // 강의 트랙 
		this.lectureTrack = lectureTrack;
	}
	public void setLectureCode(String lectureCode) { // 강의 코드 
		this.lectureCode = lectureCode;
	}
	public void setLectureCredit(String lectureCredit) { // 강의 학점  
		this.lectureCredit = lectureCredit;
	}
	public void setLectureGrade(String lectureGrade) { // 강의 학년 
		this.lectureGrade = lectureGrade;
	}
	public void setLectureName(String lectureName) { // 강의 이름 
		this.lectureName = lectureName;
	}
	public void setLectureSort(String lectureSort) { // 강의 종류 
		this.lectureSort = lectureSort;
	}
	public void setLectureDivision(String lectureDivision) { // 강의 분반 
		this.lectureDivision = lectureDivision;
	}
	public void setLectureProf(String lectureProf) { // 강의 교수 
		this.lectureProf = lectureProf;
	}
	public void setLectureClassRoom(String lectureClassRoom) { // 강의실 
		this.lectureClassRoom = lectureClassRoom;
	}
	public void setLectureDay1(String lectureDay1) { // 강의 날짜1
		this.lectureDay1 = lectureDay1;
	} 
	public void setLectureStart1(String lectureStart1) { // 강의 시작 시간1
		this.lectureStart1 = lectureStart1;
	}
	public void setLectureEnd1(String lectureEnd1) { // 강의 종료 시간1
		this.lectureEnd1 = lectureEnd1;
	}
	public void setLectureDay2(String lectureDay2) { // 강의 날짜2
		this.lectureDay2 = lectureDay2;
	}
	public void setLectureStart2(String lectureStart2) { // 강의 시작 시간2
		this.lectureStart2= lectureStart2;
	}
	public void setLectureEnd2(String lectureEnd2) { // 강의 종료 시간2
		this.lectureEnd2 = lectureEnd2;
	}
	public void setLectureInformation(String lectureInformation) { // 강의 설명 
		this.lectureInformation = lectureInformation;
	}
	public void setLecturePeople(String lecturePeople) { // 잔여 인원 
		this.lecturePeople = lecturePeople;
	}
	
	// 1-2. get : 요소들을 가져오는 함수
	public String getLectureTrack() { return lectureTrack; } // 강의 트랙 
	public String getLectureCode() { return lectureCode; } // 강의 코드 
	public String getLectureCredit() { return lectureCredit; } // 강의 학점 
	public String getLectureGrade() { return lectureGrade; } // 강의 학년 
	public String getLectureName() { return lectureName; } // 강의 이름 
	public String getLectureSort() { return lectureSort; } // 강의 종류 
	public String getLectureDivision() { return lectureDivision;} // 강의 분반 
	public String getLectureProf() { return lectureProf; } // 강의 교수 
	public String getLectureClassRoom() { return lectureClassRoom; } // 강의실 
	public String getLectureDay1() { return lectureDay1; } // 강의 날짜1
	public String getLectureStart1() { return lectureStart1;} // 강의 시작 시간1
	public String getLectureEnd1() { return lectureEnd1; } // 강의 종료 시간1
	public String getLectureDay2() { return lectureDay2; } // 강의 날짜2
	public String getLectureStart2() { return lectureStart2; } // 강의 시작 시간2
	public String getLectureEnd2() { return lectureEnd2; } // 강의 종료 시간2
	public String getLectureInformation() { return lectureInformation; } // 강의 정보 
	public String getLecturePeople() { return lecturePeople; } // 잔여 인원 
	
}
