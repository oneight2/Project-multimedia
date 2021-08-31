<script type="text/javascript" src="<?= base_url('assets/') . 'ajax/js/jquery-3.2.1.js' ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/') . 'ajax/js/bootstrap.js' ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/') . 'ajax/js/jquery.dataTables.js' ?>"></script>
<script type="text/javascript" src="<?= base_url('assets/') . 'ajax/js/dataTables.bootstrap4.js' ?>"></script>

<!-- Core plugin JavaScript-->
<script src="<?= base_url('assets/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="<?= base_url('assets/'); ?>js/sb-admin-2.min.js"></script>
<!-- FILE UPLOAD -->

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.min.css">
<link href="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.3/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.3/js/plugins/piexif.min.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.3/js/plugins/sortable.min.js" type="text/javascript"></script>
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.3/js/fileinput.min.js"></script>
<script src="https://cdn.jsdelivr.net/gh/kartik-v/bootstrap-fileinput@5.2.3/js/locales/LANG.js"></script>


<script>
	$('#pengajuan').dataTable();
	$('#pengajuan-selesai').dataTable();
	$("#upload-storyboard").fileinput();


	if (/Android|webOS|iPhone|iPad|Mac|Macintosh|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
		// some code..
		$('#btn-pengajuan').attr('class', 'btn btn-block btn-primary mb-3');
		$('#btn-perbaikan').attr('class', 'btn btn-block btn-danger mb-3');
		$('#card-menunggu').removeClass('py-2 h-100')
		$('#card-dikerjakan').removeClass('py-2 h-100')
		$('#card-selesai').removeClass('py-2 h-100')
		$('#container').removeClass('container-fluid')
		$('#container').addClass('ml-1 mr-1')
		$('#perhatian').addClass('text-center')
		$('.card-status').removeClass('col-xl-4 col-md-6').addClass('col')
		$('.icon').remove('.icon')
		$('.p-5').removeClass('p-5').addClass('px-3 py-5')
	}
</script>


</body>

</html>