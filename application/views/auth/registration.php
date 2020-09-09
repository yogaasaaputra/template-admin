<div class="login_wrapper">
    <div class="animate form login_form">
        <section class="login_content">
            <form method="post" action="<?= base_url('auth/registration'); ?>">
                <h1>Create Account</h1>
                <div>
                    <input type="text" class="form-control" id="name" name="name" placeholder="Fullname" value="<?= set_value('name'); ?>" />
                    <small class="text-danger"><?= form_error('name'); ?>
                    </small>
                </div>
                <div>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Email Address" value="<?= set_value('email'); ?>">
                    <small class="text-danger"><?= form_error('email'); ?>
                    </small>
                </div>
                <div>
                    <input type="password" class="form-control" id="password1" name="password1" placeholder="Password" />
                    <small class="text-danger"><?= form_error('password1'); ?>
                    </small>
                </div>
                <div>
                    <input type="password" class="form-control" id="password2" name="password2" placeholder="Repeat Password" />

                </div>
                <div>
                    <button type="submit" class="btn btn-default submit">Create Account</button>
                    <a class="reset_pass" href="<?= base_url('auth/forgotpassword'); ?>">Forgot password?</a>
                </div>


                <div class="clearfix"></div>

                <div class="separator">
                    <p class="change_link">Already a member ?
                        <a href="<?= base_url('auth'); ?>"> Login</a>
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