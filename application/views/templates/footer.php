            </div>
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Web Programming UNPAS <?= date('Y'); ?></span>
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
                            <a class="btn btn-primary" href="<?= base_url('auth/logout'); ?>">Logout</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Bootstrap core JavaScript-->
           <!--  <script src="<?= base_url('assets/'); ?>vendor/jquery/jquery.min.js"></script>
            <script src="<?= base_url('assets/'); ?>vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
            <script type="text/javascript" src="<?= base_url('assets/').'ajax/js/jquery-3.2.1.js'?>"></script>
            <script type="text/javascript" src="<?= base_url('assets/').'ajax/js/bootstrap.js'?>"></script>
            <script type="text/javascript" src="<?= base_url('assets/').'ajax/js/jquery.dataTables.js'?>"></script>
            <script type="text/javascript" src="<?= base_url('assets/').'ajax/js/dataTables.bootstrap4.js'?>"></script>

            <!-- Core plugin JavaScript-->
            <script src="<?= base_url('assets/'); ?>vendor/jquery-easing/jquery.easing.min.js"></script>

            <!-- Custom scripts for all pages-->
            <script src="<?= base_url('assets/'); ?>js/sb-admin-2.min.js"></script>
            


            <script>
              $(document).ready(function(){
                            show_product(); //call function show all product
                            
                            $('#mydata').dataTable();
                             
                            //function show all product
                            function show_product(){
                                $.ajax({
                                    type  : 'ajax',
                                    url   : '<?php echo site_url('admin/product_data')?>',
                                    async : false,
                                    dataType : 'json',
                                    success : function(data){
                                        var html = '';
                                        var i;
                                        for(i=0; i<data.length; i++){
                                            html += '<tr>'+
                                                    '<td>'+data[i].product_code+'</td>'+
                                                    '<td>'+data[i].product_name+'</td>'+
                                                    '<td>'+data[i].product_price+'</td>'+
                                                    '<td style="text-align:right;">'+
                                                        '<a href="javascript:void(0);" class="btn btn-info btn-sm item_edit" data-product_code="'+data[i].product_code+'" data-product_name="'+data[i].product_name+'" data-price="'+data[i].product_price+'">Edit</a>'+' '+
                                                        '<a href="javascript:void(0);" class="btn btn-danger btn-sm item_delete" data-product_code="'+data[i].product_code+'">Delete</a>'+
                                                    '</td>'+
                                                    '</tr>';
                                        }
                                        $('#show_data').html(html);
                                    }

                                });
                            }

                            //Save product
                            $('#btn_save').on('click',function(){
                                var product_code = $('#product_code').val();
                                var product_name = $('#product_name').val();
                                var price        = $('#price').val();
                                $.ajax({
                                    type : "POST",
                                    url  : "<?php echo site_url('admin/save')?>",
                                    dataType : "JSON",
                                    data : {product_code:product_code , product_name:product_name, price:price},
                                    success: function(data){
                                        $('[name="product_code"]').val("");
                                        $('[name="product_name"]').val("");
                                        $('[name="price"]').val("");
                                        $('#Modal_Add').modal('hide');
                                        show_product();
                                    }
                                });
                                return false;
                            });

                            //get data for update record
                            $('#show_data').on('click','.item_edit',function(){
                                var product_code = $(this).data('product_code');
                                var product_name = $(this).data('product_name');
                                var price        = $(this).data('price');
                                
                                $('#Modal_Edit').modal('show');
                                $('[name="product_code_edit"]').val(product_code);
                                $('[name="product_name_edit"]').val(product_name);
                                $('[name="price_edit"]').val(price);
                            });

                            //update record to database
                             $('#btn_update').on('click',function(){
                                var product_code = $('#product_code_edit').val();
                                var product_name = $('#product_name_edit').val();
                                var price        = $('#price_edit').val();
                                $.ajax({
                                    type : "POST",
                                    url  : "<?php echo site_url('admin/update')?>",
                                    dataType : "JSON",
                                    data : {product_code:product_code , product_name:product_name, price:price},
                                    success: function(data){
                                        $('[name="product_code_edit"]').val("");
                                        $('[name="product_name_edit"]').val("");
                                        $('[name="price_edit"]').val("");
                                        $('#Modal_Edit').modal('hide');
                                        show_product();
                                    }
                                });
                                return false;
                            });

                            //get data for delete record
                            $('#show_data').on('click','.item_delete',function(){
                                var product_code = $(this).data('product_code');
                                
                                $('#Modal_Delete').modal('show');
                                $('[name="product_code_delete"]').val(product_code);
                            });

                            //delete record to database
                             $('#btn_delete').on('click',function(){
                                var product_code = $('#product_code_delete').val();
                                $.ajax({
                                    type : "POST",
                                    url  : "<?php echo site_url('admin/delete')?>",
                                    dataType : "JSON",
                                    data : {product_code:product_code},
                                    success: function(data){
                                        $('[name="product_code_delete"]').val("");
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