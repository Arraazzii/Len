<!--   Core JS Files   -->
<script src="assets/js/core/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
<script src="assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBupJi76UdJS05jVLyuFGSf3Mm0wOxbI8I"></script>
<!-- Chartist JS -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/demo/demo.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script>
$(document).ready(function() {
    // Javascript method's body can be found in assets/js/demos.js
    md.initDashboardPageCharts();

});
</script>
<script type="text/javascript">
$(document).ready(function() {
    var mymap = L.map('mapid').setView([-1.601525, 118.409482], 4);
    var date = new Date();
    var firstDay = new Date(date.getFullYear(), date.getMonth(), 1);
    var first = 1;
    var bulan = '09';
    var tahun = '2018';
    var lastDay = new Date(date.getFullYear(), date.getMonth() + 1, 0);
    var last = lastDay.getDate();
    var layerGroup = L.layerGroup().addTo(mymap);
    // console.log(firstDay, lastDay, lastDay.getDate());
    L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibXV0aW11dCIsImEiOiJjam0wOHhjcGMwaDFhM2ttemthMW13aW1lIn0.zaEfV2UkJDZd4ml0RtfWww', {
        attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
        maxZoom: 18,
        id: 'mapbox.streets',
        accessToken: 'your.mapbox.access.token'
    }).addTo(mymap);


    function getAjaxMap(tgl){
      //console.log(date.getFullYear() + "-" + (date.getMonth()+1) + "-" + first);
      datapost = {
        mode : 'map',
        tgl : tgl
      };
      $.ajax({
           type	: "POST",
           url	: "components/base/getData.php",
           data	: datapost,
           dataType: "json",
           success: function(datatext) {
             //console.log(datatext);
             layerGroup.clearLayers();
             var link_site = datatext.link_site;
             var data = datatext.data;
             var color = datatext.color;
             $.each( data, function( key, value ) {
               var coor1 = data[key].site1.split(",");
               var coor2 = data[key].site2.split(",");
                    if (data[key].status == 'up') {
                    var marker = L.marker(coor1, {
                       icon: L.divIcon({
                         html: '<i class="material-icons text-success" style="margin-top:-5px;margin-left:5px;">room</i>',
                         iconSize: [30, 30],
                         className: 'myDivIcon'
                       })
                     }).addTo(layerGroup);
                    marker.bindPopup(link_site[key][0]+"<br>"+coor1);
                    // console.log(link_site[key][0]+"<br>["+data[key].site1+"]", link_site[key][1]+"<br>["+data[key].site2+"]",data[key].site1.split(","));
      
                    var marker = L.marker(coor2, {
                       icon: L.divIcon({
                         html: '<i class="material-icons text-success" style="margin-top:-5px;margin-left:5px;">room</i>',
                         iconSize: [30, 30],
                         className: 'myDivIcon'
                       })
                     }).addTo(layerGroup);
                    marker.bindPopup(link_site[key][1]+"<br>"+coor2);
                    } else {
                    var marker = L.marker(coor1, {
                       icon: L.divIcon({
                         html: '<i class="material-icons text-danger" style="margin-top:-5px;margin-left:5px;">room</i>',
                         iconSize: [30, 30],
                         className: 'myDivIcon'
                       })
                     }).addTo(layerGroup);
                    marker.bindPopup(link_site[key][0]+"<br>"+coor1);
                    // console.log(link_site[key][0]+"<br>["+data[key].site1+"]", link_site[key][1]+"<br>["+data[key].site2+"]",data[key].site1.split(","));
      
                    var marker = L.marker(coor2, {
                       icon: L.divIcon({
                         html: '<i class="material-icons text-danger" style="margin-top:-5px;margin-left:5px;">room</i>',
                         iconSize: [30, 30],
                         className: 'myDivIcon'
                       })
                     }).addTo(layerGroup);
                    marker.bindPopup(link_site[key][1]+"<br>"+coor2);
                    }

               var polygon = L.polygon([
                   coor1,
                   coor2
               ], {
                   color: color[key],
                   weight: 1,

               }).addTo(mymap);
               polygon.bindPopup(data[key].kode_project + "<br>"+data[key].province+"<br>"+data[key].link_site+"<br>"+coor1+","+coor2+"<br>Availability : "+data[key].availability+" ");

             });

             $("#mapTgl").text(tgl);
           },
           error: function(e){
            console.log('Error: ' + e);
           }
         });
    }

    function getAjaxAvaibility(tgl){
      //console.log(date.getFullYear() + "-" + (date.getMonth()+1) + "-" + first);
      $("#tableAvailability").html(" ");
      datapost = {
        mode : 'availability',
        tgl : tgl
      };
      $.ajax({
           type	: "POST",
           url	: "components/base/getData.php",
           data	: datapost,
           dataType: "json",
           success: function(datatext) {
             //console.log(datatext);
             var data = datatext.data;
             var element = "";
             var no = 1;
             if (data.length <= 0) {
               element += "<tr>";
               element += "<td colspan='7'> TIDAK ADA DATA </td>";
               element += "</tr>";
             }
             else {
               $.each( data, function( key, value ) {
                 element += "<tr>";
                 element += "<td>" + no++ + "</td>";
                 element += "<td>" + data[key].kode_project + "</td>";
                 element += "<td>" + data[key].site + "</td>";
                 element += "<td>" + data[key].province + "</td>";
                 if (data[key].availability >= 98) {
                   element += '<td><div class="card-icon"><i class="material-icons text-success">verified_user</i></div></td>';
                 }
                 else if (data[key].availability >= 1) {
                   element += '<td><div class="card-icon"><i class="material-icons text-warning">report_problem</i></div></td>';
                 }
                 else {
                   element += '<td><div class="card-icon"><i class="material-icons text-danger">cancel</i></div></td>';
                 }

                 element += "<td>" + data[key].availability + "</td>";
                 element += "<td>" + data[key].reliability + "</td>";
                 element += "<tr>";
               });
             }
             $("#tableAvailability").html(element);
             //console.log(data);
             //console.log(element);

           },
           error: function(e){
           console.log('Error: ' + e);
           }
         });
    }

    function getAjaxAlarm(tgl){
      //console.log(date.getFullYear() + "-" + (date.getMonth()+1) + "-" + first);
      $("#tableAlarm").html(" ");
      datapost = {
        mode : 'alarm',
        tgl : tgl
      };
      $.ajax({
           type	: "POST",
           url	: "components/base/getData.php",
           data	: datapost,
           dataType: "json",
           success: function(datatext) {
             //console.log(datatext);
             var data = datatext.data;
             var element = "";
             var no = 1;
             if (data.length <= 0) {
               element += "<tr>";
               element += "<td colspan='7'> TIDAK ADA DATA </td>";
               element += "</tr>";
             }
             else{
             $.each( data, function( key, value ) {
                 element += "<tr>";
                 element += "<td>" + no++ + "</td>";
                 element += "<td>" + data[key].kode_project + "</td>";
                 element += "<td>" + data[key].site + "</td>";
                 element += "<td>" + data[key].province + "</td>";
                 element += "<td>" + data[key].status + "</td>";
                 element += "<td>" + data[key].alarm_type + "</td>";
                 element += "<td>" + data[key].date + "</td>";
                 element += "<tr>";
               });
               console.log(data.length);
               //console.log(element);
               $("#tableAlarm").html(element);
            }
           },
           error: function(e){
           console.log('Error: ' + e);
           }
         });
    }

    function intervalSet(){
      myvar = setInterval(function(){
        var tgl = tahun + "-" + bulan + "-" + first;
        getAjaxMap(tgl);
        getAjaxAvaibility(tgl);
        getAjaxAlarm(tgl);
        first++;
        if (first > last) {
          first = 1;
        }
      }, 3000);// klo pgn 5 menit ganti angkanya jadi 300000 mar
    }
    intervalSet();
});
</script>
<?php
        include '../../_database/koneksi.php';
        $dataPoints1 = array();
        $get = mysqli_query($konek, "SELECT daily.date,AVG(availability) as a FROM daily JOIN project ON daily.kode_project = project.kode_project GROUP BY daily.date");
        while ($d = mysqli_fetch_array($get)) {
        $orderdate  = explode('-', $d['date']);
            $point = array("x" => $orderdate[2] , "y" => $d['a']);
            array_push($dataPoints1, $point);
        }
        $dataPoints2 = array();
        $get1 = mysqli_query($konek, "SELECT daily.date,AVG(reliability) as b FROM daily JOIN project ON daily.kode_project = project.kode_project  GROUP BY daily.date");
        while ($e = mysqli_fetch_array($get1)) {
        $orderdate = explode('-', $e['date']);
            $point = array("x" => $orderdate[2] , "y" => $e['b']);
            array_push($dataPoints2, $point);
        }

        ?>
<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
    title: {
        text: "Availability"
    },
    axisY: {
        title: "Availability"
    },
    data: [{
        type: "line",
        dataPoints: <?php echo json_encode($dataPoints1, JSON_NUMERIC_CHECK); ?>
    }]
});
chart.render();

var chart1 = new CanvasJS.Chart("chartContainer1", {
    title: {
        text: "Reliability"
    },
    axisY: {
        title: "Reliability"
    },
    data: [{
        type: "line",
        color: "red",
        dataPoints: <?php echo json_encode($dataPoints2, JSON_NUMERIC_CHECK); ?>
    }]
});
chart1.render();

}
</script>
