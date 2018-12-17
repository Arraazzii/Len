<?php
	error_reporting(E_ALL ^ E_DEPRECATED);
	$host = 'localhost';
	$user = 'root';
	$pass = '';
	$db = 'lenproject';
	$konek = mysqli_connect($host,$user,$pass);
	$ambil = "";
	if ($konek) {
		$ambil = mysqli_select_db($konek, $db);
			if (!$ambil) {?>
				<meta http-equiv="refresh" content="300;url=../controllers/index.html">
			<?php }
	}else{
		echo "MySQL tidak terhubung";
	}

?>
