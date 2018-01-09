
<?php
use yii\widgets\LinkPager;
use yii\base\Object;
use yii\bootstrap\ActiveForm;
use common\utils\CommonFun;
use yii\helpers\Url;

use backend\models\Datum;

$modelLabel = new \backend\models\Datum();
?>

<?php $this->beginBlock('header');  ?>
<!-- <head></head>中代码块 -->
<?php $this->endBlock(); ?>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">

        <div class="box-header">
          <h3 class="box-title">数据列表</h3>
          <div class="box-tools">
            <div class="input-group input-group-sm" style="width: 150px;">
                <button id="create_btn" type="button" class="btn btn-xs btn-primary">添&nbsp;&emsp;加</button>
        			|
        		<button id="delete_btn" type="button" class="btn btn-xs btn-danger">批量删除</button>
            </div>
          </div>
        </div>
        <!-- /.box-header -->

        <div class="box-body">
          <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
            <!-- row start search-->
          	<div class="row">
          	<div class="col-sm-12">
                <?php ActiveForm::begin(['id' => 'test-search-form', 'method'=>'get', 'options' => ['class' => 'form-inline'], 'action'=>Url::toRoute('datum/index')]); ?>

                  <div class="form-group" style="margin: 5px;">
                      <label><?=$modelLabel->getAttributeLabel('id')?>:</label>
                      <input type="text" class="form-control" id="query[id]" name="query[id]"  value="<?=isset($query["id"]) ? $query["id"] : "" ?>">
                  </div>
              <div class="form-group">
              	<a onclick="searchAction()" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>搜索</a>
           	  </div>
               <?php ActiveForm::end(); ?>
            </div>
          	</div>
          	<!-- row end search -->

          	<!-- row start -->
          	<div class="row">
          	<div class="col-sm-12">
          	<table id="data_table" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="data_table_info">
            <thead>
            <tr role="row">

            <?php
              $orderby = isset($_GET['orderby']) ? $_GET['orderby'] : '';
		      echo '<th><input id="data_table_check" type="checkbox"></th>';
              echo '<th onclick="orderby(\'id\', \'desc\')" '.CommonFun::sortClass($orderby, 'id').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('id').'</th>';
              echo '<th onclick="orderby(\'name\', \'desc\')" '.CommonFun::sortClass($orderby, 'name').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('name').'</th>';
              echo '<th onclick="orderby(\'phone\', \'desc\')" '.CommonFun::sortClass($orderby, 'phone').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('phone').'</th>';
              echo '<th onclick="orderby(\'pca\', \'desc\')" '.CommonFun::sortClass($orderby, 'addr').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('pca').'</th>';
              echo '<th onclick="orderby(\'addr\', \'desc\')" '.CommonFun::sortClass($orderby, 'addr').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('addr').'</th>';
              echo '<th onclick="orderby(\'status\', \'desc\')" '.CommonFun::sortClass($orderby, 'status').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('status').'</th>';
              echo '<th onclick="orderby(\'create_user\', \'desc\')" '.CommonFun::sortClass($orderby, 'create_user').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('create_user').'</th>';
              echo '<th onclick="orderby(\'create_date\', \'desc\')" '.CommonFun::sortClass($orderby, 'create_date').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('create_date').'</th>';
              echo '<th onclick="orderby(\'update_user\', \'desc\')" '.CommonFun::sortClass($orderby, 'update_user').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('update_user').'</th>';
              echo '<th onclick="orderby(\'update_date\', \'desc\')" '.CommonFun::sortClass($orderby, 'update_date').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('update_date').'</th>';
              echo '<th onclick="orderby(\'client_ip\', \'desc\')" '.CommonFun::sortClass($orderby, 'client_ip').' tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >'.$modelLabel->getAttributeLabel('client_ip').'</th>';
			?>

            <th tabindex="0" aria-controls="data_table" rowspan="1" colspan="1" aria-sort="ascending" >操作</th>
            </tr>
            </thead>
            <tbody>

            <?php
            foreach ($models as $model) {
                echo '<tr id="rowid_' . $model->id . '">';
                echo '  <td><label><input type="checkbox" value="' . $model->id . '"></label></td>';
                echo '  <td>' . $model->id . '</td>';
                echo '  <td>' . $model->name . '</td>';
                echo '  <td>' . $model->phone . '</td>';
                echo '  <td>' . $model->pca . '</td>';
                echo '  <td>' . $model->addr . '</td>';
                echo '  <td>' .  $modelLabel->status($model->status) . '</td>';
                echo '  <td>' . $model->create_user . '</td>';
                echo '  <td>' . $model->create_date . '</td>';
                echo '  <td>' . $model->update_user . '</td>';
                echo '  <td>' . $model->update_date . '</td>';
                echo '  <td>' . $model->client_ip . '</td>';

                echo '  <td class="center">';
                echo '      <a id="view_btn" onclick="viewAction(' . $model->id . ')" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-zoom-in icon-white"></i>查看</a>';
                echo '      <a id="edit_btn" onclick="editAction(' . $model->id . ')" class="btn btn-primary btn-sm" href="#"> <i class="glyphicon glyphicon-edit icon-white"></i>修改</a>';
                echo '      <a id="delete_btn" onclick="deleteAction(' . $model->id . ')" class="btn btn-danger btn-sm" href="#"> <i class="glyphicon glyphicon-trash icon-white"></i>删除</a>';
                echo '  </td>';
                echo '</tr>';
            }

            ?>



            </tbody>
            <!-- <tfoot></tfoot> -->
          </table>
          </div>
          </div>
          <!-- row end -->

          <!-- row start -->
          <div class="row">
          	<div class="col-sm-5">
            	<div class="dataTables_info" id="data_table_info" role="status" aria-live="polite">
            		<div class="infos">
            		从<?= $pages->getPage() * $pages->getPageSize() + 1 ?>            		到 <?= ($pageCount = ($pages->getPage() + 1) * $pages->getPageSize()) < $pages->totalCount ?  $pageCount : $pages->totalCount?>            		 共 <?= $pages->totalCount?> 条记录</div>
            	</div>
            </div>
          	<div class="col-sm-7">
              	<div class="dataTables_paginate paging_simple_numbers" id="data_table_paginate">
              	<?= LinkPager::widget([
              	    'pagination' => $pages,
              	    'nextPageLabel' => '»',
              	    'prevPageLabel' => '«',
              	    'firstPageLabel' => '首页',
              	    'lastPageLabel' => '尾页',
              	]); ?>

              	</div>
          	</div>
		  </div>
		  <!-- row end -->
        </div>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>
