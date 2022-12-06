<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!DOCTYPE html>
<html>
<head>
<style>
    .div_top_1 {
        height: 110px;
        width: 100%;
    }

    .main {
        width: 417.683px;
        height: 280px;
        background-color:#FFFFFF;
        margin: 0 auto;

    }
    
        .div_login_head {
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
</style>
<title>主页</title>
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
<div class="main">
        	<div class="div_top_1">
			</div>
<div class="div_login_head">欢迎来到蛋糕商城</div> 
</div>

	<!-- footer -->
	<jsp:include page="/footer.jsp"/>
	<!-- //footer -->
</body>
</html>