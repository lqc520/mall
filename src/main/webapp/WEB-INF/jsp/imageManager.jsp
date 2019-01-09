<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>UserManager</title>

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="index.html">lqcMall Manager</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
          <div class="input-group-append">
            <button class="btn btn-primary" type="button">
              <i class="fas fa-search"></i>
            </button>
          </div>
        </div>
      </form>

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
	        <li class="nav-item dropdown no-arrow">
	          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	            <i class="fas fa-user-circle fa-fw"></i>
	          </a>
	          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
	            <a class="dropdown-item" href="#">Settings</a>
	            <div class="dropdown-divider"></div>
	            <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">Logout</a>
	          </div>
	        </li>
      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
        <li class="nav-item ">
          <a class="nav-link" href="indexManager.html">
          <i class="fas fa-table"></i>
            <span>仪表盘</span>
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="orderManager.html">
            <i class="fab fa-amazon-pay"></i>
            <span>订单管理</span>
          </a>
        </li>
        <li class="nav-item ">
          <a class="nav-link" href="userManager.html">
            <i class="fas fa-users"></i>
            <span>用户管理</span></a>
        </li>
         <li class="nav-item ">
          <a class="nav-link" href="productManager.html">
            <i class="fab fa-product-hunt"></i>
            <span>商品管理</span></a>
        </li>
        <li class="nav-item active">
          <a class="nav-link" href="imageManager.html">
            <i class="far fa-images"></i>
            <span>图片管理</span></a>
        </li>
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="indexManager.html">仪表盘</a>
            </li>
            <li class="breadcrumb-item ">图片管理</li>
            <li class="breadcrumb-item active"><a href="#" data-toggle="modal" data-target="#myModal-uploaddimg">上传商品详图</a></li>
          </ol>

          <!-- DataTables Example -->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
         	     图片管理   -->管理员请注意上传图片名字不能一样 等待 lqcmall V2.0 版本更新</div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Did</th>
                      <th>image</th>
                      <th>Dimg</th>
                      <th>delete</th>
                      <th>update</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<c:forEach items="${dimg}" var="d">
                  		 <tr>
		                      <td>${d.product_dimgId}</td>
		                      <td>${d.product_dimg_id}</td>
		                      <td> <img alt="dimg" src="${d.product_detail_img}" style="width: 60px;height: 60px;">  </td>
		                      <td>${d.product_detail_img}</td>
		                      <td><a href="${d.product_dimgId}/deleteDimg.html">删除</a></td>
		                      <td><a href="#" data-toggle="modal" data-target="#myModal-login" onclick="editInfo(this)" >修改</a></td>
		                    </tr>
                  	</c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div>

          <p class="small text-center text-muted my-5">
            <em>More table examples coming soon...</em>
          </p>

        </div>
        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Copyright is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="http://lqcnb.cn" target="_blank">lqcmall</a></span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">Ã</span>
            </button>
          </div>
          <div class="modal-body">您确定要退出管理员登入吗</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="#" id="logout" onclick="logout()" >Logout</a>
          </div>
        </div>
      </div>
    </div>
	<!--模态框 修改-->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal-login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="updateDimg.html" method="post" class="form-horizontal" enctype="multipart/form-data">
					<div class="modal-header">
						<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button> -->
						<h4 class="modal-title text-center" id="myModalLabel">
							修改详细图片
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="email" class="col-sm-4 control-label">商品图片Did</label>
							<div class="col-sm-8">
							<input type="hidden" id="ddid" name="id">
								<input type="tel" class="form-control" id="did" 
									    name="did">
							</div>
						</div>
						<div class="form-group">
							<label for="file" class="col-sm-4 control-label">详情图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" id="file" 
									    name="file">
							</div>
						</div>
					
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<input type="submit" class="btn btn-primary"></input>
					</div>
				</form><!-- /form-->
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
	<!--模态框 上传详细图片-->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal-uploaddimg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="uploadPdimg.html" method="post" class="form-horizontal" enctype="multipart/form-data">
					<div class="modal-header">
						<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button> -->
						<h4 class="modal-title text-center" id="myModalLabel">
							上传商品详情图片
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="pid" class="col-sm-4 control-label">商品dimgid</label>
							<div class="col-sm-8">
								<input type="tel" class="form-control" 
									    name="pid">
							</div>
						</div>
						<div class="form-group">
							<label for="files" class="col-sm-4 control-label">详情图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" 
									    name="files">
							</div>
						</div>
						<div class="form-group">
							<label for="files" class="col-sm-4 control-label">详情图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" 
									    name="files">
							</div>
						</div>
						<div class="form-group">
							<label for="files" class="col-sm-4 control-label">详情图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" 
									    name="files">
							</div>
						</div>
						<div class="form-group">
							<label for="files" class="col-sm-4 control-label">详情图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" 
									    name="files">
							</div>
						</div>
						<div class="form-group">
							<label for="files" class="col-sm-4 control-label">详情图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" 
									    name="files">
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭
						</button>
						<input type="submit" class="btn btn-primary"></input>
					</div>
				</form><!-- /form-->
			</div><!-- /.modal-content -->
		</div><!-- /.modal -->
	</div>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
	<script type="text/javascript">
	function editInfo(obj){
		var p=$(obj).parent().parent().children();
		$('#ddid').val(p[0].innerText);
		$('#did').val(p[1].innerText);
		
	}
	function logout(){
		$.post("adminOut.html",{},function(data){
			if(data=="ok")
				location.assign("adminLogin.html");
		});
	}
	</script>
  </body>

</html>
