package com.hansung.dto;

public class Lecture {
    private String code, name, division, sort, professor, time;
    private int remainingSeats;

    // 생성자
    public Lecture(String code, String name, String division, String sort, String professor, String time, int remainingSeats) {
        this.code = code;
        this.name = name;
        this.division = division;
        this.sort = sort;
        this.professor = professor;
        this.time = time;
        this.remainingSeats = remainingSeats;
    }

    // Getter 및 Setter 메서드
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDivision() {
        return division;
    }

    public void setDivision(String division) {
        this.division = division;
    }
    
    public String getSort() {
        return sort;
    }

    public void setSort(String sort) {
        this.sort = sort;
    }
    
    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getRemainingSeats() {
        return remainingSeats;
    }

    public void setRemainingSeats(int remainingSeats) {
        this.remainingSeats = remainingSeats;
    }

    // 강의 신청 메서드
    public boolean register() {
        if (remainingSeats > 0) {
            remainingSeats--;
            return true;
        }
        return false;
    }
}
