<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->load->view('dist/_partials/header');
?>
<body>
  <?php var_dump($departemen);?>
  <div id="app">
    <section class="section">
      <div class="container mt-5">
        <div class="row">
          <div class="col-12 col-sm-10 offset-sm-1 col-md-8 offset-md-2 col-lg-8 offset-lg-2 col-xl-8 offset-xl-2">
            <div class="login-brand">
              <img src="<?php echo base_url(); ?>assets/img/stisla-fill.svg" alt="logo" width="100" class="shadow-light rounded-circle">
            </div>

            <div class="card card-primary">
              <div class="card-header"><h4>FORM PENGAJUAN PROJECT</h4></div>

              <div class="card-body">
                <form method="POST">
                  <div class="form-group">
                    <label for="frist_name">Nama</label>
                    <input id="frist_name" type="text" class="form-control" name="nama" autofocus>
                  </div>
                  <div class="form-group">
                    <label for="last_name">Nama Departemen</label>
                    <select class="form-control select2" name="departemen">
                      <?php foreach ($departemen as $row): ?>
                        <option value="<?=$row['id']?>"><?php echo $row['nama_departemen'] ?></option>
                      <?php endforeach?>
                    </select>
                  </div>

                  <div class="form-group">
                    <label for="text">Nama Project</label>
                    <input id="text" type="text" class="form-control" name="nama_project">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Deskripsi</label>
                     <textarea class="summernote" name="deskripsi"></textarea>
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Upload Story Board</label>
                    <input id="text" type="file" class="form-control" name="story_board">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Target Project</label>
                    <input type="text" class="form-control datepicker" name="target">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Link Contoh Project</label>
                    <input id="text" type="text" class="form-control" name="text" name="link">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                 <div class="form-group">
                      <label class="form-label">Jenis Project</label>
                      <div class="selectgroup selectgroup-pills">
                        <?php foreach ($jenis_project as $row): ?>
                        <label class="selectgroup-item">
                          <input type="checkbox" name="" value="<?=$row['id']?>" class="selectgroup-input" checked="">
                          <span class="selectgroup-button"><?=$row['jenis_project']?></span>
                        </label>
                        <?php endforeach?>
                      </div>
                  </div>

                  <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-lg btn-block">
                      Ajukan Project
                    </button>
                  </div>
                </form>
              </div>
            </div>
            <div class="simple-footer">
              Copyright &copy; Stisla 2018
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

<?php $this->load->view('dist/_partials/js');?>