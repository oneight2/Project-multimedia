<!-- DataTales Example -->
<div class="card shadow mb-4 mt-5">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Data Pegawai Divisi Multimedia</h6>
    </div>
    <div class="card-body">
        <a href="javascript:void(0);" class="btn btn-primary btn-sm ml-3 mb-4" data-toggle="modal" data-target="#Modal_Add"><span class="fa fa-plus"></span> Tambah Data</a>
        <div class="table-responsive">
            <table class="table table-striped" id="mydata">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>No Whatsapp</th>
                        <th>Foto</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody id="show_data">

                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
<!-- /.container-fluid -->
<!-- MODAL ADD -->
<form>
    <div class="modal fade" id="Modal_Add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Tambah Data</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Nama</label>
                        <div class="col-md-10">
                            <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Pegawai">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">No whatsapp</label>
                        <div class="col-md-10">
                            <input type="number" name="no_wa" id="no_wa" class="form-control" placeholder="No Whatsapp">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Foto</label>
                        <div class="col-md-10">
                            <input type="file" name="foto" id="foto" class="form-control" placeholder="Foto">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" type="submit" id="btn_save" class="btn btn-primary">Save</button>
                </div>
            </div>
        </div>
    </div>
</form>
<!--END MODAL ADD-->
<!-- MODAL EDIT -->
<form>
    <div class="modal fade" id="Modal_Edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Pegawai</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Nama Pegawai</label>
                        <div class="col-md-10">
                            <input type="text" id="id_pegawai" class="form-control" hidden>
                            <input type="text" name="nama_edit" id="nama_edit" class="form-control" placeholder="Nama pegawai">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">No Whatsapp</label>
                        <div class="col-md-10">
                            <input type="number" name="notelp_edit" id="notelp_edit" class="form-control" placeholder="No Whatsapp">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-md-2 col-form-label">Foto</label>
                        <div class="col-md-10">
                            <input type="text" name="foto_edit" id="foto_edit" class="form-control" placeholder="Foto">
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
                    <h5 class="modal-title" id="exampleModalLabel">Delete Pegawai</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <strong>Are you sure to delete this record?</strong>
                </div>
                <div class="modal-footer">
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
    $(document).ready(function() {
        show_product(); //call function show all product

        $('#mydata').dataTable();

        //function show all product
        function show_product() {
            $.ajax({
                type: 'GET',
                url: '<?php echo site_url('pegawai/product_data') ?>',
                async: false,
                dataType: 'json',
                contentType: "application/json",
                success: function(data) {
                    var html = '';
                    var no = 1;
                    var i;
                    for (i = 1; i < data.length; i++) {
                        html += '<tr>' +
                            '<td>' + no++ + '</td>' +
                            '<td>' + data[i].nama_pegawai + '</td>' +
                            '<td>' + data[i].no_telp + '</td>' +
                            '<td><img class="img-profile rounded-circle" style="width:50px" src="<?= base_url("assets/img/") ?>' + data[i].foto + '"></td>' +
                            '<td style="text-align:right;">' +
                            '<a href="javascript:void(0);" class="btn btn-info btn-sm item_edit" data-nama_pegawai="' + data[i].nama_pegawai + '" data-no_telp="' + data[i].no_telp + '" data-foto="' + data[i].foto + '" data-id_pegawai="' + data[i].id_pegawai + '"><i class="fas fa-edit"></i></a>' + ' ' +
                            '<a href="javascript:void(0);" class="btn btn-danger btn-sm item_delete" data-id_pegawai="' + data[i].id_pegawai + '" ><i class="fas fa-trash"></i></a>' +
                            '</td>' +
                            '</tr>';
                    }
                    $('#show_data').html(html);
                }

            });
        }

        //Save product
        $('#btn_save').on('click', function() {
            var nama_pegawai = $('#nama').val();
            var no_telp = $('#no_wa').val();
            var foto = 'default.jpg';
            console.log(no_telp)
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('pegawai/save') ?>",
                dataType: "JSON",
                data: {
                    nama_pegawai: nama_pegawai,
                    no_telp: no_telp,
                    foto: foto
                },
                success: function(data) {
                    $('[id="nama"]').val("");
                    $('[id="no_wa"]').val("");
                    // $('[id="foto"]').val("");
                    $('#Modal_Add').modal('hide');
                    show_product();
                }
            });
            return false;
        });

        //get data for update record
        $('#show_data').on('click', '.item_edit', function() {
            var id_pegawai = $(this).data('id_pegawai');
            var nama_pegawai = $(this).data('nama_pegawai');
            var no_telp = $(this).data('no_telp');
            var foto = $(this).data('foto');

            $('#Modal_Edit').modal('show');
            $('[id="id_pegawai"]').val(id_pegawai);
            $('[id="nama_edit"]').val(nama_pegawai);
            $('[id="notelp_edit"]').val(no_telp);
            $('[id="foto_edit"]').val(foto);
        });

        //update record to database
        $('#btn_update').on('click', function() {
            var id_pegawai = $('#id_pegawai').val();
            var nama_pegawai = $('#nama_edit').val();
            var no_telp = $('#notelp_edit').val();
            var foto = $('#foto_edit').val();
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('pegawai/update') ?>",
                dataType: "JSON",
                data: {
                    id_pegawai: id_pegawai,
                    nama_pegawai: nama_pegawai,
                    no_telp: no_telp,
                    foto: foto
                },
                success: function(data) {
                    $('[id="id_pegawai"]').val("");
                    $('[id="nama_edit"]').val("");
                    $('[id="notelp_edit"]').val("");
                    $('[id="foto_edit"]').val("");
                    $('#Modal_Edit').modal('hide');
                    show_product();
                }
            });
            return false;
        });

        //get data for delete record
        $('#show_data').on('click', '.item_delete', function() {
            var id_pegawai = $(this).data('id_pegawai');

            $('#Modal_Delete').modal('show');
            $('[id="id_delete"]').val(id_pegawai);
        });

        //delete record to database
        $('#btn_delete').on('click', function() {
            var id_pegawai = $('#id_delete').val();
            $.ajax({
                type: "POST",
                url: "<?php echo site_url('pegawai/delete') ?>",
                dataType: "JSON",
                data: {
                    id_pegawai: id_pegawai
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