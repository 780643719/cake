<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登入界面</title>
<style type="text/css">

    .div_top_1 {
        height: 100px;
        width: 100%;
    }

    .div_top_2 {
        height: 25px;
        width: 100%;
    }

    .main {
        width: 417.683px;
        height: 280px;
        background-color:#AAAAAA;
        margin: 0 auto;

    }

    .login {

        width: 360px;
        height: 240px;
        background-color: #AAAAAA;
        margin: 0 auto
    }

    .div_login_head {
        height: 36px;
        background-color: #AAAAAA;
        margin: 0 auto;
        line-height: 36px;
        text-align: center;
        font-size: 26px;
        line-height: 24px;
        margin-bottom: -1px;
        font-family: "PingFang SC", "Microsoft yahei", "Helvetica Neue", "Helvetica", "Arial", sans-serif;
    }

    .div_input_account {
        width: 360px;
        height: 40px;
		background-color: #AAAAAA
    }

    .div_input_pwd {
        width: 360px;
        height: 24px;
		background-color: #AAAAAA
    }

    .input_account, .input_pwd {
        width: 360px;
        height: 40px;
        border: none;
        border-bottom: #ddd 1px solid;
        border-radius: 0;
        outline: 0;
        font: inherit;
        font-size: .875rem;
        background-color: #AAAAAA
    }

    .div_button_login {
        width: 360px;
        height: 40px;
        margin-top: 36px;
        text-align: center;

    }

    .button_login {
        width: 180px;
        height: 40px;
        background: #1fa54a;
        font-size: 16px;
        cursor: pointer;
        color: white;
        border: none;
        border-radius: 2px;
        outline: 0;

    }

    .div_empty {
        width: 360px;
        height: 24px;

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
	<div class="main">
    	<div class="login">
        	<div class="div_top_2">
        	</div>
    
<div class="div_login_head">登录界面</div> 
        	<div class="div_top_2">
        	</div>
  <form method="post" action="check.jsp">
账号<input class="input_account" type="text" name="username" placeholder="请输入用户名"><br>
密码<input class="input_pwd" type="password" name="userpwd" placeholder="请输入密码" ><br>
        	<div class="div_top_2">
        	</div>
            <input class="button_login" type="submit" value="登录">

    <a href="register.jsp" >没有账号，点此注册</a>
  </form>
</div>
</div>
	<!-- footer -->
	<jsp:include page="/footer.jsp"/>
	<!-- //footer -->
  </body>
</html>
