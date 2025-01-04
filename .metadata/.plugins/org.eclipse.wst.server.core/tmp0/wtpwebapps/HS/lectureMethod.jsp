<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="dto.lecture"%>
<%@ page import="dao.lectures"%>
<%@ page import="java.util.*"%>

<%
lectures dao = lectures.getInstance();
ArrayList<lecture> lecturess = dao.getAllLectures();

String t1 = request.getParameter("t1");
String t2 = request.getParameter("t2");
String t3 = request.getParameter("t3");
String t4 = request.getParameter("t4");
String t5 = request.getParameter("t5");
String t6 = request.getParameter("t6");
String t7 = request.getParameter("t7");
String t8 = request.getParameter("t8");
String t9 = request.getParameter("t9");
String t10 = request.getParameter("t10");
String t11 = request.getParameter("t11");
String t12 = request.getParameter("t12");
String t13 = request.getParameter("t13");
String t14 = request.getParameter("t14");
String t15 = request.getParameter("t15");
String t17 = request.getParameter("t17");
String t18 = request.getParameter("t18");

String indexStr = request.getParameter("EAD"); // 수정과 삭제 버튼 클릭 시 출력되는 인덱스 번호를 받아옴. 

try {
	int index = Integer.parseInt(indexStr);
	int index2;
	if(index<1000) {
		dao.updateLecture(index,t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t17,t18);
	}
	if(index>=1000) {
		if(index<10000) {
			index2 = index-1000;
			dao.removeLecture(index2);	
		}
		else {
			index2 = index-10000;
			dao.removeLecture(index2);
		}
	}
}
catch(NumberFormatException e) {
	dao.addLecture(t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t17,t18);
}

response.sendRedirect("lectureManager.jsp");
%>
