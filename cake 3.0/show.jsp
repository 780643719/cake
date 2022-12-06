<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>

<style>
table{
    border-collapse: collapse;
    
}

        .div_head {
        height: 36px;
        background-color: #FFFFFF;
        margin: 0 auto;
        line-height: 36px;
        text-align: center;
        font-size: 40px;
        line-height: 24px;
        margin-bottom: -1px;
        font-family: "PingFang SC", "Microsoft yahei", "Helvetica Neue", "Helvetica", "Arial", sans-serif;
    }
        .div_top_1 {
        height: 110px;
        width: 100%;
    }
</style>

<head>
<meta charset="UTF-8">
<title></title>
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
    
<div class="div_head">管理员模式</div> 
</div>
<%
Connection con=null;
String sql=null;
Statement stmt=null;

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
	stmt = con.createStatement();
	//先查询有多少列
	sql="desc login;";
	
	//使用executeQuery执行SQL查询语句
	ResultSet rs=stmt.executeQuery(sql);
	
	%>
	
	<table border="1" align="center">
		<tr>
			<% 
			//获取列属性名
			//i=列数
			int i=0;
			while(rs.next()){
				%>
				<td align="center"><%=rs.getString(1) %></td>
				<%
				i++;
			}
			%>	
			<td>更改</td>
		</tr>
		
		<% 
		sql="select * from login ";
		rs=stmt.executeQuery(sql);
		//显示获取的结果集
		while(rs.next()){
			%>
			<tr>
				<% 
				for(int j=1;j<=i;j++){
					%>
					<td align="center"><%=rs.getString(j) %></td>
					<%
				}
				%>
				<td>
<a href="xiugai.jsp" >修改账户</a>&nbsp &nbsp <a href="shanchu.jsp" >删除账户</a>
				</td>
			
			<%
		}
		%>
		

	</table>
	
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
	<!-- footer -->
	<jsp:include page="/footer.jsp"/>
	<!-- //footer -->
</body>
</html>

