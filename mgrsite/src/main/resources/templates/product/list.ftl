<!--[if lte IE 9]>
<link rel="stylesheet" href="/assets/css/ace-part2.min.css" />
<![endif]-->
<!--[if lte IE 9]>
  <link rel="stylesheet" href="/assets/css/ace-ie.min.css" />
<![endif]-->
<script src="/assets/js/ace-extra.min.js"></script>
<!--[if lte IE 8]>
<script src="/assets/js/html5shiv.min.js"></script>
<script src="/assets/js/respond.min.js"></script>
<![endif]-->
<style type="text/css">
	.CSSearchTbl{ border:1px #008CD4 solid;}
	.CSSearchTbl thead{}
	.CSSearchTbl thead tr{}
	.CSSearchTbl thead tr th{  text-align:left; padding-left:10px;}
	.CSSearchTbl tbody{}
	.CSSearchTbl tbody tr{}
	.CSSearchTbl tbody tr td{  padding: 10px;}
	.CSSearchTbl tbody tr td.right{ text-align: left;}
	.CSSearchTbl tbody tr td.left{ text-align: right;}
	.table-responsive{ display: none;}
</style>

<#--分页插件-->
<script type="text/javascript" src="/js/plugins/jquery.twbsPagination.min.js"></script>

<script type="text/javascript">
    $(function () {
        $("#pagination_container").twbsPagination({
            totalPages:10<#--${pageResult.totalPage}-->,
            visiblePages:5<#--${pageResult.pageSize}-->,
            startPage:1<#--${pageResult.currentPage}-->,
            first:"首页",
            prev:"上一页",
            next:"下一页",
            last:"末页",
            onPageClick:function(event,page){
               /* $("#currentPage").val(page);
                var param = $("#searchForm").serialize();
                $("#productList").load("/product/page?"+param);*/
            }
        });
    })
</script>
<!-- /section:settings.box -->
<div class="page-content-area">

	<div class="row">
		<div class="col-xs-12">
			<!-- PAGE CONTENT BEGINS -->
			<div class="row">
				<div class="col-xs-12">
					<table id="sample-table-1" class="table table-striped table-bordered table-hover">
						<thead>
						<tr>
							<th class="center">
								<label class="position-relative">
									<input type="checkbox" class="ace" />
									<span class="lbl"></span>
								</label>
							</th>
							<th>航班类型</th>
							<th>客舱级别</th>
							<th class="hidden-480">行李数量上限</th>
							<th>

								每件尺寸限制
							</th>
							<th class="hidden-480">
								<i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
								每件重量上限</th>
							<th class="hidden-480">操作</th>
						</tr>
						</thead>

						<tbody>
						<tr>
							<td class="center">
								<label class="position-relative">
									<input type="checkbox" class="ace" />
									<span class="lbl"></span>
								</label>
							</td>

							<td>
								<a href="#">国内航班</a>
							</td>
							<td>头等舱</td>
							<td class="hidden-480">2件</td>
							<td>A+B+C<145cm</td>

							<td class="hidden-480">
								<span class="label label-sm label-success">5千克</span>
							</td>
							<td>
								<div class="hidden-sm hidden-xs btn-group">
									<button class="btn btn-xs btn-success" title="">
										<i class="ace-icon fa fa-search-plus bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-info">
										<i class="ace-icon fa fa-pencil bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-danger">
										<i class="ace-icon fa fa-trash-o bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-warning">
										<i class="ace-icon fa fa-flag bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-success">
										<i class="ace-icon fa fa-check bigger-120"></i>
									</button>
								</div>
							</td>
						</tr>
						<tr>
							<td class="center">
								<label class="position-relative">
									<input type="checkbox" class="ace" />
									<span class="lbl"></span>
								</label>
							</td>

							<td>
								<a href="#">国内航班</a>
							</td>
							<td>头等舱</td>
							<td class="hidden-480">2件</td>
							<td>A+B+C<145cm</td>

							<td class="hidden-480">
								<span class="label label-sm label-success">5千克</span>
							</td>
							<td>
								<div class="hidden-sm hidden-xs btn-group">
									<button class="btn btn-xs btn-success" title="">
										<i class="ace-icon fa fa-search-plus bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-info">
										<i class="ace-icon fa fa-pencil bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-danger">
										<i class="ace-icon fa fa-trash-o bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-warning">
										<i class="ace-icon fa fa-flag bigger-120"></i>
									</button>

									<button class="btn btn-xs btn-success">
										<i class="ace-icon fa fa-check bigger-120"></i>
									</button>
								</div>
							</td>
						</tr>



						</tbody>
					</table>
				</div><!-- /.span -->
			</div><!-- /.row -->

		</div><!-- /.col -->
	</div><!-- /.row -->
</div><!-- /.page-content-area -->

<!--分页代码块-->
<div style="text-align: center;" id="pagination_container"></div>

<!--[if !IE]> -->
<script type="text/javascript">
	window.jQuery || document.write("<script src='/assets/js/jquery.min.js'>"+"<"+"/script>");
</script>

<!-- <![endif]-->

<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
<script type="text/javascript">
	if('ontouchstart' in document.documentElement) document.write("<script src='/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
</script>
<script src="/assets/js/bootstrap.min.js"></script>

<script src="/assets/js/jquery.dataTables.min.js"></script>
<script src="/assets/js/jquery.dataTables.bootstrap.js"></script>

<!-- ace scripts -->
<script src="/assets/js/ace-elements.min.js"></script>
<script src="/assets/js/ace.min.js"></script>

<script type="text/javascript">
	jQuery(function($) {

		$(".tbl-search").click(function(){
			$(".table-responsive").slideDown("fast");
		})

		var oTable1 =
				$('#sample-table-2')
						.dataTable( {
							bAutoWidth: false,
							bInfo:false,
							"aoColumns": [
								{ "bSortable": false },
								null,
								null,
								null,
								null,
								null,
								{ "bSortable": false },
								null,
								{ "bSortable": false }
							],
							"aaSorting": [],
						} );

		$(document).on('click', 'th input:checkbox' , function(){
			var that = this;
			$(this).closest('table').find('tr > td:first-child input:checkbox')
					.each(function(){
						this.checked = that.checked;
						$(this).closest('tr').toggleClass('selected');
					});
		});

	})

</script>
