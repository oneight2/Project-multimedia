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

                html += '<table class="table table-sm table-bordered table-striped shadow-sm mt-3">' +
                    '<thead >' +
                    '<tr>' +
                    '<th scope="col">No</th>' +
                    '<th scope="col" class="text-center">Nama</th>' +
                    '<th scope="col" class="text-center">Total Project</th>' +
                    '</tr>' +
                    '</thead>' +
                    '<tbody>';
                var i;
                var no = 1;
                // for (i = 0; i < data.nama.length; i++) {
                for (i = 0; i < data.countProject.length; i++) {
                    html +=
                        '<tr>' +
                        '<td>' + no++ + '</td>' +
                        '<td class="text-center">' + data.nama[i] + '</td>' +
                        '<td class="text-center"><b>' + data.countProject[i] + '</b></td>' +
                        '</tr>';
                }
                // }
                html += '<tr>' +
                    '<td colspan="2" class="text-center text-danger"><b>Total Project</b></td>' +
                    '<td class="text-center text-danger"><b>' + data.project + '</b></td>' +
                    '</tr>'
                '</tbody>' +
                '</table>';

                html += '<table class="table table-sm table-bordered table-striped shadow-sm">' +
                    '<thead >' +
                    '<tr>' +
                    '<th scope="col">No</th>' +
                    '<th scope="col" class="text-center">Nama Departemen</th>' +
                    '<th scope="col" class="text-center">Total Project</th>' +
                    '</tr>' +
                    '</thead>' +
                    '<tbody>';
                var a;
                var noo = 1;
                // for (a = 0; a < data.namaDepartemen.length; a++) {
                for (a = 0; a < data.countProjectDepartemen.length; a++) {
                    if (data.countProjectDepartemen[a] > 0) {
                        html += '<tr>' +
                            '<td>' + noo++ + '</td>' +
                            '<td class="text-center">' + data.namaDepartemen[a] + '</td>' +
                            '<td class="text-center"><b>' + data.countProjectDepartemen[a] + '</b></td>' +
                            '</tr>';
                    }
                }
                // }  
                html += '</tbody>' +
                    '</table>';

                html += '<table class="table table-md table-bordered table-striped shadow-sm"><tbody><tr>' +
                    '<td class="text-center text-danger"><b>Total Maintenance</b></td>' +
                    '<td class="text-center text-danger"><b>' + data.maintenance + '</b></td>' +
                    '</tr></tbody></table>';

                $('#hasil').html(html);

                console.log('nama', data.namaDepartemen);
                console.log('length', data.countProjectDepartemen.length);
                console.log(data);
            }
        });
        return false;
    });
</script>