<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%
    // 사용자 데이터 초기화
    class User {
        private String userId;
        private String userPhone;
        private String userPw;

        public User(String userId, String userPhone, String userPw) {
            this.userId = userId;
            this.userPhone = userPhone;
            this.userPw = userPw;
        }

        public String getUserId() {
            return userId;
        }

        public String getUserPhone() {
            return userPhone;
        }

        public String getUserPw() {
            return userPw;
        }
    }

    // 사용자 리스트 초기화
    List<User> users = new ArrayList<>();
    users.add(new User("114300", "010-5656-7878", "YangDW012"));
    users.add(new User("114301", "010-1212-3434", "NamYJ123"));
    users.add(new User("114302", "010-5656-7878", "Yeon456"));

    // 요청 파라미터에서 값 가져오기
    String userId = request.getParameter("id");
    String phone = request.getParameter("phone");
    String foundPw = null;

    // 사용자 검색 로직
    if (userId != null && phone != null) {
        for (User user : users) {
            if (user.getUserId().equals(userId) && user.getUserPhone().equals(phone)) {
                foundPw = user.getUserPw();
                break;
            }
        }
    }
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>비밀번호 찾기</title>
    <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }
        .container {
            margin: auto;
            width: 300px;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        
        h2 {
        margin-left: 8%;
        }
        
        form {
            margin-left:8%;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
            padding-top: 5px;
            padding-right: 10px;
        }
        
        input {
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        
        .first {
            display: flex;
            float: left;
            width: 90%;
        }
        
        .second {
            display: flex;
            float: left;
        }
        
        button {
            width: 90%;
            padding: 10px;
            background-color: #204B8F;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            text-align: center;
        }

        .result {
            margin-top: 15px;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>비밀번호 찾기</h2>
        <form method="post">
            <div class="first">
                <label for="id">아이디:</label>
                <input type="text" id="id" name="id" required placeholder="아이디 입력">
            </div>
            
            <div class="second">
                <label for="phone">연락처:</label>
                <input type="text" id="phone" name="phone" required placeholder="연락처 입력(- 포함)">
            </div>
            <button type="submit">비밀번호 찾기</button>
        </form>
        <div class="result">
            <% if (userId != null && phone != null) { %>
                <% if (foundPw != null) { %>
                    <p style="font-size: 15px;"><%= userId %> 님의 비밀번호는 <a style="color: blue; font-size: 18px;"><%= foundPw %></a>입니다.</p>
                <% } else { %>
                    <p style="color: red; text-align: center;">일치하는 사용자가 없습니다.</p>
                <% } %>
            <% } %>
        </div>
    </div>
</body>
</html>
