<?php include'components/base/head-login.php'; ?>
<?php 
$url        = explode("/",$_SERVER["REQUEST_URI"]);
session_start();    
include'_database/koneksi.php';

if (@$_SESSION['user']) {
    echo "<script>window.location='Dashboard/?alreadylogin'</script>";
} else {
?>
<div class="limiter">
    <div class="container-login100">
        <?php 
    if (isset($url[1])) {
      if ($url[2] == '?login=gagal') { ?>
        <div class="col-sm-12">
            <br>
            <div class="alert  alert-danger alert-dismissible fade show" role="alert">
                <span class="badge badge-pill badge-danger">Warning!</span> Login Failed, Something Wrong With Username and Password!
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
        </div>
        <?php } 
    }?>
        <div class="wrap-login100">
            <div class="login100-pic js-tilt" data-tilt>
                <img src="assets/images/img-02.png" alt="IMG">
            </div>
            <?php include 'components/form/login-admin-form.php'; ?>
        </div>
    </div>
</div>
<?php }
 include'components/base/js-login.php'; 
 ?>