<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>商品</title>
<meta name="keywords" content="">
<meta name="description" content="">

<link rel="shortcut icon" href="favicon.ico">
<link href="css/bootstrap.min.css?v=3.3.6" rel="stylesheet">
<link href="css/font-awesome.css?v=4.4.0" rel="stylesheet">

<!-- Data Tables -->
<link href="css/dataTables.bootstrap.css" rel="stylesheet">

<link href="css/animate.css" rel="stylesheet">
<link href="css/style.css?v=4.1.0" rel="stylesheet">

<!-- kindeditor -->
<link href="assets/kindeditor-4.1.10/themes/default/default.css"
	type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8"
	src="assets/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8"
	src="assets/kindeditor-4.1.10/lang/zh_CN.js"></script>
<!-- Bootstrap-table -->
<script src="assets/bootstrap-table/bootstrap-table.min.css"></script>
</head>

<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<a href="javascrip:void()" id='addBtn' class="btn btn-info btn-sm">添加商品</a>
				<div>
					<label>商品名称</label> <input type="text" id="searchItemName"> 
					<label>商品分类</label>
					<input type="text" id="searchItemCatName">
					<button id='searchBtn' type="button" class="btn btn-success">搜索</button>
				</div>
				<table id="myTable"></table>
			</div>
		</div>
	</div>

	<!-- add item Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加商品</h4>
				</div>
				<div class="modal-body">

					<form id="itemAddForm" action="saveItem.action" method="post"
						enctype="multipart/form-data">
						<input type="hidden" name="itemId" />
						<table cellpadding="5">
							<tr>
								<td>商品名称:</td>
								<td><input type="text" name="itemName"
									style="width: 280px;"></input></td>
							</tr>
							<tr>
								<td>商品价格:</td>
								<td><input id='itemPriceFade' type="number"
									style="width: 280px;"
									onKeyPress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d$/.test(value))event.returnValue=false">
									<input id='itemPrice' type="hidden" name="itemPrice"
									style="width: 280px;"></input></td>
							</tr>
							<tr>
								<td>商品数量:</td>
								<td><input type="number" name="itemNum"
									style="width: 280px;"></input></td>
							</tr>
							<tr>
								<td>商品分类:</td>
								<td><div class="form-group">
										<input type="text" id="itemCatName" name="itemCatName" />
									</div></td>
							</tr>
							<tr>
								<td>商品状态:</td>
								<td><div class="form-group">
										<select title="商品状态" name="itemStatus">
											<option value="0">在售</option>
											<option value="1">下架</option>
											<option value="2">预售</option>
										</select>
									</div></td>
							</tr>
							<tr>
								<td>商品图片:</td>
								<td><div class="form-group">
										<input required="required" multiple="multiple" type="file" id="item_imgs"
											name="item_imgs" />
									</div></td>
							</tr>
							<tr>
								<td>详细内容:</td>
								<td><textarea id="editor_id" name="itemDesc"
										style="width: 800px; height: 300px; visibility: hidden;">
										</textarea></td>
							</tr>
						</table>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" id='submitBtn' class="btn btn-primary">保存</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	
	<!-- update item Modal -->
    <div class="modal fade" id="myUpdateModal" tabindex="-1" role="dialog"
        aria-labelledby="myModalLabel">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                        aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">修改商品</h4>
                </div>
                <div class="modal-body">

                    <form id="itemUpdateForm" action="updateItem.action" method="post"
                        enctype="multipart/form-data">
                        <input type="hidden" name="itemId" id='updateItemId'/>
                        <table cellpadding="5">
                            <tr>
                                <td>商品名称:</td>
                                <td><input type="text" name="itemName" id='updateItemName'
                                    style="width: 280px;"></input></td>
                            </tr>
                            <tr>
                                <td>商品价格:</td>
                                <td><input  type="number" id='updateItemPriceFade'
                                    style="width: 280px;"
                                    onKeyPress="if((event.keyCode<48 || event.keyCode>57) && event.keyCode!=46 || /\.\d\d$/.test(value))event.returnValue=false">
                                    <input  type="hidden" name="itemPrice" id='updateItemPrice'
                                    style="width: 280px;"></input></td>
                            </tr>
                            <tr>
                                <td>商品数量:</td>
                                <td><input type="number" name="itemNum" id='updateItemNum'
                                    style="width: 280px;"></input></td>
                            </tr>
                            <tr>
                                <td>商品分类:</td>
                                <td><div class="form-group">
                                        <input type="text" id="updateItemCatName" name="itemCatName" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>商品状态:</td>
                                <td><div class="form-group">
                                        <select title="商品状态" name="itemStatus" id='updateItemStatus'>
                                            <option value="0">在售</option>
                                            <option value="1">下架</option>
                                            <option value="2">预售</option>
                                        </select>
                                    </div></td>
                            </tr>
                            <tr>
                                <td>商品图片:</td>
                                <td><div class="form-group">
                                        <input multiple="multiple" type="file" id="updateItemImgs"
                                            name="item_imgs" />
                                    </div></td>
                            </tr>
                            <tr>
                                <td>详细内容:</td>
                                <td><textarea id="editor_id2" name="itemDesc"
                                        style="width: 800px; height: 300px; visibility: hidden;" >
                                        </textarea></td>
                            </tr>
                        </table>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default"
                                data-dismiss="modal">关闭</button>
                            <button type="button" id='updateBtn' class="btn btn-primary">确认修改</button>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>

	<!-- 全局js -->
	<script src="js/jquery.min.js?v=2.1.4"></script>
	<script src="js/bootstrap.min.js?v=3.3.6"></script>

	<script src="js/jquery.jeditable.js"></script>

	<!-- Data Tables -->
	<script src="js/jquery.dataTables.js"></script>
	<script src="js/dataTables.bootstrap.js"></script>
	<!-- Bootstrap-table -->
	<script src="assets/bootstrap-table/bootstrap-table.min.js"></script>
	<script src="assets/bootstrap-table/bootstrap-table-zh-CN.min.js"></script>

	<!-- 自定义js -->
	<script src="js/content.js?v=1.0.0"></script>

	<!-- Page-Level Scripts -->
	<script>
		$(function() {
			/* kindeditor 初始化 */
			KindEditor.ready(function(K) {
				window.editor = K.create('#editor_id');
				window.editor2 = K.create('#editor_id2', {'pasteType' : 2});
			});

			/* 注册添加商品事件 */
			$('#addBtn').on('click', function() {
				$('#myModal').modal('show');
			})

			/* 添加商品表单提交 */
			$('#submitBtn').on('click', function() {
				var value = $('#itemPriceFade').val();
				$('#itemPrice').val(value * 100)
				editor.sync();
				$('#itemAddForm').submit();
			}) 
			
			/* 更新商品表单提交 */
            $('#updateBtn').on('click', function() {
                var value = $('#updateItemPriceFade').val();
                $('#updateItemPrice').val(value * 100)
                editor2.sync();
                $('#itemUpdateForm').submit();
            })
            
            /* 搜索 */
            $('#searchBtn').on('click', function () {
            	var searchItemName = $('#searchItemName').val();
            	var searchItemCatName = $('#searchItemCatName').val();
            	$.ajax({
            		url : 'search.action?itemName=' + searchItemName + '&itemCatName=' + searchItemCatName,
            	    type : 'get',
            	    dataType : 'json',
            	    success : function (rtn) {
            	    	if (rtn.status == 200) {
            	    		// rtn.data => bootStrapTableData : BootStrapTableData
            	    		console.log (rtn.data)
            	    		$('#myTable').bootstrapTable('load', rtn.data)
            	    	} else {
            	    		window.alert(rtn.msg);
            	    	}
            	    }
            	})
            })

			/* bootstrap-table 初始化 */
			$('#myTable')
					.bootstrapTable(
							{
								url : "/admin/itemList.action",
								pagination : true,
								showRefresh : true,
								sidePagination : 'server',
								pageList : [ 10, 25, 50, 100 ],
								trimOnSearch : true,
								searchOnEnterKey : true,
								striped : true,
								sortName : 'itemId',
								onLoadSuccess : function() { //加载成功时执行
									console.info("加载成功");
								},
								onLoadError : function() { //加载失败时执行
									console.info("加载数据失败");
								},
								columns : [
										{
											field : 'itemId',
											title : '商品 id',
											width : "100px",
											align : 'center',
											valign : 'middle'
										},
										{
											field : 'itemName',
											title : '商品名称',
											width : "100px",
											align : 'center',
											valign : 'middle'
										},
										{
											field : 'itemPrice',
											title : '商品价格',
											width : "100px",
											align : 'center',
											valign : 'middle',
											formatter : function(value, row,
													index) { // 单元格格式化函数
												return value / 100;
											}
										},
										{
											field : 'itemNum',
											title : '商品数量',
											width : "100px",
											align : 'center',
											valign : 'middle'
										},
										{
											field : 'itemCatName',
											title : '商品分类',
											width : "100px",
											align : 'center',
											valign : 'middle'
										},
										{
											field : 'itemStatus',
											title : '商品状态',
											width : "100px",
											align : 'center',
											valign : 'middle',
											formatter : function(value, row,
													index) { // 单元格格式化函数
												var text = '-';
												if (value == 0) {
													text = "正常";
												} else if (value == 1) {
													text = "下架";
												} else if (value == 2) {
													text = "预售";
												} else {
													text = "error"
												}
												return text;
											}
										},
										{
											title : "操作",
											align : 'center',
											valign : 'middle',
											width : "100px", // 定义列的宽度，单位为像素px
											formatter : function(value, row,
													index) {
												return '<button class="btn btn-primary btn-sm" onclick="update(\''
														+ row.itemId + '\')">修改</button> &nbsp;<button class="btn btn-danger btn-sm" onclick="del(\''
														+ row.itemId
														+ '\')">删除</button>';
											}
										} 
										
										]
							})
		})

		$(document)
				.ready(
						function() {
							$(".delete")
									.click(
											function() {
												var id = $(this).prev().val();
												if (confirm("确定删除吗？删除后将无法恢复！")) {
													window.location.href = "admin_fenlei_del.action?fenlei.id="
															+ id;
													return true;
												} else {
													return false;
												}
											});

							$('.dataTables-example').dataTable();

							/* Init DataTables */
							var oTable = $('#editable').dataTable();

							/* Apply the jEditable handlers to the table */
							oTable
									.$('td')
									.editable(
											'../example_ajax.php',
											{
												"callback" : function(sValue, y) {
													var aPos = oTable
															.fnGetPosition(this);
													oTable.fnUpdate(sValue,
															aPos[0], aPos[1]);
												},
												"submitdata" : function(value,
														settings) {
													return {
														"row_id" : this.parentNode
																.getAttribute('id'),
														"column" : oTable
																.fnGetPosition(this)[2]
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

		function del(itemId) {
			$.ajax({
				type : 'post',
				url : 'deleteItem.action',
				data : {
					"itemId" : itemId
				},
				dataType : 'json',
				success : function(rtn) {
					if (true == rtn) {
						//window.location.href = '/admin/product-manage';
						$('#myTable').bootstrapTable('refresh');
					} else {
						window.alert("删除失败！")
					}
				}
			})
		}
		

		function update(itemId) {
			if (itemId == null || itemId.trim().length == 0) {
				window.alert('更新商品的 id 不正确');
				return;
			}
			
			$.ajax({
				url : 'getItemById.action?itemId=' + itemId,
				dataType : 'json',
				type : 'get',
				success : function (rtn) {
					if (rtn.status == 200) {
						// 打开编辑框并填上数据
						$('#myUpdateModal').modal('show');
			            $('#updateItemId').val(rtn.data.itemId);
			            $('#updateItemName').val(rtn.data.itemName);
			            $('#updateItemPriceFade').val(rtn.data.itemPrice / 100);
			            $('#updateItemPrice').val(rtn.data.itemPrice);
			            $('#updateItemNum').val(rtn.data.itemNum);
			            $('#updateItemCatName').val(rtn.data.itemCatName);
			            $('#updateItemStatus').val(rtn.data.itemStatus);
			            editor2.html(rtn.data.itemDesc);
					} else {
						window.alert('获取商品数据失败')
					}
					
				}
			})
			
			
		}
	</script>
</body>
</html>