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
			<p id="logo"><a class="home-button" href="#"><span class="glyphicon glyphicon-home"></span> BrandPronounce</a></p>
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
	
	<nav id="cell-nav" class="navbar navbar-inverse">
	  <div class="container-fluid">
		<div class="navbar-header">
		  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>
		    <span class="icon-bar"></span>                        
		  </button>
		  <a class="navbar-brand home-button" href="#">BrandPronounce</a>
		  <div id="for-pad" class="input-group">
				<input type="text" id="pad-search" class="form-control" placeholder="Search"> 
  			</div>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<div id="for-phone" class="input-group nav navbar-nav">
				<input type="text" id="phone-search" class="form-control" placeholder="Search"> 
			</div>
		  <ul class="nav navbar-nav navbar-right">
		    <li class="dropdown">
		      <a class="dropdown-toggle" data-toggle="dropdown" href="#">按类别 <span class="caret"></span></a>
		      <ul class="dropdown-menu">
		      	<?php foreach ($category as $item): ?>
					<?="<li><a class='category-button' href='#'>$item</a></li>";?>
				<?php endforeach;?>
		      </ul>
		    </li>
		  </ul>
		  <ul class="nav navbar-nav navbar-right">
		    <li class="dropdown">
		      <a class="dropdown-toggle" data-toggle="dropdown" href="#">按国家 <span class="caret"></span></a>
		      <ul class="dropdown-menu">
		        <?php foreach ($country as $item):?>
					<?="<li><a class='country-button' href='#'>$item</a></li>";?>
				<?php endforeach;?>
		      </ul>
		    </li>
		  </ul>

		</div>
	  </div>
	</nav>
	
	<div class="container-fluid content-show">
	</div>
	
</body>
</html>
