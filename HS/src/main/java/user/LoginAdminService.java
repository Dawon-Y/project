// HTTP POST 요청을 처리하여 관리자의 로그인 요청을 처리하는 서블릿
// 클라이언트가 로그인 폼을 통해 입력한 사용자 ID와 비밀번호를 검증하고, 성공 여부에 따라 다음 동작을 수행
package user;

import java.util.ArrayList;
import java.util.List;

public class LoginAdminService {
    private List<User> users = new ArrayList<>();

	public LoginAdminService() {
		// 회원 정보 초기화
		User users5 = new User();
		users5.setUserName("남유진");
		users5.setUserTrack(".");
		users5.setUserGrade(".");
		users5.setUserBirth("1992.5.6");
		users5.setUserNum("010-1212-3434");
		users5.setUserId("114301");
		users5.setUserPw("NamYJ123");
		users.add(users5);
	
		User users6 = new User();
		users6.setUserName("지연재");
		users6.setUserTrack(".");
		users6.setUserGrade(".");
		users6.setUserBirth("1994.8.23");
		users6.setUserNum("010-5656-7878");
		users6.setUserId("114302");
		users6.setUserPw("Yeon456");
		users.add(users6);
		
		User users7 = new User();
		users7.setUserName("양다원");
		users7.setUserTrack(".");
		users7.setUserGrade(".");
		users7.setUserBirth("1990.5.16");
		users7.setUserNum("010-0101-2323");
		users7.setUserId("114300");
		users7.setUserPw("YangDW012");
		users.add(users7);
	}
	
	// 로그인 검증 메서드
    public boolean login(String userId, String userPw) {
        for (User user : users) {
            if (user.getUserId().equals(userId) && user.getUserPw().equals(userPw)) {
                return true; // 로그인 성공
            }
        }
        return false; // 로그인 실패
    }

    // 사용자 정보를 반환하는 메서드
    public User getUserDetails(String userId) {
        for (User user : users) {
            if (user.getUserId().equals(userId)) {
                return user; // 해당 ID에 해당하는 사용자 정보 반환
            }
        }
        return null; // 사용자 정보가 없으면 null 반환
    }
}
