<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="temp.*" %>
<%
	// 1. 이전 폼의 사용자 입력값을 얻어오기
	int empno = Integer.parseInt(request.getParameter("empno"));
	String ename = request.getParameter("ename");
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String job = request.getParameter("job");
	int sal = Integer.parseInt(request.getParameter("sal"));
	
	// 2. EmpVO 멤버변수에 지정
	EmpVO vo= new EmpVO();
	vo.setEmpno(empno);
	vo.setName(ename);
	vo.setDeptno(deptno);
	vo.setJob(job);
	vo.setSal(sal);
	
	// 3. DB에 입력
	EmpDAO dao = EmpDAO.getInstance(); 
	dao.insert(vo);
	
	// getInstance() : 싱글턴패턴, 하나의 인스턴스만 가지고 공유해서 사용
	// 싱글턴패턴 : 생성자를 private로 선언하여 다른클래스에서 해당 클래스의 인스턴스를 new로 생성하지 못하게 하고,
	//			getInstance()함수를 통해서 인스턴스를 갖도록한다.
 
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 사원등록 </title>
</head>
<body>
	 성공적으로 입력되었지 DB에서 확인합니다.
	 <!-- 얻어온 입력값 입력 -->
	 사원번호 : <%= empno %> <br/>
	 사원명 : <%= ename %> <br/>
	 부서번혼 : <%= deptno %> <br/>
	 업무 : <%= job %> <br/>
	 월급 : <%= sal %> <br/>
</body>
</html>