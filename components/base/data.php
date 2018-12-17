<?php

    include '../../_database/koneksi.php';
            $tanggal = array();
            $a = mysql_query("SELECT date FROM daily GROUP BY date")or die(mysql_error());
            while ($b = mysql_fetch_array($a)) {
                $c = array($b['date']);
                array_push($tanggal, $c); 
            }

echo json_encode($tanggal, JSON_NUMERIC_CHECK);
?>