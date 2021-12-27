<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/codepen.io-jangka44-pen-zYKZgJQ.css">
<script src="/resources/js/jquery-1.10.2.js"></script>
<title>Insert title here</title>
<style type="text/css">
.sbs-2021-slider .arrows > div {
	font-size: 4rem;
}
.sbs-2021-slider .arrows > div:hover {
	color: red;
}

.sbs-2021-slider .items > div {
	border:10px solid black; /* 임시 */
	margin:10px;
	padding:10px;
	font-size: :5rem;
}
.sbs-2021-slider .items > div.active {
	border-color: red;
}
</style>
</head>
<body>
<section class="section-1 con-min-width">
	<div class="con">
		<div class="sbs-2021-slider sbs-2021-slider-1">
			<div class="arrows">
				<div>
					<span>좌</span>
				</div>
				<div>
					<span>우</span>
				</div>
			</div>
			<div class="items">
				<div>내용1</div>
				<div>내용2</div>
				<div class='active'>내용3</div>
				<div>내용4</div>
				<div>내용5</div>
				<div>내용6</div>
				<div>내용7</div>
				<div>내용8</div>
				<div>내용9</div>
			</div>
		</div>
	</div>
</section>
<section class="section-2 con-min-width">
	<div class="con">
		Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officia aperiam id deleniti placeat quod ab aliquid quidem doloribus inventore earum ipsum obcaecati sit ad recusandae nam dignissimos ea ducimus aut.
		Ipsam veritatis sit illum accusamus doloribus repudiandae repellat alias non dignissimos eius voluptatem libero doloremque dolor. Quas quae velit omnis debitis quos iste aspernatur facilis in ipsa culpa odio eum.
		Assumenda placeat reiciendis suscipit enim consectetur. Tenetur esse odio labore enim maiores quo architecto nesciunt dolore at aliquam tempora sapiente aliquid fuga dolorum eius qui velit ea eligendi molestiae culpa.
		Culpa quod dolorem temporibus eos ipsum rerum provident ducimus eveniet atque incidunt assumenda quisquam quidem optio est vel ipsam tenetur nisi ab saepe facere ullam iste quia? Rem eveniet earum.
		Eligendi nihil unde odio sint enim beatae ducimus nisi sit provident quod voluptatum ea commodi iure fugiat molestias nam esse repellendus vero aliquam ab? Impedit repellendus harum quam voluptatem consequuntur!
	</div>
</section>
<script type="text/javascript">

function Sbs2021Slider__move(no, step) {
	var currentIndex = getCurrent(no)
	var lastIndex = Sbs2021Slider__lastIndex(no)
	var postIndex = currentIndex + step;
	
	if(postIndex < 0) {
		postIndex = lastIndex;
	} else if( postIndex > lastIndex ) {
		postIndex = 0;	
	}
	Sbs2021Slider__show(no, postIndex);
}
//버튼클릭시 이벤트
function Sbs2021Slider__init(no) {
	
	$('.sbs-2021-slider-1 .arrows > div').click(function() {
		var $this = $(this);
		var index = $this.index();
		var ifLeft = index == 0;
		console.log(ifLeft)
		if(ifLeft) {
			Sbs2021Slider__move(no, -1);
		} else {
			Sbs2021Slider__move(no, +1);
		}
	});
	
}
//현재 선택된 index를 반환
function getCurrent(no) {	
	var $current = $('.sbs-2021-slider-1 .items > div.active');
	return $current.index();
}


//이동한거 활성화 나머지 비활성화
function Sbs2021Slider__show(no, index) {
	
	var $selectedItem = $('.sbs-2021-slider-'+ no +' .items > div').eq(index);
	var $siblings = $selectedItem.siblings();
	$selectedItem.siblings().removeClass('active');
	$selectedItem.addClass('active');
	
}
function Sbs2021Slider__lastIndex(no) {
	return $('.sbs-2021-slider-1 .items > div:last-child').index();
}

Sbs2021Slider__init(1);




















// function Sbs2021Slider__getCurrentItemIndex(no) {
// 	var $selectedItem = $('.sbs-2021-slider-'+ no +' .items > div.active');
	
// 	return $selectedItem.index();
// }

// function Sbs2021Slider__init(no) {
	
// 	$('.sbs-2021-slider-'+ no +' .arrows > div').click(function() {
		
// 		var $this = $(this);
// 		var index = $this.index();
// 		console.log(index);
// 		var isLeft = index == 0;
		
// 		var currentItemIndex = Sbs2021Slider__getCurrentItemIndex(no);
		
// 		var postItemIndex;
		
// 		if( isLeft ) {
// 			postItemIndex = currentItemIndex -1;	
// 		} else {
// 			postItemIndex = currentItemIndex +1;
// 		}
// 		Sbs2021Slider__show(1, postItemIndex);
// 	});
// }

// function Sbs2021Slider__show(no, index) {
// 	//$('.sbs-2021-slider-'+ no +' .items > div:nth-child('+(index + 1)+')');
// 	var $selectedItem = $('.sbs-2021-slider-'+ no +' .items > div').eq(index);
	
// 	$selectedItem.siblings().removeClass('active');
	
// 	$selectedItem.addClass('active');
// }


// Sbs2021Slider__init(1);

// Sbs2021Slider__show(1, 1);



</script>
</body>
</html>