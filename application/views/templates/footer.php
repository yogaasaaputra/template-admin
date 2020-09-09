            <!-- footer content -->
            <footer>
                <div class="pull-right">
                    <strong>Copyright &copy; <?= date('Y'); ?> | Yoga Saputra
                        <a href="http://twitter.com/yogaasaaputra" target="_BLANK"><i class="fa fa-twitter" aria-hidden="true"></i></a> </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
            </div>
            </div>

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="#page-top">
                <i class="fa fa-angle-up"></i>
            </a>

            <!-- jQuery -->
            <script src="<?= base_url('assets'); ?>/vendors/jquery/dist/jquery.min.js"></script>
            <!-- Bootstrap -->
            <script src="<?= base_url('assets'); ?>/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
            <!-- FastClick -->
            <script src="<?= base_url('assets'); ?>/vendors/fastclick/lib/fastclick.js"></script>
            <!-- NProgress -->
            <script src="<?= base_url('assets'); ?>/vendors/nprogress/nprogress.js"></script>

            <!-- Custom Theme Scripts -->
            <script src="<?= base_url('assets'); ?>/js/custom.min.js"></script>

            <!-- Role Access -->
            <script>
                $('.custom-file-input').on('change', function() {
                    let fileName = $(this).val().split('\\').pop();
                    $(this).next('.custom-file-label').addClass("selected").html(fileName);
                });

                $('.form-check-input').on('click', function() {
                    const menuId = $(this).data('menu');
                    const roleId = $(this).data('role');

                    $.ajax({
                        url: "<?= base_url('admin/changeaccess'); ?>",
                        type: 'post',
                        data: {
                            menuId: menuId,
                            roleId: roleId
                        },
                        success: function() {
                            document.location.href = "<?= base_url('admin/roleaccess/'); ?>" + roleId;
                        }
                    });

                });
            </script>
            <!-- End Role Access -->

            </body>

            </html>