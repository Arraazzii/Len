<?php
session_start();
include '../../_database/koneksi.php';
   if (isset($_POST)) {
     if ($_POST['mode'] == "map") {
       $tgl = $_POST['tgl'];
       $test = "testssssssssss!!!";
       $get = mysqli_query($konek,"SELECT * FROM daily INNER JOIN project ON daily.kode_project = project.kode_project WHERE daily.date ='".$tgl."'");
       $hasil = array();
       $data = array();
       $warna = array();
       while ($d = mysqli_fetch_array($get)) {
           if ($d['availability'] >= 98 && $d['status'] == 'up') {
               $color = 'green';
           } else if ($d['availability'] >= 1 && $d['status'] == 'up') {
               $color = 'yellow';
           } else {
               $color = 'red';
           }
           $ledak = explode('-', $d['link_site']);
           $hasil[] = $ledak;
           $data[] = $d;
           $warna[] = $color;
        }
       $return= [
         'link_site' => $hasil ,
         'data' => $data,
         'tgl' => $tgl,
         'color' => $warna
       ];
       echo json_encode($return);

     }
     if ($_POST['mode'] == "availability") {
       $tgl = $_POST['tgl'];
       $get = mysqli_query($konek,"SELECT * FROM daily JOIN project ON daily.kode_project = project.kode_project JOIN alarm ON daily.kode_alarm = alarm.kode_alarm WHERE daily.date = '".$tgl."' ORDER BY daily.kode_project ASC");
       $hasil = array();
       $data = array();
       $warna = array();
       while ($d = mysqli_fetch_array($get)) {
           $data[] = $d;
        }
       $return= [
         //'link_site' => $hasil ,
         'data' => $data,
         'tgl' => $tgl,
         //'color' => $warna
       ];
       echo json_encode($return);
     }

     if ($_POST['mode'] == "alarm") {
       $tgl = $_POST['tgl'];
       $get = mysqli_query($konek,"SELECT * FROM daily JOIN project ON daily.kode_project = project.kode_project JOIN alarm ON daily.kode_alarm = alarm.kode_alarm WHERE daily.date = '".$tgl."' ORDER BY daily.kode_project ASC");
       $hasil = array();
       $data = array();
       $warna = array();
       while ($d = mysqli_fetch_array($get)) {
           $data[] = $d;
        }
       $return= [
         //'link_site' => $hasil ,
         'data' => $data,
         'tgl' => $tgl,
         //'color' => $warna
       ];
       echo json_encode($return);
     }
   }
?>
