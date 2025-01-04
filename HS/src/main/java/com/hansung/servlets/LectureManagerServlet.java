package com.hansung.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.hansung.repository.LectureRepository;
import com.hansung.dto.Lecture;

import java.util.List;


public class LectureManagerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private LectureRepository lectureRepository;

    @Override
    public void init() throws ServletException {
        lectureRepository = new LectureRepository();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String lectureCode = request.getParameter("lectureCode");
        String division = request.getParameter("division");

        // LectureRepository를 통해 과목 검색
        Lecture lecture = lectureRepository.findLectureByCode(lectureCode);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        if (lecture != null && lecture.getDivision().equals(division)) {
            if (lecture.getRemainingSeats() > 0) {
                lecture.register(); // 잔여 좌석 감소 
                response.getWriter().write("{\"message\": \"수강신청 완료!\", \"lecture\": \"" + lecture.getName() + "\"}");
            } else {
                response.getWriter().write("{\"message\": \"수강신청 실패! 잔여 좌석이 없습니다.\"}");
            }
        } else {
            response.getWriter().write("{\"message\": \"수강신청 실패!\"}");
        }
    }
    
}


