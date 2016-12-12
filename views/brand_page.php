<div class="row">
	<div class="col-sm-8 brand-content">
		<h1 id="brand-title"><?=$specific['eng_name'];?></h1>
		<hr>
		<div id="brand-pro"><span>读音：</span>
			<button class="btn btn-link">
				<span id="brand-phonetic" class="glyphicon glyphicon-volume-up"></span>
			</button>
			<span id="phonetic-content"><?=$specific['phonetic'];?></span>
		</div>
		
		<div id="brand-web">
			<span>官网：</span>
			<a href="<?=$specific['website'];?>" target="_blank" 
			title="访问<?=$specific['name'];?>中国"><?=$specific['website'];?></a>
		</div>
		
		<div id="brand-brief"><span>简介：</span>
			<p><?=$specific['brief'];?></p>
			<p id="brand-baike">——参见 
				<a href="http://baike.baidu.com/item/<?=$specific['eng_name'];?>" 
				title="访问此内容的百度百科" target="_blank">百度词条</a></p>
		</div>
		<br>
		<div class="row">
			<a id="prev-button" href="#" onclick="prev_click()">
				<div class="col-sm-6 previous">
					Previous
					<span class="hidden">
						<?php
							$prev_id = $specific['id'] - 1;
							if ($prev_id === 0)
							{
								$prev_id = $specific['all_row'];
							}
							echo $prev_id;
						?>
					</span>
				</div>
			</a>
			<a id="next-button" href="#" onclick="next_click()">
				<div class="col-sm-6 next">
					Next
					<span class="hidden">
						<?php
							$next_id = $specific['id'] + 1;
							if ($next_id > $specific['all_row'])
							{
								$next_id = 1;
							}
							echo $next_id;
						?>
					</span>
				</div>
			</a>
		</div>
		
	</div>
	
	
	<div class="col-sm-4">
		<?php
		$dir = '/var/www/html/ci/imgs/';
		$dir_arr = scandir($dir);
		foreach ($dir_arr as $file)
		{
			if (pathinfo($file, PATHINFO_FILENAME) === $specific['eng_name'])
			{
				$img = $file;
			}
		}
		?>
		<div class="thumbnail">
			<img id="brand-img" src="<?php echo base_url('imgs/' . $img);?>" 
			title="<?=$specific['eng_name'];?>" alt="<?=$specific['eng_name'];?>">
			<div class="caption">
				<span>
					<img src="<?php echo base_url('32_flags/' . $specific['flag'] . '.png');?>"
					title="<?=$specific['nation'];?>" alt="<?=$specific['nation'];?>">
				</span>&nbsp;
				<?=$specific['name'];?>
			</div>
		</div>
	</div>
</div>
