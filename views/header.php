<!DOCTYPE html>
<html lang="zh-Hans">
<head>
<title><?=$title;?></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="Keywords" content="brandpronounce, brand, speak brand, pronouncebrand">
<meta name="Description" content="Teach how to pronounce luxury brands correctly.">

<!--Asyncronized load Baidu Map JS API-->
<script type="text/javascript">
function initialize() {
  var mp = new BMap.Map('map');
  mp.centerAndZoom(new BMap.Point(121.491, 31.233), 11);
}

function loadScript() {
  var script = document.createElement("script");
  script.src = "http://api.map.baidu.com/api?v=2.0&ak=sOAH5cfe70liTMMfZdl6haN6iAcOwvHC&callback=initialize";
  document.body.appendChild(script);
}
   
window.onload = loadScript; 
</script>
