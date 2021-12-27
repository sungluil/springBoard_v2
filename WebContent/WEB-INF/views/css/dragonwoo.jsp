<!DOCTYPE html>
<html lang="en">
<head>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<style>
body {
	background-color: #000;
	text-align: center;
	color: #fff;
	font-family: 'Abril Fatface';
}

h1 {
	letter-spacing: 2px;
	text-transform: uppercase;
}

h2 {
	letter-spacing: 1px;
}

.playvideo {
	margin: 20px auto;
	display: inline-block;
	background: transparent;
	border: 2px solid #FFF;
	padding: 10px 40px 8px;
	text-transform: uppercase;
	color: #FFF;
	text-decoration: none;
	font-size: 1rem;
	letter-spacing: 0px;
	font-family: 'Arimo', sans-serif;
}

.videocontainer {
	position: fixed;
	display: none;
	top: 0;
	bottom: 0;
	border: 1px solid red;
	z-index: 1000;
	margin: 0 auto;
	left: 0;
	right: 0;
	z-index: 1300;
	height: 100vh;
}

.videocontainer .closevideo {
	position: absolute;
	top: 10px;
	right: 10px;
	cursor: pointer;
	border: 1px solid red;
}

.videocontainer video.videobox {
	/*min-width: 100%; 
   width: 100%; 
   height: auto; */
	/* border:1px solid red; */
	width: 100%;
	min-width: 100%;
	height: 80vh;
	left: 0;
	right: 0;
	position: absolute;
	background: url() no-repeat;
	background-size: cover;
	margin: 0 auto;
	top: 50%;
	-webkit-transform: translateY(-50%);
	/* Ch <36, Saf 5.1+, iOS < 9.2, An =<4.4.4 */
	-ms-transform: translateY(-50%); /* IE 9 */
	transform: translateY(-50%); /* IE 10, Fx 16+, Op 12.1+ */
}

.videooverlay {
	position: fixed;
	display: none;
	top: 0;
	z-index: 1200;
	width: 100%;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.8);
}
</style>
<body>
	<!--place video url in video tag. I'm using videojs sample video. If video link is broken use your own. -->
	<div class="videooverlay"></div>
	<div class="videocontainer">
		<div class="closevideo">X</div>
		<div class="introVideo"
			style="text-align: center; width: calc(100% - 2em); margin: 1em auto; display: none;">
			<video id="thevideo" class="videobox">
				<source
					src="https://user-images.githubusercontent.com/74703315/103217283-92e0f500-495b-11eb-8f9f-4f94b7a5d393.mp4"
					type="video/mp4">
				Your browser does not support the video tag.
			</video>
		</div>
	</div>

	<h1>test button 동영상</h1>
	<h2>클릭시 재생</h2>
	<div class="playvideo">play video</div>

	<script src="assets/js/jquery-min.js"></script>
	<script src="assets/js/popper.min.js"></script>

	<script src="assets/js/test.js"></script>
</body>
</html>