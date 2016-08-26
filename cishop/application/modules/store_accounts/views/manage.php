<h1>Manage Account</h1>

<?php 
if(isset($flash)){
	echo $flash;
}
$create_account_url=base_url()."store_accounts/create";
?>

<p style="margin-top:30px;">
		<a href="<?= $create_account_url ?>"><button type="button" class="btn btn-primary">Add New Account</button></a>
		
		</p>

	<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white tag"></i><span class="break"></span>Customer Accounts</h2>
						<div class="box-icon">
							
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<table class="table table-striped table-bordered bootstrap-datatable datatable">
						  <thead>
							  <tr>
							  		<th>User Name</th>
								  <th>First Name</th>
								  <th>Last Name</th>
								  <th>Company</th>
								  <th>Date Create</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
						  <?php 
						  $this->load->module('timedate');

						  foreach($query->result() as $row) {
						  	$edit_account_url=base_url()."store_accounts/create/".$row->id;
						  	$view_account_url=base_url()."store_accounts/view".$row->id;
						  	$date_create=$this->timedate->get_nice_date($row->date_made,'cool');	
						  	
						  	?>

							<tr>
								<td><?= $row->username ?></td>
								<td><?= $row->firstname ?></td>
								<td class="center"><?= $row->lastname ?></td>
								<td class="center"><?= $row->company ?></td>
								<td class="center">
									<?=$date_create ?>
								</td>

								<td class="center">
									
									<a class="btn btn-info" href="<?= $edit_account_url ?>">
										<i class="halflings-icon white edit"></i>  
									</a>
									
								</td>
							</tr>
							<?php

							}?>

							
						  </tbody>
					  </table>            
					</div>
				</div><!--/span-->
			
			</div><!--/row-->

