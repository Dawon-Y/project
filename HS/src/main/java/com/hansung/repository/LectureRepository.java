package com.hansung.repository;

import java.util.ArrayList;
import java.util.List;
import com.hansung.dto.Lecture;

public class LectureRepository {
    private List<Lecture> lectures;

    // 초기 데이터 설정
    public LectureRepository() {
        lectures.add(new Lecture("CTE0001", "컴퓨터프로그래밍", "7", "전공기초", "정인환", "목 상상관307 13:00-15:00", 10));
        lectures.add(new Lecture("T027013", "디자인특허와 아트상품제작", "8", "전공필수", "하승완", "금 창의관402 13:00-16:00", 10));
        lectures.add(new Lecture("V020010", "알고리즘", "7", "전선", "유상미", "월 상상관 305 10-11시", 10));
        lectures.add(new Lecture("P020032", "무용과 음악", "A", "전선", "이지혜", "목 상상관 607 12-15시", 10));
        
        lectures.add(new Lecture("CTH0025", "영화로 읽는 영미문화콘텐츠", "A", "전공기초", "김혜윤", "월 상상관605/목 상상관503 10:30-12:00/12:00-13:30", 10));
        lectures.add(new Lecture("CTH0027", "한국어교육의 이해", "N", "전공기초", "김윤주", "목 상상관501 18:00-19:30", 10));
        lectures.add(new Lecture("CHT0023", "역사콘텐츠의 이해", "A", "전공기초", "박준철", "월 탐구관 12:00-13:30/목 탐구관 10:30-12:00", 10));
        lectures.add(new Lecture("CTH0010", "무용기본실기", "A", "전공기초", "정유정", "월 낙산관103 12:00-13:30/목 낙산관103 10:30-12:00", 10));
        lectures.add(new Lecture("V020035", "SW온캠퍼스인턴십", "7", "전공선택", "한기준", "화 탐구관301 12:00-15:00", 10));
        lectures.add(new Lecture("P020048", "공연예술현장의 이해와 취업", "A", "전공선택", "김남용", "금 상상관601 09:00-11:00", 10));
        lectures.add(new Lecture("P022001", "포트폴리오세미나", "A", "전공선택", "이지수", "금 상상관701 15:00-18:00", 10));
        
        lectures.add(new Lecture("V020030", "인공지능", "A", "전공선택", "강희중", "수 공학관305 15:00-16:30", 10));
        lectures.add(new Lecture("V020007", "객체지향언어2", "7", "전공선택", "황기태", "수 미래관 B104 15:00-18:00", 10));
        lectures.add(new Lecture("V020008", "데이터통신", "C", "전공선택", "김동욱", "화 공학관 305 15:00-16:00", 10));
        lectures.add(new Lecture("V030007", "공학수학2", "A", "전공선택", "이상열", "월 공학관 516 15:00-16:30", 10));
        lectures.add(new Lecture("R010063", "기업가정신", "A", "전공선택", "최희선", "목 탐구관 402 16:30-18:00", 10));
        lectures.add(new Lecture("R017004", "부동산공법론", "A", "전공필수", "민태욱", "수 상상관 507 13:30-15:00", 10));
        lectures.add(new Lecture("T020004", "디지털 스튜디오", "A", "전공선택", "김효용", "목 창의관 409 10:00-11:00", 10));
        lectures.add(new Lecture("V031013", "신호 및 시스템", "A", "전공필수", "호광춘", "금 상상관 701 13:00-15:00", 10));
        lectures.add(new Lecture("T020014", "3D MAX", "A", "전공선택", "베이진", "목 진리관 210 11:00-12:00", 10));
        lectures.add(new Lecture("R010050", "행정과 IT활용", "N", "전공선택", "정진택", "목 상상관 306 18:00-20:30", 10));
        lectures.add(new Lecture("V023005", "가상현실", "8", "전공선택", "김진모", "월 공학관 201 12:00-15:00", 10));
        lectures.add(new Lecture("Y020028", "공연·엔터테인먼트 산업의 실재", "A", "전공선택", "이규린", "화 탐구관301 17:00-18:00", 10));
        lectures.add(new Lecture("T012007", "패션CAD", "7", "전공필수", "박준철", "수 상상관607 12:00-15:00", 10));
        lectures.add(new Lecture("T021007", "커뮤니케이션그래픽", "B", "전공필수", "장경국", "화 창의관502 15:00-18:00", 10));
        lectures.add(new Lecture("R016007", "리더십개발론", "N", "트랙필수", "김경희", "화 탐구관102 17:00-19:00", 10));
        lectures.add(new Lecture("Y030022", "클라우드 컴퓨팅", "7", "전공선택", "이관우", "금 공학관314 9:00-12:00", 10));
        lectures.add(new Lecture("T026011", "전시디자인 스튜디오2", "A", "전공필수", "이옥재", "화 창의관604 10:00-13:00", 10));
        lectures.add(new Lecture("V024005", "웹프레임워크1", "C", "전공필수", "심규현", "목 공학관309 13:30-15:00", 10));
        lectures.add(new Lecture("P013011", "한국어 교재 연구", "7", "전공필수", "김윤주", "목 상상관501 16:30-18:00", 10));
        lectures.add(new Lecture("V020017", "네트워크프로그래밍", "A", "전공선택", "신성", "목 상상관304 15:00-16:30", 10));
    }

    // 모든 강의 반환
    public List<Lecture> getLectures() {
        return lectures;
    }

    // 특정 코드로 강의 찾기
    public Lecture findLectureByCode(String code) {
        for (Lecture lecture : lectures) {
            if (lecture.getCode().equals(code)) {
                return lecture;
            }
        }
        return null;
    }
}
