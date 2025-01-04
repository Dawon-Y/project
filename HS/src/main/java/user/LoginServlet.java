package user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 로그인 서비스를 처리하는 객체
    private LoginService loginService = new LoginService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 폼에서 전달된 ID와 비밀번호 가져오기
        String userId = request.getParameter("userName");
        String userPw = request.getParameter("userPassword");

        // 로그인 검증
        if (loginService.login(userId, userPw)) {
            // 로그인 성공 시
            HttpSession session = request.getSession(); // 세션 생성

            // 사용자 정보를 가져와 세션에 저장
            User user = loginService.getUserDetails(userId); // DB에서 사용자 정보 조회
            if (user != null) {
                session.setAttribute("userName", user.getUserName());
                session.setAttribute("userTrack", user.getUserTrack());
                session.setAttribute("userGrade", user.getUserGrade());
                session.setAttribute("userId", user.getUserId());

                // 사용자 타입 저장 (학생)
                session.setAttribute("userType", "student");

                // 로그인 상태 저장
                session.setAttribute("isLoggedIn", true);

                // 로그인 후 학생 메인 페이지로 리디렉션
                response.sendRedirect("LogIn.jsp");
                return;
            } else {
                // 사용자 정보 조회 실패 시
                request.setAttribute("message", "사용자 정보를 불러올 수 없습니다.");
                request.getRequestDispatcher("main.jsp").forward(request, response);
                return;
            }
        } else {
            // 로그인 실패 시
            request.setAttribute("message", "아이디 또는 비밀번호가 잘못되었습니다.");
            request.getRequestDispatcher("main.jsp").forward(request, response);
        }
    }
}
