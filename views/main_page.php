<link rel="stylesheet" href="<?php echo base_url('css/main_page.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/home_page.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/category_page.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/brand_page.css');?>">
<link rel="stylesheet" href="<?php echo base_url('css/search_page.css');?>">
<script src="<?php echo base_url('js/main_page.js')?>"></script>
</head>
<body id="main-page">

	<div class="left-bar">
		<div class="home">
			<br />
			<p id="logo"><a id="home-button" href="#main-page"><span class="glyphicon glyphicon-home"></span> BrandPronounce</a></p>
			<br />
			<input id="search-field" type="text" placeholder="搜索一下">
			<br>
			<a id="lucky" href="#">I'm Feeling Lucky!</a>
		</div>
		
		<div id="accordion" class="panel-group">
			<!--mp stands for main page-->
			<div class="panel panel-default mp-panel">
				<a class="accordion-item" data-toggle="collapse" data-parent="#accordion" href="#category">
					<div class="panel-heading mp-panel-heading">
						<h4 class="panel-title mp-panel-title">按类别</h4>
					</div>
				</a>
				<div id="category" class="panel-collapse collapse in">
					<div class="panel-body mp-panel-body">
						<div class="list-group">
							<?php foreach ($category as $item): ?>
								<?="<a class='list-group-item category-button' href='#'>$item</a>";?>
							<?php endforeach;?>
						</div>
					</div>
				</div>
			</div>
			<div class="panel panel-default mp-panel">
				<a class="accordion-item" data-toggle="collapse" data-parent="#accordion" href="#country">
					<div class="panel-heading mp-panel-heading">
						<h4 class="panel-title mp-panel-title">按国家</h4>
					</div>
				</a>
				<div id="country" class="panel-collapse collapse">
					<div class="panel-body mp-panel-body">
						<div class="list-group">
							<?php foreach ($country as $item):?>
								<?="<a class='list-group-item country-button' href='#'>$item</a>";?>
							<?php endforeach;?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container-fluid content-show">
	</div>
	
</body>
</html>
