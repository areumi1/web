<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="guest.model.*,guest.service.*" %>   
<%@ page import="java.util.List" %>
 
<%
	String pNum = request.getParameter("page"); //page=<%=i > 를 불러와 변수에 저장
	

	// 전체 메세지 레코드 검색 
	ListMessageService service = ListMessageService.getInstance(); 
	List <Message> mList =  service.getMessageList(pNum);
	
	int totalPageCount = service.getTotalPage();
	int pageNum = 1;
	int nextPage = service.getNextPage();
	
	if (pNum != null){
		pageNum = Integer.parseInt(pNum);
	}
 	 
%>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> 방명록 목록 </title>
</head>
<body>

	<% if( mList.isEmpty() ) { %>
		남겨진 메세지가 하나도~~없습니다. <br>
	<% } else { %>
	<table border="1">
	
		<% for(Message m : mList) { %>
		<tr>	
			<td><%= m.getMessageId() %> </td> 
			<td><%= m.getGuestName() %> </td> 
			<td><a href="deleteMessage.jsp?messageId=<%=m.getMessageId()%>">[삭제]</a> </td>			
		</tr>
		<tr>
			<td colspan='3'> 
			<textarea cols=35 rows=3 style="font-family: '돋움', '돋움체'; font-size: 10pt; font-style: normal; line-height: normal; color: #003399;background-color:#D4EBFF;border:1 solid #00009C;"><%= m.getMessage() %></textarea>
			</td>
		</tr>
		<% } // end of for %>
		
	</table>
	
	<% } // end if-else %>

	<a href="./insertMessage.jsp">글쓰기</a>  
	<hr/>
	<a href="listMessage.jsp?page=<%=pageNum-1%>"><button>이전</button></a>
	<% for(int i=1; i<=totalPageCount; i++) { %>

			<a href="listMessage.jsp?page=<%=i%>">[<%=i%>]</a>
	<%} // end of for %>
	<a href="listMessage.jsp?page=<%=pageNum+1%>"><button>다음</button></a>
	<a href="listMessage.jsp?page=<%=nextPage%>"><button>다음</button></a>
</body>
</html>