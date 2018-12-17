<?php
        include '../../_database/koneksi.php';
        $no = 1;
        $sql = mysql_query("SELECT * FROM daily JOIN project ON daily.kode_project = project.kode_project JOIN alarm ON daily.kode_alarm = alarm.kode_alarm WHERE daily.date = '2018-09-01' ORDER BY daily.kode_project ASC")or die(mysql_error());
        if (mysql_num_rows($sql) > 0) {
        while ($data = mysql_fetch_array($sql)) {
        ?>
    <tr>
        <td>
            <?php echo $no++;?>.
        </td>
        <td>
            <?php echo $data['kode_project'];?>
        </td>
        <td>
            <?php echo $data['site'];?>
        </td>
        <td>
            <?php echo $data['province'];?>
        </td>
        <td>
            <?php echo $data['status'];?>
        </td>
        <td>
            <?php echo $data['alarm_type'];?>
        </td>
        <td>
            <?php echo $data['date'];?>
        </td>
    </tr>
    <?php }
        } else { ?>
    <tr>
        <td colspan="7">
            TIDAK ADA DATA
        </td>
    </tr>
    <?php } ?>