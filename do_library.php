<?php
$dbhost = 'localhost';
$dbuser = 'library';
$dbpass = 'SxWsZTPIWStAydT5';
$dbname = 'library';
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);

if(! $conn ){
	die('Could not connect: ' . mysqli_error());
}
$sql = "SELECT * FROM borrows";
$sql = " ORDER BY StudentCode DESC";
$result = mysqli_query($conn,$sql);
?>
<html>
<head>
<style type="text/css">
	html {
	background-image: url('https://image.freepik.com/free-photo/opened-book-grass-sunlight_23-2148199854.jpg');
	background-repeat: no-repeat;
	background-position: center center;
	background-attachment: fixed;
	-o-background-size: 100% 100%, auto;
	-moz-background-size: 100% 100%, auto;
	-webkit-background-size: 100% 100%, auto;
	background-size: 100% 100%, auto;
	}
</style>
	<title>Book Center</title>
<script type="text/javascript">
function validateForm(){
	var t1 = document.getElementById("search").value;
	if (t1.length == 0) {
		alert("กรุณาใส่่ชื่อหนังสือ");
		return false;
	}
}
</script>
</head>
<body>
<center>
<font color = "#009688" >
<h1>ระบบยืม-คืนหนังสือ</h1>
<form action="library.php" onsubmit="return validateForm()" method="post">
	</select><br />
	<input type="text" name="search" id="search" placeholder="กรุณาใส่่ชื่อหนังสือ" /><br />
	<input type="submit" value="ตรวจสอบหนังสือ" />
</form>
<h3>ข้อมูลสถานะหนังสือ</h3>
<form action="library.php"  method="post">
	</select><br />
	<input type="submit" value="ตรวจสอบ" />
</form>
</center>
<?php
mysqli_close($conn);
?>
</body>
</html>