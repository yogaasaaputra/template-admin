<div class="login_wrapper">
    <div class="animate form login_form">
        <section class="login_content">
            <form method="post" action="<?= base_url('auth/forgotpassword'); ?>">
                <h1>Forgot Password</h1>

                <?= $this->session->flashdata('message'); ?>

                <div>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Email Address" value="<?= set_value('email'); ?>" />
                    <small class="text-danger"><?= form_error('email'); ?>
                    </small>
                </div>
                <div>
                    <button type="submit" class="btn btn-default submit">Reset Password</button>
                </div>

                <div class="clearfix"></div>

                <div class="separator">
                    <p class="change_link">Back to login ?
                        <a href="<?= base_url('auth'); ?>">Login here!</a>
                        <hr>
                        <strong>Copyright &copy; 2020 | Yoga Saputra
                            <a href="http://twitter.com/yogaasaaputra" target="_BLANK"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    </p>

                    <div class="clearfix"></div>
                    <br />

                </div>
            </form>
        </section>
    </div>
</div>