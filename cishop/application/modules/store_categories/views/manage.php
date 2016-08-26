<h1>Manage Categories</h1>

<?php 
if(isset($flash)){
	echo $flash;
}
$create_item_url=base_url()."store_categories/create";
?>
<p style="margin-top:30px;">
		<a href="<?= $create_item_url ?>"><button type="button" class="btn btn-primary">Add New Categories</button></a>
		
		</p>

	<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white align-justify"></i><span class="break"></span>Existing Categories </h2>
						<div class="box-icon">
							
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<?php
						//echo $parent_cat_id;
						echo Modules::run('store_categories/_draw_sortable_list',$parent_cat_id);
						
						?>
						<!--<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
								  <th>Category Title</th>
								  <th>Parent Category</th>
								 <th>Sub Category</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <?php 
						  $this->load->module('store_categories');
						  foreach($query->result() as $row) {
						  	$num_sub_cats=$this->store_categories->_count_sub_cats($row->id);
						  	$edit_item_url=base_url()."store_categories/create/".$row->id;
						  	$view_item_url=base_url()."store_categories/view/".$row->id;
						  	if($row->parent_cat_id==0){
						  		$parent_cat_title="-";
						  	}else{
						  	$parent_cat_title=$this->store_categories->_get_cat_title($row->parent_cat_id);	
						  	}
						  	
						  	
						  	?>

							<tr>
								<td><?= $row->cat_title ?></td>
								<td class="center">
									<?= $parent_cat_title ?>
								</td>
								<td class="center">
									<?php
									if($num_sub_cats<1){
										echo "-";
									}else{
										if($num_sub_cats==1){
											$entity="Category";
										}else{
											$entity="Categories";
										}
										$sub_cat_url=base_url()."store_categories/manage/".$row->id;
										?>
										<a class="btn btn-default" href="<?= $sub_cat_url ?>">
										<i class="halflings-icon white zoom-in"></i>  
										<?php echo $num_sub_cats."".$entity; ?>
									</a><?php
										
									} 
									?>
								</td>

								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
									<a class="btn btn-info" href="<?= $edit_item_url ?>">
										<i class="halflings-icon white edit"></i>  
									</a>
									
								</td>
							</tr>
							<?php

							}?>

							
						  </tbody>
					  </table>   -->     
					</div>
				</div><!--/span-->
			
			</div><!--/row-->
