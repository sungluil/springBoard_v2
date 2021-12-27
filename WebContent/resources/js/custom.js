$(document).ready(function() {
	moveToTop();
	console.log("Hello world");
});

function moveToTop() {
	$('.top').click(function(e) {
		e.preventDefault();
		$('html').animate({ scrollTop: 0 }, 800, 'easeOutCirc');
	});
}

var $window = $(window);
$window.scroll(function() {
	
	var scrollTop = $window.scrollTop();
	
	if(scrollTop > 400) {
		//$('body').addClass('active');

	} else {
		//$('body').removeClass('active');
	}
	console.log("scrollTop"+scrollTop);
});


/*
var scrollPosition = $(".top").offset().top;
console.log("scrollPosition"+scrollPosition);
$("html").animate({
	scrollTop: scrollPosition
}, 500);
*/
