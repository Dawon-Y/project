// 로그인 검증과 사용자 정보를 관리하는 서비스 클래스
// 사용자 인증 및 사용자 정보 제공

package user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/LoginAdminServlet")
public class LoginAdminServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // 로그인 서비스를 처리하는 객체
    private LoginAdminService loginAdmin = new LoginAdminService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 폼에서 전달된 ID와 비밀번호 가져오기
        String userId = request.getParameter("userName");
        String userPw = request.getParameter("userPassword");

        // 로그인 검증
        if (loginAdmin.login(userId, userPw)) {
            // 로그인 성공 시
            HttpSession session = request.getSession(); // 세션 생성

            // 사용자 정보를 가져와 세션에 저장
            User user = loginAdmin.getUserDetails(userId); // DB에서 사용자 정보 조회
            if (user != null) {
                session.setAttribute("userName", user.getUserName());
                session.setAttribute("userId", user.getUserId());

                // 사용자 타입 저장 (관리자)
                session.setAttribute("userType", "admin");

                // 로그인 상태 저장
                session.setAttribute("isLoggedIn", true);

                // 로그인 후 관리자 메인 페이지로 리디렉션
                response.sendRedirect("LoginAdmin.jsp");
                return;
            } else {
                // 사용자 정보 조회 실패 시
                request.setAttribute("message", "사용자 정보를 불러올 수 없습니다.");
                request.getRequestDispatcher("Admin.jsp").forward(request, response);
                return;
            }
        } else {
            // 로그인 실패 시
            request.setAttribute("message", "아이디 또는 비밀번호가 잘못되었습니다.");
            request.getRequestDispatcher("Admin.jsp").forward(request, response);
        }
    }
}
