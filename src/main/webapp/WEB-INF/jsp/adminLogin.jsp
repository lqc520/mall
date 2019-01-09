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

    <title>lqcmall Manager Login</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body class="bg-dark">

    <div class="container">
      <div class="card card-login mx-auto mt-5">
        <div class="card-header">Admin Login</div>
        <div class="card-body">
          <form action="adminlogin.html" method="post" id="form1">
            <div class="form-group">
              <div class="form-label-group">
                <input type="tel" id="Mobile" name="amobile" class="form-control" placeholder="input Mobile" required="required" autofocus="autofocus">
                <label for="Mobile">Mobile</label>
              </div>
            </div>
            <div class="form-group">
              <div class="form-label-group">
                <input type="password" id="inputPassword" name="apwd" class="form-control" placeholder="Password" required="required">
                <label for="inputPassword">Password</label>
              </div>
            </div>
            <div class="form-group">
              <div class="checkbox">
                <label>
                  <input type="checkbox" value="remember-me">
                  Remember Password
                </label>
              </div>
            </div>
            <input type="button" class="btn btn-primary btn-block" id="login" value="Login">
          </form>
          <div class="text-center">
            <a class="d-block small mt-3" href="adminRegister.html">Register an Account</a>
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
		
	$('#login').click(function(){
			$.post("adminLoging.html",$('#form1').serialize(),function(data){
				if(data=='yes'){
					location.assign("indexManager.html");
				}else{
					location.assign("adminLogin.html");
				}
			});
			
		});
	</script>
  </body>

</html>
