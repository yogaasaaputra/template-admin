<div class="login_wrapper">
    <div class="animate form login_form">
        <section class="login_content">
            <form method="post" action="<?= base_url('auth/changepassword'); ?>">
                <h1 class="mb-2">Change Password</h1>
                <h5 class="mb-4"><?= $this->session->userdata('reset_email'); ?></h5>

                <?= $this->session->flashdata('message'); ?>

                <div>
                    <input type="password" class="form-control" id="password1" name="password1" placeholder="New password" value="<?= set_value('email'); ?>" />
                    <small class="text-danger"><?= form_error('password1'); ?>
                    </small>
                </div>
                <div>
                    <input type="password" class="form-control" id="password2" name="password2" placeholder="Repeat password" value="<?= set_value('email'); ?>" />
                    <small class="text-danger"><?= form_error('password2'); ?>
                    </small>
                </div>
                <div>
                    <button type="submit" class="btn btn-default submit">Reset Password</button>
                </div>

                <div class="clearfix"></div>

                <div class="separator">
                    <p class="change_link">
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