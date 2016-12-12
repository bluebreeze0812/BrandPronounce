<div class="search-content">
	<?php foreach ($brands as $brand):?>
		<!--sp stands for search page-->
		<a href="#" class="sp-a">
			<div class="well well-sm sp-well">
				<h3><?=$brand['name'];?> <small><?=$brand['eng_name'];?></small></h3>
				<span class="hidden"><?=$brand['id'];?></span>
			</div>
		</a>
	<?php endforeach;?>
</div>
