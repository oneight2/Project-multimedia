<div class="row mt-2">
    <div class="col-xl-4 col-md-6 mb-4">
        <div class="card border-left-primary shadow h-100 py-2">
            <div class="card-body">
                <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            Menunggu Perbaikan</div>
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
                            Dikerjakan</div>
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
                            Selesai</div>
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
    <ul class="nav nav-pills mb-3 mt-3 ml-3" id="pills-tab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Menunggu & Diproses</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Selesai</a>
        </li>
    </ul>
    <div class="tab-content" id="pills-tabContent">
        <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped" id="mydata">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Waktu Pengajuan</th>
                                <th>Nama</th>
                                <th>Departemen</th>
                                <th>Perangkat</th>
                                <th>Urgensitas</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody id="show_data">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-striped" id="selesai">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Waktu Pengajuan</th>
                                <th>Nama</th>
                                <th>Departemen</th>
                                <th>Perangkat</th>
                                <th>Urgensitas</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody id="show_data_selesai">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /.container-fluid -->

<!-- MODAL EDIT -->
<form>
    <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Update Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Nama Perangkat</label>
                        <div class="col-md-10">
                            <input type="text" id="id_project" class="form-control" hidden>
                            <input type="text" name="nama_perangkat" id="nama_perangkat" class="form-control" placeholder="Nama Project" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Deskripsi</label>
                        <div class="col-md-10">
                            <!--<textarea type="text" name="deskripsi_edit" id="deskripsi_edit" class="form-control" placeholder="Deskripsi" readonly></textarea>-->
                            <div class="alert alert-info" role="alert">
                                <p name="deskripsi_edit" id="deskripsi_edit"></p>
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Status</label>
                        <div class="col-md-10">
                            <select class="custom-select" id="ubah_status">
                                <option selected>Choose...</option>
                                <option value="Menunggu Diproses">Menunggu Diproses</option>
                                <option value="Sedang Dikerjakan">Sedang Dikerjakan</option>
                                <option value="Selesai">Selesai</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Eksekusi</label>
                        <div class="col-md-10">
                            <select class="custom-select" id="show_pegawai">

                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_update" class="btn btn-primary">Update</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--END MODAL EDIT-->
<!--MODAL DELETE-->
<form>
    <div class="modal fade" id="Modal_Delete" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <strong>Are you sure to delete this record?</strong>
                </div>
                <div class="modal-footer">
                    <input type="hidden" name="storyboard_delete" id="storyboard_delete" class="form-control">
                    <input type="hidden" name="id_delete" id="id_delete" class="form-control">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
                    <button type="button" type="submit" id="btn_delete" class="btn btn-primary">Yes</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--END MODAL DELETE-->

<!-- FOOTER -->

<?php $this->load->view('templates/footer'); ?>

