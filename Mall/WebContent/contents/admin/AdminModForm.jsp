<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="java.sql.*" %>
    
<!DOCTYPE html>
<%@ page import = "java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>회원수정</title>
</head>
<body>
    <% request.setCharacterEncoding("euc-kr"); 
    request.setCharacterEncoding("euc-kr");
    String id = request.getParameter("ID");
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    Class.forName("com.mysql.jdbc.Driver");    
    conn = DriverManager.getConnection
    ("jdbc:mysql://localhost:3306/webapp?characterEncoding=UTF-8&serverTimezone=UTC", "root", "java");   
    pstmt = conn.prepareStatement("SELECT ID,PWD,UserName,Email, Contact,Address FROM login_db WHERE ID=?");
    pstmt.setString(1, id);
    rs = pstmt.executeQuery(); 
    rs.next();
%>       
<h1>회원정보수정</h1>
	<form action="AdminModPro.jsp" method="post">
		id <input type="text" name="id" value=<%=rs.getString("ID")%> readonly><br>
		패스워드 변경 <input type="password" name="pwd" value=<%=rs.getString("PWD")%>><br>
		이   름  변  경 <input type="text" name="username" value=<%=rs.getString("UserName")%>><br>
		이 메 일 변 경 <input type="text" name="email" value=<%=rs.getString("Email")%>><br>
		연 락 처 변 경 <input type="text" name="contact" value=<%=rs.getString("Contact")%>><br>
		주   소  변  경 <input type="text" name="address" value=<%=rs.getString("Address")%>><br>
		<input type="submit" value="수정">
	</form>
</body>
</html>