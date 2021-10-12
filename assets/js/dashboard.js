 // Set new default font family and font color to mimic Bootstrap's default styling
 Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
 Chart.defaults.global.defaultFontColor = '#858796';

 // Cimanggis
 var ctx = document.getElementById("cimanggis");
 var cimanggis = new Chart(ctx, {
   type: 'doughnut',
   data: {
     labels: ["Pending Project", "Dikerjakan", "Selesai"],
     datasets: [{
       data: [<?= $statusMenungguCimanggis ?>, <?= $statusDikerjakanCimanggis ?>, <?= $statusSelesaiCimanggis ?>],
       backgroundColor: ['#4e73df', '#f6c23e', '#1cc88a'],
       hoverBackgroundColor: ['#2e59d9', '#E4AA17', '#12AE76'],
       hoverBorderColor: "rgba(234, 236, 244, 1)",
     }],
   },
   options: {
     maintainAspectRatio: false,
     tooltips: {
       backgroundColor: "rgb(255,255,255)",
       bodyFontColor: "#858796",
       borderColor: '#dddfeb',
       borderWidth: 1,
       xPadding: 15,
       yPadding: 15,
       displayColors: false,
       caretPadding: 10,
     },
     legend: {
       display: false
     },
     cutoutPercentage: 80,
   },
 });

 // Cimanggis
 var ctx = document.getElementById("tapos");
 var tapos = new Chart(ctx, {
   type: 'doughnut',
   data: {
     labels: ["Pending Project", "Dikerjakan", "Selesai"],
     datasets: [{
       data: [<?= $statusMenungguTapos ?>, <?= $statusDikerjakanTapos ?>, <?= $statusSelesaiTapos ?>],
       backgroundColor: ['#4e73df', '#f6c23e', '#1cc88a'],
       hoverBackgroundColor: ['#2e59d9', '#E4AA17', '#12AE76'],
       hoverBorderColor: "rgba(234, 236, 244, 1)",
     }],
   },
   options: {
     maintainAspectRatio: false,
     tooltips: {
       backgroundColor: "rgb(255,255,255)",
       bodyFontColor: "#858796",
       borderColor: '#dddfeb',
       borderWidth: 1,
       xPadding: 15,
       yPadding: 15,
       displayColors: false,
       caretPadding: 10,
     },
     legend: {
       display: false
     },
     cutoutPercentage: 80,
   },
 });

 // Cimanggis
 var ctx = document.getElementById("perbaikan");
 var perbaikan = new Chart(ctx, {
   type: 'doughnut',
   data: {
     labels: ["Pending Project", "Dikerjakan", "Selesai"],
     datasets: [{
       data: [<?= $statusMenungguPerbaikan ?>, <?= $statusDikerjakanPerbaikan ?>, <?= $statusSelesaiPerbaikan ?>],
       backgroundColor: ['#4e73df', '#f6c23e', '#1cc88a'],
       hoverBackgroundColor: ['#2e59d9', '#E4AA17', '#12AE76'],
       hoverBorderColor: "rgba(234, 236, 244, 1)",
     }],
   },
   options: {
     maintainAspectRatio: false,
     tooltips: {
       backgroundColor: "rgb(255,255,255)",
       bodyFontColor: "#858796",
       borderColor: '#dddfeb',
       borderWidth: 1,
       xPadding: 15,
       yPadding: 15,
       displayColors: false,
       caretPadding: 10,
     },
     legend: {
       display: false
     },
     cutoutPercentage: 80,
   },
 });