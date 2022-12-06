<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>

<style>
table{
    border-collapse: collapse;
    
}
</style>

<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<%
Connection con=null;
String sql=null;
PreparedStatement stmt=null;

try {
	Class.forName("com.mysql.jdbc.Driver");//加载JDBC-MySQL驱动
} catch (Exception e) {
	out.println("加载驱动器类时出现异常");
}

String DBName = "test";
String uri="jdbc:mysql://localhost:3306/"+
		DBName+"?useSSL=true&characterEncoding=utf-8";

String user = "root";
String password = "123456";

try {
	con = DriverManager.getConnection(uri,user,password);//连接数据库代码
} catch (SQLException e) {
	out.println("连接数据库的过程中出现SQL异常");
}

try {
	//创建Statement语句
	 String username=request.getParameter("username");
    String userpwd=request.getParameter("userpwd");
    String newuserpwd=request.getParameter("newuserpwd");
    
	

	sql="update login set password=? where username=?";
	stmt = con.prepareStatement(sql);
	stmt.setString(1, newuserpwd);
	stmt.setString(2, username);
	
	
	//使用executeQuery执行SQL查询语句
	int i=stmt.executeUpdate();
	
	%>
	
	
		<tr>
		<a href="show.jsp" >返回信息列表</a>
		</tr>
	
	<%
	
} catch (SQLException e) {
	out.println("出现SQL异常");
}

try{
	if(con!=null)
		con.close();
}catch(SQLException e){
	out.println("关闭数据库连接时出现SQL异常");
}

%>

</body>
</html>

