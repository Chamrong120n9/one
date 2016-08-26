<div style="background-color:#ddd; border-radius:7px; margin-top:25px; padding:7px;">
	<table class="table">
		<tr>
			<td colspan="2">Item ID:<?= $item_id ?></td>
		</tr>
		<?php
			if($num_colours>0)
		{?>
			<tr>
			<td>Colour:</td>
			<td>
				<?php
							
					$additional_dd_code=' class="form-control"';
					echo form_dropdown('status',$colour_option,$submitted_colour,$additional_dd_code)
					?>

			</td>
		</tr>
		<?php 
		}
		?>



		<?php
			if($num_sizes>0)
		{?>
			<tr>
			<td>Size:</td>
			<td>
				<?php
							
					$additional_dd_code=' class="form-control"';
					echo form_dropdown('status',$size_option,$submitted_size,$additional_dd_code)
					?>

			</td>
		</tr>
		<?php 
		}
		?>
			<tr>
			<td>Qty:</td>
			<td>
				<div class="col-sm-8" style="padding-left:0px;">
					<input type="text" class="form-control"></td>
				</div>
			</tr>
			<tr>
			<td colspan="2" style="text-align:center;">
				<div class="col-sm-10">
					<button class="btn btn-primary" type="submit"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span>Add To Basket</button>
				</div>
			</td>
			
		</tr>
	</table>




</div>