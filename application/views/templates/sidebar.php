<div class="col-md-3 left_col">
    <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
            <a class="site_title"><i class="fa fa-map"></i> <span>WebGIS</span></a>
        </div>

        <div class="clearfix"></div>

        <!-- menu profile quick info -->
        <div class="profile clearfix">
            <div class="profile_pic">
                <img src="<?= base_url('assets/images/') . $user['image']; ?>" class="img-circle profile_img">
            </div>
            <div class="profile_info">
                <span>Welcome,</span>
                <h2><?= $user['name']; ?></h2>
            </div>
            <div class="clearfix"></div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- QUERY DARI MENU -->

        <?php
        $role_id = $this->session->userdata('role_id');
        $queryMenu = " SELECT `user_menu`.`id`, `menu`
                            FROM `user_menu` 
                            JOIN `user_access_menu`
                            ON `user_menu`.`id` = `user_access_menu`.`menu_id`
                            WHERE `user_access_menu`.`role_id` = $role_id
                            ORDER BY `user_access_menu`.`menu_id` ASC";
        $menu = $this->db->query($queryMenu)->result_array();
        ?>

        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
                <ul class="nav side-menu" active>

                    <!-- LOOPING MENU -->
                    <?php foreach ($menu as $m) : ?>

                        <li><a><i class=""></i><?= $m['menu']; ?><span class="fa fa-chevron-down"></span></a>
                            <ul class="nav child_menu">

                                <!-- SUB-MENU SESUAI MENU -->
                                <?php
                                $menuId = $m['id'];
                                $querySubMenu = "SELECT  *
                                    FROM `user_sub_menu` JOIN `user_menu` 
                                    ON `user_sub_menu`.`menu_id` = `user_menu`.`id`
                                    WHERE `user_sub_menu`.`menu_id` = $menuId
                                    AND `user_sub_menu`.`is_active` = 1
                                    ";
                                $subMenu = $this->db->query($querySubMenu)->result_array();
                                ?>

                                <?php foreach ($subMenu as $sm) : ?>
                                    <?php if ($title == $sm['title']) : ?>
                                        <li class="nav-item active">
                                        <?php else : ?>
                                        <li class="nav-item">
                                        <?php endif; ?>
                                        <a class="nav-link" href="<?= base_url($sm['url']); ?>">
                                            <i class="<?= $sm['icon']; ?>"></i>
                                            <span><?= $sm['title']; ?></span></a>
                                        </li>
                                    <?php endforeach; ?>

                            </ul>
                        </li>

                    <?php endforeach; ?>

                    <!-- sidebar menu -->

                    
                    <li><a href="<?= base_url('auth/logout'); ?>"><i class="fa fa-sign-out"></i> Log Out</a></li>
                </ul>
            </div>
        </div>
        <!-- /sidebar menu -->


    </div>
</div>