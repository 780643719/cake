<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除账号</title>
	<link rel="stylesheet" type="text/css" href="css/style.css" />
	<link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
<style>
#bigBox
{
	margin: 0 auto;
	margin-top: 100px;
	padding: 20px 50px;
	background-color: #000000;
	width: 500px;
	height: 400px;
	border-radius: 20px;
	text-align: center;
	background-image: linear-gradient(60deg, #29323c 0%, #485563 100%);
}
#bigBox h1
{
	font-size: 40px;
	color: floralwhite;
}

#bigBox .inputBox .inputText
{
	margin-top: 20px;
}
#bigBox .inputBox .inputText input
{
	border: 0;
	padding: 10px 10px;
	border-bottom: 1px black;
	background-color: #00000000;
	color: black;
	width: 200px;
	height: 40px;
	font-size: 20px;
}
#bigBox .inputBox .inputText i
{
	color: black;
}
#bigBox .inputBox .inputButton
{
	border: 0;
	width: 200px;
	height: 50px;
	color: white;
	margin-top: 55px;
	border-radius:20px;
	background-image: linear-gradient(to right, #b8cbb8 0%, #b8cbb8 0%,#b465da 0%, #cf6cc9 33%, #ee609c 66%, #ee609c 100%);
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
	<div id="bigBox">
			<h1>删除账号</h1>
			<div class="inputBox">
				<form action="delete.jsp" method="post">
					<div class="inputText">
						<i class="fa fa-user-circle" style="color: whitesmoke;"></i>						
                     <input  type="text" name="username" placeholder="请输入用户名" > <br>
						
					</div>
					<div class="inputText">
						<i class="fa fa-key" style="color: whitesmoke;"></i>
						<input  type="password" name="userpwd" placeholder="原密码" > <br>
					</div>
					<input type="submit" class="inputButton" value="确认删除" />
					</div>
					
					

				</form>
			</div>
		</div>
			<!-- footer -->
	<jsp:include page="/footer.jsp"/>
	<!-- //footer -->
</body>
</html>