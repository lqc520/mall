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
        <li class="nav-item ">
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
        <li class="nav-item active">
          <a class="nav-link" href="productManager.html">
            <i class="fab fa-product-hunt"></i>
            <span>商品管理</span></a>
        </li>
        <li class="nav-item">
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
            <li class="breadcrumb-item active">产品管理</li>
          </ol>

          <!-- DataTables Example -->
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
            	  商品详情 &nbsp;<i class="fas fa-plus-square"></i> &nbsp;<a href="#" data-toggle="modal" data-target="#myModal-add">添加商品</a>
            	 &nbsp;<i class="fas fa-file-alt"></i> &nbsp;<a href="#" data-toggle="modal" data-target="#myModal-addinfo">添加商品附加信息</a>
            	  &nbsp;<i class="fas fa-folder-plus"></i> &nbsp;<a href="#" data-toggle="modal" data-target="#myModal-uploaddimg">上传商品详图</a>
            	    &nbsp; <i class="far fa-images"></i> &nbsp;<a href="imageManager.html">上传商品详图</a>
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Id</th>
                      <th>Name</th>
                      <th>price</th>
                      <th>Img</th>
                      <th>Cart-Img</th>
                      <th>Describe</th>
                      <th>Count</th>
                      <th>data</th>
                      <th>Type</th>
                      <th>DimgId</th>
                      <th>update</th>
                      <th>delete</th>
                    </tr>
                  </thead>
                  <tbody>
                  	<c:forEach items="${product}" var="o">
                  		 <tr>
		                      <td>${o.product_id}</td>
		                      <td>${o.product_name}</td>
		                      <td>${o.product_price}</td>
		                      <td>${o.product_img}</td>
		                      <td>${o.product_card_img}</td>
		                      <td>${o.product_describe}</td>
		                      <td>${o.product_count}</td>
		                      <td>${o.product_createtime}</td>
		                      <c:if test="${o.product_type_id==1}">
		                      <td>Women</td>
		                      </c:if>
		                      <c:if test="${o.product_type_id==2}">
		                      <td>Men</td>
		                      </c:if>
		                      <c:if test="${o.product_type_id==3}">
		                      <td>Bag</td>
		                      </c:if>
		                      <c:if test="${o.product_type_id==4}">
		                      <td>Shoes</td>
		                      </c:if>
		                      <c:if test="${o.product_type_id==5}">
		                      <td>Watches</td>
		                      </c:if>
		                      <td>${o.product_dimg_id}</td>
		                      
		                      <td><a href="#" data-toggle="modal" data-target="#myModal-login" onclick="editInfo(this)" >修改</a></td>
		                       <td><a href="${o.product_id}/deleteProduct.html" >删除</a></td>
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
				<form action="updateProduct.html" method="post" class="form-horizontal">
					<div class="modal-header">
						<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button> -->
						<h4 class="modal-title text-center" id="myModalLabel">
							修改商品信息
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="name" class="col-sm-4 control-label">商品名称</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="name" 
									    name="product_name">
							</div>
						</div>
						<div class="form-group">
							<label for="price" class="col-sm-4 control-label">价格</label>
							<div class="col-sm-8">
							<input type="hidden" id="pid" name="product_id">
								<input type="text" class="form-control" id="price" 
									    name="product_price">
							</div>
						</div>
						<div class="form-group">
							<label for="image" class="col-sm-4 control-label">图片</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="image" 
									    name="product_img">
							</div>
						</div>
						<div class="form-group">
							<label for="cartImage" class="col-sm-4 control-label">购物车图片</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="cartImage" 
									    name="product_card_img">
							</div>
						</div>
						<div class="form-group">
							<label for="describe" class="col-sm-4 control-label">商品描述</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="describe" 
									    name="product_describe">
							</div>
						</div>
						<div class="form-group">
							<label for="image" class="col-sm-4 control-label">数量</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" id="count" 
									    name="product_count">
							</div>
						</div>
						<div class="form-group">
							<label for="type" class="col-sm-4 control-label">产品类型</label>
							<div class="col-sm-8">
								<select name="product_type_id" id="type">
									<option value="1">Women</option>
									<option value="2">Men</option>
									<option value="3">Bag</option>
									<option value="4">Shoes</option>
									<option value="5">Watches</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="did" class="col-sm-4 control-label">详细图片id</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="did" 
									    name="product_dimg_id">
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
	<!--模态框 添加-->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal-add" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="addProduct.html" method="post" class="form-horizontal" enctype="multipart/form-data">
					<div class="modal-header">
						<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button> -->
						<h4 class="modal-title text-center" id="myModalLabel">
							修改商品信息
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="name1" class="col-sm-4 control-label">商品名称</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="name1" 
									    name="product_name">
							</div>
						</div>
						<div class="form-group">
							<label for="price1" class="col-sm-4 control-label">价格</label>
							<div class="col-sm-8">
							<input type="text" class="form-control" id="price1" 
									    name="product_price">
							</div>
						</div>
						<div class="form-group">
							<label for="image1" class="col-sm-4 control-label">图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" id="image1" 
									    name="files">
							</div>
						</div>
						<div class="form-group">
							<label for="cartImage1" class="col-sm-4 control-label">购物车图片</label>
							<div class="col-sm-8">
								<input type="file" class="form-control" id="cartImage1" 
									    name="files">
							</div>
						</div>
						<div class="form-group">
							<label for="describe1" class="col-sm-4 control-label">商品描述</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="describe1" 
									    name="product_describe">
							</div>
						</div>
						<div class="form-group">
							<label for="count1" class="col-sm-4 control-label">数量</label>
							<div class="col-sm-8">
								<input type="number" class="form-control" id="count1" 
									    name="product_count">
							</div>
						</div>
						<div class="form-group">
							<label for="type1" class="col-sm-4 control-label">产品类型</label>
							<div class="col-sm-8">
								<select name="product_type_id" id="type1">
									<option value="1">Women</option>
									<option value="2">Men</option>
									<option value="3">Bag</option>
									<option value="4">Shoes</option>
									<option value="5">Watches</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="did1" class="col-sm-4 control-label">详细图片id</label>
							<div class="col-sm-8">
								<input type="tel" class="form-control" id="did1" 
									    name="product_dimg_id">
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
							<label for="pid" class="col-sm-4 control-label">商品id</label>
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
		<!--模态框 添加附加信息-->
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal-addinfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="addAddInfo.html" method="post" class="form-horizontal" enctype="multipart/form-data">
					<div class="modal-header">
						<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
							&times;
						</button> -->
						<h4 class="modal-title text-center" id="myModalLabel">
							添加商品附加信息
						</h4>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label for="product_id" class="col-sm-4 control-label">商品id</label>
							<div class="col-sm-8">
								<input type="tel" class="form-control" id="product_id" 
									    name="product_id">
							</div>
						</div>
						<div class="form-group">
							<label for="product_weight" class="col-sm-4 control-label">商品重量</label>
							<div class="col-sm-8">
							<input type="text" class="form-control" id="product_weight" 
									    name="product_weight">
							</div>
						</div>
						<div class="form-group">
							<label for="product_dimensions" class="col-sm-4 control-label">商品尺寸</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="product_dimensions" 
									    name="product_dimensions">
							</div>
						</div>
						<div class="form-group">
							<label for=product_materials class="col-sm-4 control-label">商品原料</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="product_materials" 
									    name="product_materials">
							</div>
						</div>
						<div class="form-group">
							<label for="product_color" class="col-sm-4 control-label">商品颜色</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="product_color" 
									    name="product_color">
							</div>
						</div>
						<div class="form-group">
							<label for="product_size" class="col-sm-4 control-label">商品Size</label>
							<div class="col-sm-8">
								<input type="text" class="form-control" id="product_size" 
									    name="product_size">
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
		$('#pid').val(p[0].innerText);
		$('#name').val(p[1].innerText);
		$('#price').val(p[2].innerText);
		$('#image').val(p[3].innerText);
		$('#cartImage').val(p[4].innerText);
		$('#describe').val(p[5].innerText)
		$('#count').val(p[6].innerText);
		$('#did').val(p[9].innerText);
		if(p[8].innerText=="Women")
			$('#type').val(1);
		if(p[8].innerText=="Men")
			$('#type').val(2);
		if(p[8].innerText=="Bag")
			$('#type').val(3);
		if(p[8].innerText=="Shoes")
			$('#type').val(4);
		if(p[8].innerText=="Watches")
			$('#type').val(5);
			
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
