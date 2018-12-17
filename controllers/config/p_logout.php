<?php 
	session_start();
	unset($_SESSION['user']);
	unset($_SESSION['kode_user']);
	unset($_SESSION['nama_depan']);
	header('location:../../');
?>