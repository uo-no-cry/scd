<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>主页-商品管理</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">
<!-- Data Tables -->
<link href="css/dataTables.bootstrap.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css?v=4.1.0" rel="stylesheet">

</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>主页-商品管理</h5>

						<div class="ibox-tools">
							<a href="message_edit.jsp">
								<button type="button" class="btn btn-default btn-xs">编辑</button>
							</a>
						</div>
					</div>

					<form action="/cms_save.action" id='contentForm' method="post" enctype="multipart/form-data">
						<div class="form-group">
							<label for="cmsCatId">内容位置id</label> 
							<input type="text" class="form-control" id="cmsCatId" name="cmsCatId">
						</div>
						<div class="form-group">
							<label for="cmsName">内容名称</label> 
							<input type="text" class="form-control" id="cmsName" name="cmsName">
						</div>
						<div class="form-group">
                            <label for="cmsUrl">内容URL</label> 
                            <input type="text" class="form-control" id="cmsUrl" name="cmsUrl">
                        </div>
                        <div class="form-group">
                            <label for="cmsPrice">当前价格</label> 
                            <input type="text" class="form-control" id="cmsPrice" name="cmsPrice">
                        </div>
                        <div class="form-group">
                            <label for="cmsOldPrice">旧价格</label> 
                            <input type="text" class="form-control" id="cmsOldPrice" name="cmsOldPrice">
                        </div>
                        <div class="form-group">
                            <label for="cmsItemId">商品id</label> 
                            <input type="text" class="form-control" id="cmsItemId" name="cmsItemId">
                        </div>
						<div class="form-group">
							<label for="cms_pics">图片:</label> <input  multiple="multiple" type="file" id="cms_pics" name="cms_pics">
						</div>
						<button>确认修改</button>
						<!-- <button type="button" id="submitBtn">ç¡®è®¤ä¿®æ¹</button> -->
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- å¨å±js -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

    <script type="text/javascript">
    $(function () {
    	
        // è·åè¡¨åä¿¡æ¯å¹¶æäº¤
        $('#submitBtn').on('click', function () {
        	window.alert($('#contentForm').serialize());
        });
        
    })    
    </script>


	<script src="js/jquery.jeditable.js"></script>

	<!-- Data Tables -->
	<script src="js/jquery.dataTables.js"></script>
	<script src="js/dataTables.bootstrap.js"></script>

	<!-- èªå®ä¹js -->
	<script src="js/content.js?v=1.0.0"></script>

	<!-- Page-Level Scripts -->
	<script>
		$(document).ready(function() {
							$(".delete").click(function() {
												var id = $(this).prev().val();
												if (confirm("ç¡®å®å é¤åï¼å é¤åå°æ æ³æ¢å¤ï¼")) {
													window.location.href = "admin_message_del.action?message.id="
															+ id;
													return true;
												} else {
													return false;
												}
											});
						});

		$(document).ready(function() {
			$('.dataTables-example').dataTable();

			/* Init DataTables */
			var oTable = $('#editable').dataTable();

			/* Apply the jEditable handlers to the table */
			oTable.$('td').editable('../example_ajax.php', {
				"callback" : function(sValue, y) {
					var aPos = oTable.fnGetPosition(this);
					oTable.fnUpdate(sValue, aPos[0], aPos[1]);
				},
				"submitdata" : function(value, settings) {
					return {
						"row_id" : this.parentNode.getAttribute('id'),
						"column" : oTable.fnGetPosition(this)[2]
					};
				},

				"width" : "90%",
				"height" : "100%"
			});

		});

		function fnClickAddRow() {
			$('#editable').dataTable()
					.fnAddData(
							[ "Custom row", "New row", "New row", "New row",
									"New row" ]);

		}
	</script>
	
</body>

</html>
