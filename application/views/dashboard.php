
<div class="row mt-5">

<!-- Pie Chart -->
<div class="col-xl-4 col-lg-5">
    <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Data Pengajuan Project Cimanggis</h6>
        </div>
        <!-- Card Body -->
        <div class="card-body">
            <div class="chart-pie pt-4 pb-2"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
            <canvas id="cimanggis" width="486" height="245" class="chartjs-render-monitor" style="display: block; width: 486px; height: 245px;"></canvas>
        </div>
        <div class="mt-4 text-center small">
            <span class="mr-2">
                <i class="fas fa-circle text-primary"></i> Pending Project
            </span>
            <span class="mr-2">
                <i class="fas fa-circle text-warning"></i> Project Dikerjakan
            </span>
            <span class="mr-2">
                <i class="fas fa-circle text-success"></i> Selesai
            </span>
        </div>
        </div>
    </div>
</div>
<!-- Pie Chart -->
<div class="col-xl-4 col-lg-5">
    <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Data Pengajuan Project Tapos</h6>
        </div>
        <!-- Card Body -->
        <div class="card-body">
            <div class="chart-pie pt-4 pb-2"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
            <canvas id="tapos" width="486" height="245" class="chartjs-render-monitor" style="display: block; width: 486px; height: 245px;"></canvas>
        </div>
        <div class="mt-4 text-center small">
            <span class="mr-2">
                <i class="fas fa-circle text-primary"></i> Pending Project
            </span>
            <span class="mr-2">
                <i class="fas fa-circle text-warning"></i> Project Dikerjakan
            </span>
            <span class="mr-2">
                <i class="fas fa-circle text-success"></i> Selesai
            </span>
        </div>
        </div>
    </div>
</div>
<!-- Pie Chart -->
<div class="col-xl-4 col-lg-5">
    <div class="card shadow mb-4">
        <!-- Card Header - Dropdown -->
        <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
            <h6 class="m-0 font-weight-bold text-primary">Data Pengajuan Perbaikan</h6>
        </div>
        <!-- Card Body -->
        <div class="card-body">
            <div class="chart-pie pt-4 pb-2"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
            <canvas id="perbaikan" width="486" height="245" class="chartjs-render-monitor" style="display: block; width: 486px; height: 245px;"></canvas>
        </div>
        <div class="mt-4 text-center small">
            <span class="mr-2">
                <i class="fas fa-circle text-primary"></i> Pending Project
            </span>
            <span class="mr-2">
                <i class="fas fa-circle text-warning"></i> Project Dikerjakan
            </span>
            <span class="mr-2">
                <i class="fas fa-circle text-success"></i> Selesai
            </span>
        </div>
        </div>
    </div>
</div>
</div>
<div class="row">
  <div class="col">
    <div class="card shadow mb-4">
      <!-- Card Header - Dropdown -->
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-primary">Data Performance</h6>
      </div>
      <!-- Card Body -->
      <div class="card-body">
        <h5 class="text-success mb-5 text-right font-weight-bolder mr-4">Data Total Project Selesai: <?= $pengajuan ?></h5>
        <?php foreach ($pegawai as $row) : ?>
          <?php $id = $row['id_pegawai'];
          $persentase = 0
          ?>
          <div class="card shadow mb-3">
            <div class="row p-3">
              <div class="col-2 d-flex ">
                <img src="<?= base_url() ?>assets/img/default.jpg" class="img-thumbnail" alt="..." width="80px">
                <h5 class="text-center ml-3"><?= $row['nama_pegawai'] ?></h5>
                <?php $getCountPengajuan = $this->db->query("SELECT * FROM pengajuan WHERE id_pegawai = $id AND status= 'Selesai'")->num_rows(); ?>
                <!-- <?= var_dump($getCountPengajuan) ?> -->
                <br>

              </div>
              <div class="col-10">
                <div class="progress mb-3">
                  <?php
                  if ($getCountPengajuan != 0) {
                    $persentase = ($getCountPengajuan / $pengajuan) * 100;
                  };
                  ?>
                  <div class="progress-bar" role="progressbar" style="width: <?= round($persentase, 1) ?>%" aria-valuenow="<?= $getCountPengajuan ?>" aria-valuemin="0" aria-valuemax="<?= $pengajuan ?>"><?= round($persentase, 1) ?> %</div>
                </div>
                <p>Total Project Dikerjakan: <span class="text-success font-weight-bolder"><?= $getCountPengajuan ?></span></p>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
</div>
</div>
<!-- FOOTER -->
</div>
<!-- Footer -->
<footer class="sticky-footer bg-white">
    <div class="container my-auto">
        <div class="copyright text-center my-auto">
            <span>Copyright &copy;Indonesia Heritage Foundation<?= date('Y'); ?></span>
        </div>
    </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="<?= base_url('login/logout'); ?>">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<script type="text/javascript" src="<?= base_url('assets/').'ajax/js/jquery-3.2.1.js'?>"></script>
<script type="text/javascript" src="<?= base_url('assets/').'ajax/js/bootstrap.js'?>"></script>
<script type="text/javascript" src="<?= base_url('assets/').'ajax/js/jquery.dataTables.js'?>"></script>
<script type="text/javascript" src="<?= base_url('assets/').'ajax/js/dataTables.bootstrap4.js'?>"></script> <!-- Page level plugins -->
<script src="<?= base_url('assets/')?>vendor/chart.js/Chart.min.js"></script>
<!-- Page level custom scripts -->
<script src="<?= base_url('assets/')?>js/demo/chart-area-demo.js"></script>
<!-- <script src="<?= base_url('assets/')?>js/demo/chart-pie-demo.js"></script> -->

<!-- Core plugin JavaScript-->
<script src="<?= base_url('assets/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?= base_url('assets/'); ?>js/sb-admin-2.min.js"></script>
<script>
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
</script>


</body>

</html>