<!-- /.content -->

<div class="modal fade" id="edit_dialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>添加客户基础资料</h3>
			</div>
			<div class="modal-body">
                <?php $form = ActiveForm::begin(["id" => "datum-form", "class"=>"form-horizontal", "action"=>Url::toRoute("datum/save")]); ?>

          <input type="hidden" class="form-control" id="id" name="id" />

          <div id="controller_id_div" class="form-group">
              <label for="name" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("name")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="name" name="Datum[name]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="action_id_div" class="form-group">
              <label for="phone" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("phone")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="phone" name="Datum[phone]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="url_div" class="form-group">
              <label for="pca" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("pca")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="pca" name="Datum[pca]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="module_name_div" class="form-group">
              <label for="addr" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("addr")?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="addr" name="Datum[addr]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="func_name_div" class="form-group">
              <label for="status" class="col-sm-2 control-label"><?php echo $modelLabel->getAttributeLabel("status")?></label>
              <div class="col-sm-10">
                  <input type="radio"  name="Datum[status]"  value="1"  />&nbsp; 正常&nbsp;&nbsp;
                  <input type="radio"  name="Datum[status]" value="2" /> &nbsp; 异常
              </div>
              <div class="clearfix"></div>
          </div>

        <!--  <div id="right_name_div" class="form-group">
              <label for="right_name" class="col-sm-2 control-label"><?php /*echo $modelLabel->getAttributeLabel("right_name")*/?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="right_name" name="Test[right_name]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="client_ip_div" class="form-group">
              <label for="client_ip" class="col-sm-2 control-label"><?php /*echo $modelLabel->getAttributeLabel("client_ip")*/?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="client_ip" name="Test[client_ip]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="create_user_div" class="form-group">
              <label for="create_user" class="col-sm-2 control-label"><?php /*echo $modelLabel->getAttributeLabel("create_user")*/?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="create_user" name="Test[create_user]" placeholder="必填" />
              </div>
              <div class="clearfix"></div>
          </div>

          <div id="create_date_div" class="form-group">
              <label for="create_date" class="col-sm-2 control-label"><?php /*echo $modelLabel->getAttributeLabel("create_date")*/?></label>
              <div class="col-sm-10">
                  <input type="text" class="form-control" id="create_date" name="Test[create_date]" placeholder="" />
              </div>
              <div class="clearfix"></div>
          </div>
-->

			<?php ActiveForm::end(); ?>
                </div>
			<div class="modal-footer">
				<a href="#" class="btn btn-default" data-dismiss="modal">关闭</a> <a
					id="edit_dialog_ok" href="#" class="btn btn-primary">确定</a>
			</div>
		</div>
	</div>
</div>
<?php $this->beginBlock('footer');  ?>
<!-- <body></body>后代码块 -->
 <script>
