<?php
 session_start();
    if (isset($_POST['login'])) {

        require '../../_database/koneksi.php';

        $email                      = mysqli_real_escape_string($konek,$_POST['email']);
        $password                   = mysqli_real_escape_string($konek,$_POST['pass']);
        $query                      = mysqli_query($konek,"SELECT * FROM login where email = '$email' AND password = '$password'") or die(mysqli_error());

        if (mysqli_num_rows($query) > 0) {
            $row                    = mysqli_fetch_array($query);
            $kode_user              = $row['id_user'];

        if (!empty($kode_user)) {
                $_SESSION['kode_user']  = $kode_user;
                $_SESSION['user']       = "user";
                echo "<script>window.location.href='/Len/home?login=berhasil'</script>";
            }
        } else {
            echo "<script>window.location.href='/Len/?login=gagal'</script>";
        }
    }
?>
