<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>fullPage</title>
	<link href="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.css" rel="stylesheet">
	<link rel="stylesheet" href="/resources/css/Responsive.css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/fullPage.js/2.6.6/jquery.fullPage.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js" 
	integrity="sha512-0QbL0ph8Tc8g5bLhfVzSqxe9GERORsKhIn1IrpxDAgUsbBGz/V7iSav2zzW325XGd1OMLdL4UiqRJj702IeqnQ==" 
	crossorigin="anonymous" defer></script>
</head>
<body>
	<div id="fullpage">
		<div class="section">
			<div class="top-img-box con img-box">
				<h2>section 1</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
				Cupiditate possimus perferendis eos corporis obcaecati vel fugiat 
				nihil aspernatur voluptatem adipisci cum accusantium aliquid non 
				ratione a debitis doloribus voluptatibus impedit!</p>
				<img alt="" src="https://cdnweb01.wikitree.co.kr/webdata/editor/202007/23/img_20200723153912_e7e74b04.webp">
			</div>
		</div>
		<div class="section">
			<div class="top-img-box con img-box">
				<h2>section 2</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
				Cupiditate possimus perferendis eos corporis obcaecati vel fugiat 
				nihil aspernatur voluptatem adipisci cum accusantium aliquid non 
				ratione a debitis doloribus voluptatibus impedit!</p>
				<img alt="" src="https://i.pinimg.com/originals/7d/86/3d/7d863d4df70ec6586018fb6111835c78.jpg">
			</div>
		</div>
		<div class="section">
			<div class="top-img-box con img-box">
				<h2>section 3</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
				Cupiditate possimus perferendis eos corporis obcaecati vel fugiat 
				nihil aspernatur voluptatem adipisci cum accusantium aliquid non 
				ratione a debitis doloribus voluptatibus impedit!</p>
				<img alt="" src="https://www.maximkorea.net/missmaxim/m2girl/202010/editor_1604045361.jpg">
			</div>
		</div>
		<div class="section">
			<div class="top-img-box con img-box">
				<h2>section 4</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
				Cupiditate possimus perferendis eos corporis obcaecati vel fugiat 
				nihil aspernatur voluptatem adipisci cum accusantium aliquid non 
				ratione a debitis doloribus voluptatibus impedit!</p>
				<img alt="" src="https://www.stardailynews.co.kr/news/photo/202010/284333_324806_158.jpg">
			</div>
		</div>
		<div class="section">
			<div class="top-img-box con img-box">
				<h2>section 5</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. 
				Cupiditate possimus perferendis eos corporis obcaecati vel fugiat 
				nihil aspernatur voluptatem adipisci cum accusantium aliquid non 
				ratione a debitis doloribus voluptatibus impedit!</p>
				<img alt="" src="https://i.pinimg.com/originals/d8/be/37/d8be3724640b0d70a6626093b57f6c0c.jpg">
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			  
			$('#fullpage').fullpage({
				sectionSelector : '.section',
				navigation : true,
				slidesNavigation : true,
				css3 : true,
				controlArrows : false
			});

		});
	</script>
</body>
</html>