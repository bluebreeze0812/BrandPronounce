<div class="row">
	<div class="col-sm-8 home-content">
		<h1 id="home-title">Home</h1>
		<hr>
		<div id="home-git">
			<span>Github：</span>
			<button id="github" class="btn btn-link home-btn-link" data-toggle="tooltip" data-placement="auto right" title="bluebreeze0812">
				<i class="fa fa-github"></i>
			</button>
		</div>
		
		<div id="home-share">
			<span>分享：</span>
			<a id="google-plus" class="btn btn-link home-btn-link" target="_blank" 
			href="https://plus.google.com/share?url=<?=$my_url;?>&hl=zh-CN">
				<i class="fa fa-google-plus-official"></i>
			</a>
			
			<a id="facebook" class="btn btn-link home-btn-link" target="_blank" 
			href="http://www.facebook.com/share.php?u=<?=$my_url;?>">
				<i class="fa fa-facebook-official"></i>
			</a>

			<a id="twitter" class="btn btn-link home-btn-link" target="_blank" 
			href="https://twitter.com/home?status=Learn to pronounce luxury goods in <?=$my_url;?>">
				<i class="fa fa-twitter"></i>
			</a>
		</div>
		
		<div id="home-contact">
			<span>联系：</span>
			<button id="qq" class="btn btn-link home-btn-link" data-toggle="tooltip"
			data-placement="auto right" title="649599199">
				<i class="fa fa-qq"></i>
			</button>
		</div>
		
		<hr>
		<footer>
			<p>&copy; 版权所有：BrandPronounce</p>
			<p id="email">有意见请联系：<a href="#">Click Here</a></p>
		</footer>
				
	</div>
	
	
	<div class="col-sm-4">
		<div class="thumbnail">
			<img id="home-img" src="<?php echo base_url('imgs/Leo.png');?>" 
			title="Developer" alt="Leo Wang">
			<div class="caption">
				<span>
					<img src="<?php echo base_url('32_flags/China.png');?>"
					title="中国" alt="中国">
				</span>&nbsp;
				Leo Wang
			</div>
		</div>
	</div>
</div>
