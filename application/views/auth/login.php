<div class="login_wrapper">
    <div class="animate form login_form">
        <section class="login_content">
            <form method="post" action="<?= base_url('auth'); ?>">
                <h1>Login Page</h1>

                <?= $this->session->flashdata('message'); ?>

                <div>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Email Address" value="<?= set_value('email'); ?>" />
                    <small class="text-danger"><?= form_error('email'); ?>
                    </small>
                </div>
                <div>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password" />
                    <small class="text-danger"><?= form_error('password'); ?>
                    </small>
                </div>
                <div>
                    <button type="submit" class="btn btn-default submit">Login</button>
                    <a class="reset_pass" href="<?= base_url('auth/forgotpassword'); ?>">Forgot password?</a>
                </div>

                <div class="clearfix"></div>

                <div class="separator">
                    <p class="change_link">New to site?
                        <a href="<?= base_url('auth/registration'); ?>"> Create Account </a>
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