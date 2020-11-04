<?php
defined('BASEPATH') OR exit('No direct script access allowed');
$this->load->view('dist/_partials/header');
?>
<body>
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
                    <input id="frist_name" type="text" class="form-control" name="frist_name" autofocus>
                  </div>
                  <div class="form-group">
                    <label for="last_name">Nama Departemen</label>
                    <select class="form-control select2">
                        <option>Indonesia</option>
                        <option>Palestine</option>
                        <option>Syria</option>
                        <option>Malaysia</option>
                        <option>Thailand</option>
                    </select>
                  </div>

                  <div class="form-group">
                    <label for="text">Nama Project</label>
                    <input id="text" type="text" class="form-control" name="text">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Deskripsi</label>
                     <textarea class="summernote"></textarea>
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Upload Story Board</label>
                    <input id="text" type="file" class="form-control" name="text">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Target Project</label>
                    <input type="text" class="form-control datepicker">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="text">Link Contoh Project</label>
                    <input id="text" type="text" class="form-control" name="text">
                    <div class="invalid-feedback">
                    </div>
                  </div>
                 <div class="form-group">
                      <label class="form-label">Jenis Project</label>
                      <div class="selectgroup selectgroup-pills">
                        <label class="selectgroup-item">
                          <input type="checkbox" name="value" value="HTML" class="selectgroup-input" checked="">
                          <span class="selectgroup-button">Shoot Video</span>
                        </label>
                        <label class="selectgroup-item">
                          <input type="checkbox" name="value" value="CSS" class="selectgroup-input">
                          <span class="selectgroup-button">Editing Video</span>
                        </label>
                        <label class="selectgroup-item">
                          <input type="checkbox" name="value" value="CSS" class="selectgroup-input">
                          <span class="selectgroup-button">Desain Gambar</span>
                        </label>
                      </div>
                    </div>


                  <!-- <div class="form-divider">
                    Your Home
                  </div>
                  <div class="row">
                    <div class="form-group col-6">
                      <label>Country</label>
                      <select class="form-control selectric">
                        <option>Indonesia</option>
                        <option>Palestine</option>
                        <option>Syria</option>
                        <option>Malaysia</option>
                        <option>Thailand</option>
                      </select>
                    </div>
                    <div class="form-group col-6">
                      <label>Province</label>
                      <select class="form-control selectric">
                        <option>West Java</option>
                        <option>East Java</option>
                      </select>
                    </div>
                  </div>
                 
                  <div class="form-group">
                    <div class="custom-control custom-checkbox">
                      <input type="checkbox" name="agree" class="custom-control-input" id="agree">
                      <label class="custom-control-label" for="agree">I agree with the terms and conditions</label>
                    </div>
                  </div> -->

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

<?php $this->load->view('dist/_partials/js'); ?>