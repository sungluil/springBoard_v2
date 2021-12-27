<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
body {
	height: 10000px;
}

body.active {
	background-color: red;
}

</style>
<script src="/resources/js/jquery-1.10.2.js"></script>
<title>Insert title here</title>
</head>
<body>

</body>
<script type="text/javascript">
console.clear();

var $window = $(window);

$window.scroll(function() {
	var scrollTop = $window.scrollTop();
	
	if(scrollTop > 0) {
		$('body').addClass('active');
	} else {
		$('body').removeClass('active');
	}
	//console.log("scrollTop"+scrollTop);
});


</script>
</html>