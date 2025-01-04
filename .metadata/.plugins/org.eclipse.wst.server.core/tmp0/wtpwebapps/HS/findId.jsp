<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, java.util.List" %>
<%
    // 사용자 데이터 초기화
    class User {
        private String userName;
        private String userBirth;
        private String userId;

        public User(String userName, String userBirth, String userId) {
            this.userName = userName;
            this.userBirth = userBirth;
            this.userId = userId;
        }

        public String getUserName() {
            return userName;
        }

        public String getUserBirth() {
            return userBirth;
        }

        public String getUserId() {
            return userId;
        }
    }

    // 사용자 리스트 초기화
    List<User> users = new ArrayList<>();
    users.add(new User("김철수", "20040101", "241234"));
    users.add(new User("김나연", "20030202", "234567"));
    users.add(new User("황민철", "20020303", "222468"));

    // 요청 파라미터에서 값 가져오기
    String name = request.getParameter("name");
    String birth = request.getParameter("birth");
    String foundId = null;

    // 사용자 검색 로직
    if (name != null && birth != null) {
        for (User user : users) {
            if (user.getUserName().equals(name) && user.getUserBirth().equals(birth)) {
                foundId = user.getUserId();
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
    <title>아이디 찾기</title>
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
        
        .textN {
            margin-right: 17px;
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
        <h2>아이디 찾기</h2>
        <form method="post">
            <div class="first">
                <label for="name" class="textN">이 름: </label>
                <input type="text" id="name" name="name" required placeholder="이름 입력">
            </div>
            
            <div class="second">
                <label for="birth">생년월일:</label>
                <input type="text" id="birth" name="birth" required placeholder="생년월일(8자리) 입력">
            </div>
            <button type="submit">ID/학번 찾기</button>
        </form>
        <div class="result">
            <% if (name != null && birth != null) { %>
                <% if (foundId != null) { %>
                    <p style="font-size: 15px;"><%= name %> 님의 ID/학번은 <a style="color: blue; font-size: 18px;"><%= foundId %></a>입니다.</p>
                <% } else { %>
                    <p style="color: red; text-align: center;">일치하는 사용자가 없습니다.</p>
                <% } %>
            <% } %>
        </div>
    </div>
</body>
</html>
