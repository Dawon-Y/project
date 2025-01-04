package user;

import java.util.ArrayList;
import java.util.List;

public class LoginService {
    private List<User> users = new ArrayList<>();

    public LoginService() {
        // 회원 정보 초기화
        User users1 = new User();
        users1.setUserName("김철수");
        users1.setUserTrack("모바일소프트웨어");
        users1.setUserGrade("1");
        users1.setUserBirth("2004.1.1");
        users1.setUserNum("010-1111-1111");
        users1.setUserId("241234");
        users1.setUserPw("kim_chul_soo");
        users.add(users1);

        User users2 = new User();
        users2.setUserName("김나연");
        users2.setUserTrack("발레전공");
        users2.setUserGrade("2");
        users2.setUserBirth("2003.2.2");
        users2.setUserNum("010-2222-2222");
        users2.setUserId("234567");
        users2.setUserPw("kim_na_yeon");
        users.add(users2);

        User users3 = new User();
        users3.setUserName("황민철");
        users3.setUserTrack("패션디자인전공");
        users3.setUserGrade("3");
        users3.setUserBirth("2002.3.3");
        users3.setUserNum("010-3333-3333");
        users3.setUserId("222468");
        users3.setUserPw("Hwang_min_chul");
        users.add(users3);

        User users4 = new User();
        users4.setUserName("최은수");
        users4.setUserTrack("법정책");
        users4.setUserGrade("4");
        users4.setUserBirth("2001.4.4");
        users4.setUserNum("010-4444-4444");
        users4.setUserId("333333");
        users4.setUserPw("Choi_eun_soo");
        users.add(users4);
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
