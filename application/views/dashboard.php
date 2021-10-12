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
        <div class="chart-pie pt-4 pb-2">
          <div class="chartjs-size-monitor">
            <div class="chartjs-size-monitor-expand">
              <div class=""></div>
            </div>
            <div class="chartjs-size-monitor-shrink">
              <div class=""></div>
            </div>
          </div>
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
        <div class="chart-pie pt-4 pb-2">
          <div class="chartjs-size-monitor">
            <div class="chartjs-size-monitor-expand">
              <div class=""></div>
            </div>
            <div class="chartjs-size-monitor-shrink">
              <div class=""></div>
            </div>
          </div>
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
        <div class="chart-pie pt-4 pb-2">
          <div class="chartjs-size-monitor">
            <div class="chartjs-size-monitor-expand">
              <div class=""></div>
            </div>
            <div class="chartjs-size-monitor-shrink">
              <div class=""></div>
            </div>
          </div>
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
      <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
        <h6 class="m-0 font-weight-bold text-primary">Data Performance</h6>
      </div>
      <div class="card-body">
        <!-- <form> -->
        <div class="form-row">
          <div class="col">
            <input type="date" class="form-control" id="tgl-awal">
          </div>
          <div class="col">
            <input type="date" class="form-control" id="tgl-akhir">
          </div>
          <div class="col-auto">
            <button class="btn btn-primary mb-2" id="btn-search">search</button>
          </div>
        </div>
        <!-- </form> -->
        <div id="hasil">

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

<?php $this->load->view('templates/footer'); ?>
<script src="<?= base_url('assets/') ?>vendor/chart.js/Chart.min.js"></script>
<!-- Page level custom scripts -->
<script src="<?= base_url('assets/') ?>js/demo/chart-area-demo.js"></script>
<!-- <script src="<?= base_url('assets/') ?>js/dashboard.js"></script> -->

<script>
  //Save product
  $('#btn-search').on('click', function() {
    var tglAwal = $('#tgl-awal').val();
    var tglAkhir = $('#tgl-akhir').val();
    console.log('awal', tglAwal)
    console.log('akhir', tglAkhir)
    $.ajax({
      type: "POST",
      url: "<?php echo site_url('Admin/get_data_pengajuan') ?>",
      dataType: "JSON",
      data: {
        tglAwal: tglAwal,
        tglAkhir: tglAkhir
      },
      success: function(data) {
        var html = '';
        var i;
        
        for (i = 0; i < data.nama.length; i++) {
          for (i = 0; i < data.countProject.length; i++) {
            html += '<p>'+ data.nama[i] +': '+ data.countProject[i] +'</p>' ;
          }
        }
        html += '<p> Maintenance' + data.maintenance + '</p>'+
                '<p>Total Project'+ data.project +'</p>'
        $('#hasil').html(html);
        console.log(html);
        console.log(data);
        console.log(data.countProject.length);
      }
    });
    return false;
  });
</script>


</body>

</html>