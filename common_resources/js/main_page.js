var base_url = "http://localhost/ci/brandpronounce.php/main/";

$(document).ready(function() {

	$(".content-show").load(base_url + 'load-home/', function(responseTxt, statusTxt, xhr) {
		$('[data-toggle="tooltip"]').tooltip();
		clear_outline();
		//为了防止邮箱被垃圾邮件爬虫爬到所以在这里定义邮箱地址
		$("#email").click(function() {
			$(this).children("a").attr("href", "mailto:649599199@qq.com");
		});
	});
	
	$(".home-button").click(function() {
		$(".content-show").load(base_url + 'load-home/', function(responseTxt, statusTxt, xhr) {
			clear_outline();
			//为了防止邮箱被垃圾邮件爬虫爬到所以在这里定义邮箱地址
			$("#email").click(function() {
				$(this).children("a").attr("href", "mailto:649599199@qq.com");
			});
		});
	});
	
	$("#lucky").click(function() {
		$(".content-show").load(base_url + 'feel-lucky/', function(responseTxt, statusTxt, xhr) {
			clear_outline();
		});
	});
	
	$(".category-button").click(function() {
		$(".content-show").load(base_url + "load-category/cat/" + $(this).text(), function (responseTxt, statusTxt, xhr) {
			clear_outline();
			
			//规定item被点击之后的行为，不能定义在load callback function之外，因为document root不能检索ajax进来的内容
			$(".item").click(function() {
				var id = $(this).children("span").text();
				$(".content-show").load(base_url + "load_brand/" + id, function(responseTxt, statusTxt, xhr) {
					clear_outline();
				});
			});
		});
	});
	
	$(".country-button").click(function() {
		$(".content-show").load(base_url + "load-category/cou/" + $(this).text(), function (responseTxt, statusTxt, xhr) {
			clear_outline();
			//规定item被点击之后的行为，不能定义在load callback function之外，因为document root不能检索ajax进来的内容
			$(".item").click(function() {
				var id = $(this).children("span").text();
				$(".content-show").load(base_url + "load_brand/" + id, function(responseTxt, statusTxt, xhr) {
					clear_outline();
				});
			});
		});
	});
	
	$("#search-field").keyup(function(event) {
	//event.keyCode可能无法在火狐下工作。所以采用以下写法。
		var keyCode = event.which || event.keyCode;
		var query = $("#search-field").val();
		query = encodeURI(query);
		if (keyCode === 13) {
			$(".content-show").load(base_url + "load-search/" + query, function(responseTxt, statusTxt, xhr) {
				clear_outline();				
				$(".sp-a").click(function() {
					var id = $(this).find("span").text();
					$(".content-show").load(base_url + "load_brand/" + id, function(responseTxt, statusTxt, xhr) {
						clear_outline();
					});
				});
			});
		}
	});
	
	$("#cell-search").keyup(function(event) {
	//event.keyCode可能无法在火狐下工作。所以采用以下写法。
		var keyCode = event.which || event.keyCode;
		var query = $("#cell-search").val();
		query = encodeURI(query);
		if (keyCode === 13) {
			$(".content-show").load(base_url + "load-search/" + query, function(responseTxt, statusTxt, xhr) {
				clear_outline();				
				$(".sp-a").click(function() {
					var id = $(this).find("span").text();
					$(".content-show").load(base_url + "load_brand/" + id, function(responseTxt, statusTxt, xhr) {
						clear_outline();
					});
				});
			});
		}
	});
	
});


function clear_outline() {
	$("a").css('outline', 'none');
}

function prev_click() {
	var id = $("#prev-button").find("span").text();
	id = id.trim();
	$(".content-show").load(base_url + "load-brand/" + id, function(responseTxt, statusTxt, xhr) {
		keep_left_bar(".brand-content");
		clear_outline();
	});
}

function next_click() {
	var id = $("#next-button").find("span").text();
	id = id.trim();
	$(".content-show").load(base_url + "load-brand/" + id, function(responseTxt, statusTxt, xhr) {
		keep_left_bar(".brand-content");
		clear_outline();
	});
}
