<?php
include '../../components/base/head.php';
include '../../components/navigation/first-navigation-user.php';
$base_url = '';

	if(isset($_GET['page'])){
		$page = $_GET['page'];
		$file = $page.".php";
		switch ($page) {
			case 'home':
				include "home.php";
			break;
			case 'getData':
				include "home.php";
			break;
		}
	}
	 ?>

<?php include '../../components/base/footer.php';
	 //}
 ?>
