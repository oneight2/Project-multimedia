<body class="">
    <div class="container-fluid">
        <div class="row mt-2">
            
            <div class="col-xl-4 col-md-6 mb-4">
                <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                        <div class="row no-gutters align-items-center">
                            <div class="col mr-2">
                                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                Pending Project</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $statusMenunggu ?></div>
                            </div>
                            <div class="col-auto">
                                <i class="fas fa-comments fa-2x text-gray-300"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-4 col-md-6 mb-4">
            <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                    <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                            <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                            Project Dikerjakan</div>
                            <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $statusDikerjakan ?></div>
                        </div>
                        <div class="col-auto">
                            <i class="fas fa-comments fa-2x text-gray-300"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                        Project Selesai</div>
                        <div class="h5 mb-0 font-weight-bold text-gray-800"><?= $statusSelesai ?></div>
                    </div>
                    <div class="col-auto">
                        <i class="fas fa-comments fa-2x text-gray-300"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Data Pengajuan Project</h6>
    </div>
    <div class="card-body">
        <a href="<?= base_url('home/project'); ?>" class="btn btn-primary btn-md mb-2 pulse-button border">Isi Pengajuan Project</a>
        <?= $this->session->flashdata('message'); ?>
        <div class="alert alert-info" role="alert">
            <h4 class="alert-heading">Perhatian!</h4>
            <p>Project dikerjakan berdasarkan urutan waktu pengisian form pengajuan. <br>Butuh bantuan tim multimedia? <button  class="badge badge-warning" style="border:none"data-toggle="modal" data-target="#kontakModal">Hubungi disini</button></p>
        </div>
        <div class="table-responsive">
            <table class="table table-bordered pengajuan" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Waktu Pengajuan</th>
                        <th>Nama Project</th>
                        <th>Departemen</th>
                        <th>Target Project</th>
                        <th>Nama Pengaju</th>
                        <th>Status</th>
                        <th>Eksekusi</th>
                        <!-- <th>Eksekusi</th> -->
                    </tr>
                </thead>
                <tbody>
                    <?php $no=1; ?>
                    <?php foreach ($pengajuan as $row): ?>
                    <tr>
                        <td><?= $no++ ?></td>
                        <td><b class="text-danger"><?= $row['waktu_pengajuan']; ?></b></td>
                        <td><?= $row['nama_project'] ?></td>
                        <td><?= $row['nama_departemen'] ?></td>
                        <td><?= $row['target_project'] ?></td>
                        <td><?= $row['nama'] ?></td>
                        <td><p class="<?php 
                                if($row['status'] == 'Menunggu Diproses'){
                                    echo 'badge badge-primary';
                                } else if($row['status'] == 'Sedang Dikerjakan'){
                                    echo 'badge badge-warning';
                                } else{
                                    echo 'badge badge-success';
                                }
                         ?>" id="warna_status"><?= $row['status'] ?></p></td>
                        <td><?= $row['nama_pegawai']?></td>
                    </tr>
                    <?php endforeach ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
<!-- /.container-fluid -->

<!-- Modal -->
<div class="modal fade" id="kontakModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Daftar Kontak</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">Nama</th>
                <th scope="col">Chat</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($kontak as $row):?>
                <tr>
                 <td><?= $row['nama_pegawai'] ?></td>
                 <td>
                     <a href="https://api.whatsapp.com/send?phone=<?= $row['no_telp'] ?>" class="btn btn-success btn-circle">
                        <i class="fab fa-whatsapp"></i>
                    </a>
                    </td>
                </tr>
                <?php endforeach?>
            </tbody>
            </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>