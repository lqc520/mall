<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-register mx-auto mt-5">
        <div class="card-header">Register an Account</div>
        <div class="card-body">
          <form action="addAdmin.html" method="post" onsubmit="return check();">
           
            <div class="form-group">
                  <div class="form-label-group">
                    <input type="text" id="Name" name="aname" class="form-control" placeholder="Your Name" required="required">
                    <label for="Name">Your Name</label>
                  </div>
            </div>
            
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="inputPassword" name="apwd" class="form-control" placeholder="Password" required="required">
                    <label for="inputPassword">Password</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirm password" required="required">
                    <label for="confirmPassword">Confirm password</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
              <div class="form-row">
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="tel" id="mobile" name="amobile" class="form-control" placeholder="mobile" required="required">
                    <label for="mobile">mobile</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-label-group">
                    <input type="tel" id="code" name="code" class="form-control" placeholder="code" required="required">
                    <label for="code">code</label>
                  </div>
                </div>
              </div>
            </div>
            <div class="form-group">
                <input  id="getCode" value="getCode" class="btn btn-primary btn-block">
            </div>
            
            <input type="submit" class="btn btn-primary btn-block" value="regiter">
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="adminLogin.html">Login Page</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script type="text/javascript">
	$('#getCode').click(
			function(){
				var tel=$("#mobile").val();
				if(m){
					$.post("getTelCode.html",{"tel":tel},function(data){
						
					});
					alert("短信发送成功 请输入验证码");
				}else{
					alert("手机号不正确 请重新输入");
				}
				
			});
	var m=false,p=false,rp=false;
	
	$('#mobile').blur(function(){
		var regx = /^(13[0-9]|14[579]|15[0-3,5-9]|16[6]|17[0135678]|18[0-9]|19[89])\d{8}$/
		if(!regx.test($(this).val())){
			m=false;
			alert("手机号不正确 请重新输入")
		}else{
			m=true;
		}
	});

	$('#inputPassword').blur(function(){
		 var regx = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,12}$/
		if(!regx.test($(this).val())){
			p=false;
			alert("请输入字母和数字的组合6位以上");
		}else{
			p=true;
		}
	});
	$('#confirmPassword').blur(function(){
		if($(this).val()==$('#inputPassword').val()){
			rp=true;
		}else{
			alert("密码不一致 请重新输入");
			rp=false;
		}
	});
	function check(){
		if(p&&rp&&m){
			alert("注册成功");
			return true;
		}
		else{
			alert("请按要求注册");
			return false;
		}
		
	}
	</script>
  </body>

</html>