function orderby(field, op){
	 var url = window.location.search;
	 var optemp = field + " desc";
	 if(url.indexOf('orderby') != -1){
		 url = url.replace(/orderby=([^&?]*)/ig,  function($0, $1){
			 var optemp = field + " desc";
			 optemp = decodeURI($1) != optemp ? optemp : field + " asc";
			 return "orderby=" + optemp;
		   });
	 }
	 else{
		 if(url.indexOf('?') != -1){
			 url = url + "&orderby=" + encodeURI(optemp);
		 }
		 else{
			 url = url + "?orderby=" + encodeURI(optemp);
		 }
	 }
	 window.location.href=url;
 }
 function searchAction(){
		$('#test-search-form').submit();
	}
 function viewAction(id){
		initModel(id, 'view', 'fun');
	}

 function initEditSystemModule(data, type){
	if(type == 'create'){
		$("#id").val('');
		$("#name").val('');
		$("#phone").val('');
		$("#pca").val('');
		$("#addr").val('');
	}
	else{
		$("#id").val(data.id);
    	$("#name").val(data.name);
    	$("#phone").val(data.phone);
    	$("#pca").val(data.pca);
    	$("#addr").val(data.addr);
    	//$("#status").val(data.status);

		var rValue = data.status;
		var rObj = document.getElementsByName('Datum[status]');

		for(var i = 0;i < rObj.length;i++){
			if(rObj[i].value == rValue){
				rObj[i].checked =  'checked';
			}
		}
    	}
	if(type == "view"){
		$("#id").attr({readonly:true,disabled:true});
		$("#name").attr({readonly:true,disabled:true});
		$("#phone").attr({readonly:true,disabled:true});
		$("#pca").attr({readonly:true,disabled:true});
		$("#addr").attr({readonly:true,disabled:true});
		$("input[type='radio']").attr({readonly:true,disabled:true});
	$('#edit_dialog_ok').addClass('hidden');
	}
	else{
		$("#id").attr({readonly:false,disabled:false});
		$("#name").attr({readonly:false,disabled:false});
		$("#phone").attr({readonly:false,disabled:false});
		$("#pca").attr({readonly:false,disabled:false});
		$("#addr").attr({readonly:false,disabled:false});
		//$("#status").attr({readonly:false,disabled:false});
		$("input[type='radio']").attr({readonly:false,disabled:false});
		$('#edit_dialog_ok').removeClass('hidden');
		}
		$('#edit_dialog').modal('show');
}

function initModel(id, type, fun){

	$.ajax({
		   type: "GET",
		   url: "<?=Url::toRoute('datum/view')?>",
		   data: {"id":id},
		   cache: false,
		   dataType:"json",
		   error: function (xmlHttpRequest, textStatus, errorThrown) {
			    alert("出错了，" + textStatus);
			},
		   success: function(data){
			   initEditSystemModule(data, type);
		   }
		});
}

function editAction(id){
	initModel(id, 'edit');
}

function deleteAction(id){
	var ids = [];
	if(!!id == true){
		ids[0] = id;
	}
	else{
		var checkboxs = $('#data_table :checked');
	    if(checkboxs.size() > 0){
	        var c = 0;
	        for(i = 0; i < checkboxs.size(); i++){
	            var id = checkboxs.eq(i).val();
	            if(id != ""){
	            	ids[c++] = id;
	            }
	        }
	    }
	}
	if(ids.length > 0){
		admin_tool.confirm('请确认是否删除', function(){
		    $.ajax({
				   type: "GET",
				   url: "<?=Url::toRoute('datum/delete')?>",
				   data: {"ids":ids},
				   cache: false,
				   dataType:"json",
				   error: function (xmlHttpRequest, textStatus, errorThrown) {
					    admin_tool.alert('msg_info', '出错了，' + textStatus, 'warning');
					},
				   success: function(data){
					   for(i = 0; i < ids.length; i++){
						   $('#rowid_' + ids[i]).remove();
					   }
					   admin_tool.alert('msg_info', '删除成功', 'success');
					   window.location.reload();
				   }
				});
		});
	}
	else{
		admin_tool.alert('msg_info', '请先选择要删除的数据', 'warning');
	}

}

function getSelectedIdValues(formId)
{
	var value="";
	$( formId + " :checked").each(function(i)
	{
		if(!this.checked)
		{
			return true;
		}
		value += this.value;
		if(i != $("input[name='id']").size()-1)
		{
			value += ",";
		}
	 });
	return value;
}

$('#edit_dialog_ok').click(function (e) {
    e.preventDefault();
	$('#datum-form').submit();
});

$('#create_btn').click(function (e) {
    e.preventDefault();
    initEditSystemModule({}, 'create');
});

$('#delete_btn').click(function (e) {
    e.preventDefault();
    deleteAction('');
});

$('#datum-form').bind('submit', function(e) {
	e.preventDefault();
	var id = $("#id").val();
	var action = id == "" ? "<?=Url::toRoute('datum/create')?>" : "<?=Url::toRoute('datum/update')?>";
	$(this).ajaxSubmit({
    	type: "post",
    	dataType:"json",
    	url: action,
    	success: function(value)
    	{
			console.log(value);
        	if(value.errno == 0){
        		$('#edit_dialog').modal('hide');
        		admin_tool.alert('msg_info', '添加成功', 'success');
        		window.location.reload();
        	}
        	else{
            	var json = value.data;
        		for(var key in json){
        			$('#' + key).attr({'data-placement':'bottom', 'data-content':json[key], 'data-toggle':'popover'}).addClass('popover-show').popover('show');

        		}
        	}

    	}
    });
});


</script>
<?php $this->endBlock(); ?>