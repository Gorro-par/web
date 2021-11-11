<!-- /* AdminUserList.jsp */  -->

<%@ page contentType="text/html;charset=UTF-8" import="java.sql.*" %>

<%

Class.forName("com.mysql.jdbc.Driver");
String DB_URL = "jdbc:mysql://localhost:3306/webapp?characterEncoding=UTF-8&serverTimezone=UTC";
String DB_USER = "root";
String DB_PASSWORD= "java";

Connection conn= null;
Statement stmt = null;
ResultSet rs   = null;

try {
    conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    stmt = conn.createStatement();
    String query = "SELECT UserType, ID, PWD, UserName, Email, Contact, Address FROM login_db"; 
    rs = stmt.executeQuery(query);
%>

<b><font size="5" color="gray">전체 회원 목록</font></b>
<br><br>
<%-- 입력된 값을 추출한다. --%>
<table border="1" cellspacing="0">
	<tr>
		<th>사용자 유형</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>이메일</th>
		<th>연락처</th>
		<th>주소</th>
		
		<th>비고 </th>	
	</tr>
	
<%
    while(rs.next()) {
    	if(rs.getString("UserType").equals("Admin")) continue;
%>	<tr>
		<td><%=rs.getString("UserType")%></td>
		<td><%=rs.getString("ID")%></td>
		<td><%=rs.getString("PWD") %></td>
		<td><%=rs.getString("UserName") %></td>
		<td><%=rs.getString("Email") %></td>
		<td><%=rs.getString("Contact") %></td>
		<td><%=rs.getString("Address")%></td>
		
		<td> 
		<input type="button" value="삭제" 
		onClick="location.href='AdminUserDel.jsp?ID=<%=rs.getString("ID")%>'"> <!-- AdminUserDel.jsp링크를 이용하여 해당 테이블의 데이터들을 삭제 -->
		<input type="button" value="수정" 
		onClick="location.href='AdminModForm.jsp?ID=<%=rs.getString("ID")%>'"> <!-- AdminUserMdfForm.jsp로 이동하여 해당 테이블의 데이터값들을 수정 -->
		</td>
	</tr>
<%

} // end while

%></table>
	<br>
	<input type="button" value=" 확 인 " 
	onClick="location.href='../../AdminMain.jsp'">


<%
	rs.close();     
    stmt.close();   
    conn.close(); 	

} catch (SQLException e) {
      out.println("err:"+e.toString());
} 

%>