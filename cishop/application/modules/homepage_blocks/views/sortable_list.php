<style>
	.sort{
		list-style: none;
		border: 1px #ccc solid;
		color: #333;
		padding: 10px;
		margin-bottom: 4px;
	}

</style>
<ul id="sortlist">	
	<?php 
	$this->load->module('homepage_blocks');
	$this->load->module('homepage_offers');
	foreach($query->result() as $row) {
		//$num_sub_cats=$this->homepage_blocks->_count_sub_cats($row->id);
		$edit_item_url=base_url()."homepage_blocks/create/".$row->id;
		$view_item_url=base_url()."homepage_blocks/view/".$row->id;
		$block_title=$row->block_title;
		/*if($row->parent_cat_id==0){
			$parent_cat_title="&nbsp";
		}else{
		$parent_cat_title=$this->homepage_blocks->_get_cat_title($row->parent_cat_id);	
		}*/
						  	
		?>
	<li class="sort" id="<?=$row->id?>"><i class="icon-sort"></i><?= $row->block_title ?>
	<?= $block_title ?>
		<?php
		$num_items= $this->homepage_offers->count_where('block_id',$row->id);
			
				if($num_items==1){
					$entity="Homepage Offer";
				}else{
					$entity="Homepage Offers";
				}
				$sub_cat_url=base_url()."homepage_blocks/manage/".$row->id;
				?>
				<a class="btn btn-default" href="<?= base_url() ?>">
				<i class="halflings-icon white eye-open"></i>  
				
				</a>
				<a class="btn btn-info" href="<?= $edit_item_url ?>">
					<i class="halflings-icon whit edit"></i>
				</a>
		
	</li>
	<?php
	}?>
</ul>