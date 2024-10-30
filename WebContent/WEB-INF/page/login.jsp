<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>网上订餐系统后台登陆</title>
    <link rel="stylesheet" href="css/login.css">
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
        function login() {
            $('#msg').html('');
            if ($('#name').val() == '') {
                $('#msg').html('请输入用户名');
                return;
            }
            if ($('#password').val() == '') {
                $('#msg').html('请输入密码');
                return;
            }

            $('#logform').submit();
        }

        function keyLogin() {
            if (event.keyCode == 13) {
                login();
            }
        }
    </script>
</head>

<body onkeydown="keyLogin()">
    <div class="login_box">
        <div class="login_l_img"><img src="images/login-img.png"></div>
        <div class="login">
            <div class="login_logo"><img src="images/login_logo.png"></div>
            <div class="login_name">
                <p>网上订餐系统后台登陆</p>
                <span id="msg"></span>
            </div>
            <form action="/login" method="post" id="logform">
                <input type="text" name="name" id="username" placeholder="用户名">
                <input type="password" name="password" id="password" placeholder="密码">
                <input value="登录" style="width:100%;" type="button" onclick="login()">
            </form>
        </div>
    </div>
</body>

</html>