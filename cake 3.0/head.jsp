<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html>
<body>
		<title>头目录</title>
		<head>
		<meta charset="utf-8">
		<style type="text/css">
		        .top{
		    /* 设置宽度高度背景颜色 */
		    height: auto; /*高度改为自动高度*/
		    width:100%;
		    margin-left: 0;
		    background:rgb(189, 181, 181);
		    position: fixed; /*固定在顶部*/
		    top: 0;/*离顶部的距离为0*/
		    margin-bottom: 5px;
		    background-color:#D2691E;
		}
		.top ul{
		    /* 清除ul标签的默认样式 */
		    width: auto;/*宽度也改为自动*/
		    list-style-type: none;
		    white-space:nowrap;
		    overflow: hidden;
		    margin-left: 5%;
		    /* margin-top: 0;          */
		    padding: 0;
		
		}
		.top li {
		    float:left; /* 使li内容横向浮动，即横向排列  */
		    margin-right:2%;  /* 两个li之间的距离*/
		    position: relative;
		    overflow: hidden;
		}
		
		.top li a{
		   /* 设置链接内容显示的格式*/
		    display: block; /* 把链接显示为块元素可使整个链接区域可点击 */
		    color:white;
		    text-align: center;
		    padding: 3px;
		    overflow: hidden;
		    text-decoration: none; /* 去除下划线 */
		    
		}
		.top li a:hover{
		    /* 鼠标选中时背景变为黑色 */
		    background-color: #111;
		}
		.top ul li ul{
		    /* 设置二级菜单 */
		    margin-left: -0.2px;
		    background-color:#D2691E;
		    position: relative;
		    display: none; /* 默认隐藏二级菜单的内容 */
		
		}
		.top ul li ul li{
		    /* 二级菜单li内容的显示 */
		    
		    float:none;
		    text-align: center;
		}
		.top ul li:hover ul{
		    /* 鼠标选中二级菜单内容时 */
		    display: block;
		}
		
		       </style>
		        <body>
		            <div class="top">
		                   <center> 
		                    <ul>
		                    <li><a href="home.jsp"><b>首页</b></a></li>
							<li>
							    <a href="#"><b>热销</a>
							    <ul>
							        <li><a href="#">蛋糕</a></li>
							        <li><a href="#">饮料</a></li>
								</ul>
		                    <li><a href="#"><b>新品</b></a></li>
		                    <li><a href="register.jsp"><b>注册</b></a></li>
		                    <li><a href="login.jsp"><b>登录</b></a></li>
		                    <li><a href="rooter.jsp"><b>管理员模式（尚未完善）</b></a></li>
		                    
		                    </center>      
		            </div>
					<br>
					</br>

	</head>
</body>
</html>