<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    response.setContentType("text/plain");
    response.setHeader("Access-Control-Allow-Origin", "*"); // CORS 허용

    // ISO 8601 형식으로 변환
    java.time.format.DateTimeFormatter formatter = java.time.format.DateTimeFormatter.ISO_OFFSET_DATE_TIME;
    String serverTime = java.time.ZonedDateTime.now().format(formatter);

    response.getWriter().write(serverTime);
%>