<script>
    var warna;

    $(document).ready(function() {
        show_product(); //call function show all product
        show_product_selesai(); //call function show all product

        $('#mydata').dataTable();
        $('#selesai').dataTable();


        //function show all product
        function show_product() {
            $.ajax({
                type: 'GET',
                url: '<?php echo site_url('AdminMaintenance/product_data') ?>',
                async: false,
                dataType: 'json',
                contentType: "application/json",
                success: function(data) {

                    var html = '';
                    var no = 1;
                    var i;
                    for (i = 0; i < data.length; i++) {
                        warna = data[i].status
                        html += '<tr>' +
                            '<td>' + no++ + '</td>' +
                            '<td><b class="text-danger">' + data[i].waktu_pengajuan + '</b></td>' +
                            '<td>' + data[i].nama_pengaju + '</td>' +
                            '<td>' + data[i].nama_departemen + '</td>' +
                            '<td>' + data[i].nama_perangkat + '</td>' +
                            '<td>' + data[i].urgensitas + '</td>' +
                            '<td><p class="warna_status" >' + data[i].status + '</p></td>' +
                            '<td style="text-align:center;">' +
                            '<a href="https://api.whatsapp.com/send?phone=62' + data[i].no_telp + '" class="btn btn-success btn-sm mr-2" target="_blank"><i class="fab fa-whatsapp"></i></a>' +
                            '<a href="javascript:void(0);" class="btn btn-info btn-sm item_edit" data-nama_perangkat="' + data[i].nama_perangkat + '" data-deskripsi="' + data[i].deskripsi + '" data-id="' + data[i].id + '" data-id_pegawai="' + data[i].id_pegawai + '"><i class="fas fa-eye"></i></a>' + ' ' +
                            '<a href="javascript:void(0);" class="btn btn-danger btn-sm item_delete" data-id="' + data[i].id + '"><i class="fas fa-trash"></i></a>' +
                            '</td>' +
                            '</tr>';

                        // show_status()   
                    }


                    $('#show_data').html(html);

                }

            });
        }

        function show_product_selesai() {
            $.ajax({
                type: 'GET',
                url: '<?php echo site_url('AdminMaintenance/product_data_selesai') ?>',
                async: false,
                dataType: 'json',
                contentType: "application/json",
                success: function(data) {

                    var html = '';
                    var no = 1;
                    var i;
                    for (i = 0; i < data.length; i++) {
                        warna = data[i].status
                        html += '<tr>' +
                            '<td>' + no++ + '</td>' +
                            '<td><b class="text-danger">' + data[i].waktu_pengajuan + '</b></td>' +
                            '<td>' + data[i].nama_pengaju + '</td>' +
                            '<td>' + data[i].nama_departemen + '</td>' +
                            '<td>' + data[i].nama_perangkat + '</td>' +
                            '<td>' + data[i].urgensitas + '</td>' +
                            '<td><p class="warna_status" >' + data[i].status + '</p></td>' +
                            '<td style="text-align:center;">' +
                            '<a href="https://api.whatsapp.com/send?phone=62' + data[i].no_telp + '" class="btn btn-success btn-sm mr-2" target="_blank"><i class="fab fa-whatsapp"></i></a>' +
                            '<a href="javascript:void(0);" class="btn btn-info btn-sm item_edit" data-nama_perangkat="' + data[i].nama_perangkat + '" data-deskripsi="' + data[i].deskripsi + '" data-id="' + data[i].id + '" data-id_pegawai="' + data[i].id_pegawai + '"><i class="fas fa-eye"></i></a>' + ' ' +
                            '<a href="javascript:void(0);" class="btn btn-danger btn-sm item_delete" data-id="' + data[i].id + '"><i class="fas fa-trash"></i></a>' +
                            '</td>' +
                            '</tr>';

                        // show_status()   
                    }


                    $('#show_data_selesai').html(html);

                }

            });
        }

        // function show_status(){
        //         console.log(warna);

        //      if(warna === 'Menunggu Proses'){
        //         $('.warna_status').addClass('badge badge-primary')
        //      }else if (warna === 'Sedang Dikerjakan'){
        //         $('.warna_status').addClass('badge badge-warning')
        //      }else if(warna === 'Selesai'){
        //         $('.warna_status').addClass('badge badge-success')
        //      }


        // }


        //get data for update record
        $('#show_data, #show_data_selesai').on('click', '.item_edit', function() {
            // showselectpegawai
            showPegawai();

            var id = $(this).data('id');
            var nama_perangkat = $(this).data('nama_perangkat');
            var deskripsi = $(this).data('deskripsi');



            $('#Modal_Edit').modal('show');
            $('[id="id_project"]').val(id);
            $('[id="nama_perangkat"]').val(nama_perangkat);
            $('[id="deskripsi_edit"]').text(deskripsi);
        });

        // Fungsi SHow select pegawai
        function showPegawai() {
            $.ajax({
                type: 'GET',
                url: '<?php echo site_url('AdminMaintenance/data_pegawai') ?>',
                async: false,
                dataType: 'json',
                contentType: "application/json",
                success: function(data) {
                    var html = '';
                    var no = 1;
                    var i;
                    for (i = 0; i < data.length; i++) {
                        html +=
                            '<option value="' + data[i].id_pegawai + '">' + data[i].nama_pegawai + '</option>';
                    }
                    $('#show_pegawai').html(html);
                }

            });
        }

        //update record to database
        $('#btn_update').on('click', function() {
            var id = $('#id_project').val();
            var status = $('#ubah_status').val();
            var id_pegawai = $('#show_pegawai').val();
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('AdminMaintenance/update') ?>",
                dataType: "JSON",
                data: {
                    id: id,
                    status: status,
                    id_pegawai: id_pegawai
                },
                success: function(data) {
                    $('[id="id_project"]').val("");
                    $('[id="ubah_status"]').val("");
                    $('[id="show_pegawai"]').val("");
                    $('#Modal_Edit').modal('hide');
                    show_product();
                }
            });
            return false;
        });

        //get data for delete record
        $('#show_data, #show_data_selesai').on('click', '.item_delete', function() {
            var id = $(this).data('id');

            $('#Modal_Delete').modal('show');
            $('[id="id_delete"]').val(id);
        });

        //delete record to database
        $('#btn_delete').on('click', function() {
            var id = $('#id_delete').val();
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('AdminMaintenance/delete') ?>",
                dataType: "JSON",
                data: {
                    id: id
                },
                success: function(data) {
                    $('[id="id_delete"]').val("");
                    $('#Modal_Delete').modal('hide');
                    show_product();
                }
            });
            return false;
        });


    });
</script>

</body>

</html>