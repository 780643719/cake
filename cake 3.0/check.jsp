<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <style>
    .div_top_1 {
        height: 110px;
        width: 100%;
    }
    .center{
            text-align:center;
            margin-top: 50px;
        }
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="/head.jsp"/>
	<!-- //header -->
	<div style="position:absolute; width:100%; height:100%; z-index:-1; left:0; top:0;">
        <img src="cake.jpg"/ usemap="#planetmap" height="100%" width="100%">
    </div>
    
 <div class="div_top_1">
</div>	
<div class="center">
<%
    //获取用户输入信息
    request.setCharacterEncoding("utf-8");
    String username=request.getParameter("username");
    String userpwd=request.getParameter("userpwd");
    Connection conn = null;
    PreparedStatement stmt = null;
    try {
        //连接驱动
        Class.forName("com.mysql.jdbc.Driver");
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    //建立数据库连接
    String url = "jdbc:mysql://localhost:3306/test";
    //数据库账号
    String uname="root";
    //数据库密码
    String upwd="123456";

    try {
        conn = DriverManager.getConnection(url, uname, upwd);
        //创建发射器
        //创建sql语句
        String sql = "select * from login where username =? and password =?";
        stmt = conn.prepareStatement(sql);
        stmt.setString(1, username);
        stmt.setString(2, userpwd);
        
        //发送sql语句并接收结果
        ResultSet rs = stmt.executeQuery();
        if (rs.next()) {
            out.print("登陆成功");
        } else {
            out.print("登陆失败");
        }
        rs.close();
    }
    catch (SQLException e) {
        e.printStackTrace();
    }

%>
<a href="home.jsp" >返回主页</a>
</div>

	<!-- footer -->
	<jsp:include page="/footer.jsp"/>
	<!-- //footer -->
</body>
</html>
