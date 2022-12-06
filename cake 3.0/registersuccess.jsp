<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %> 
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style type="text/css">
        .center{
            text-align:center;
            margin-top: 50px;
        }
        .div_top_1 {
        height: 110px;
        width: 100%;
    }
    </style>
    <title>Title</title>
</head>
<body>
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
    String cuserpwd=request.getParameter("cuserpwd");
    //判断两次密码是否相同
    if (cuserpwd.equals(userpwd)) {  
        Connection conn = null;
        Statement stmt = null;
        try {
            //连接驱动
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        //建立数据库连接
        String url="jdbc:mysql://localhost:3306/test";
        //数据库账号
        String user="root";
        //数据库密码
        String upwd="123456";
        try {
            conn= DriverManager.getConnection(url,user,upwd);
            //创建发射器
            stmt=conn.createStatement();
            //创建sql语句
            String sql="insert into login(username,password) value ('"+username+"','"+userpwd+"')";
            //发送sql语句并接收结果
            int count = stmt.executeUpdate(sql);
            if (count>0){
                out.print("注册成功");
                out.print("<a href='login.jsp'>登录</a>");
            }
            else{
                out.print("注册失败");
            }
            //关闭资源
            stmt.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    else {
        out.print("注册失败");
    }
%>
    <a href="home.jsp" >返回主页</a>
</div>

	<!-- footer -->
	<jsp:include page="/footer.jsp"/>
	<!-- //footer -->
</body>
</html>

