<header class="header-desktop">
    <div class="section__content section__content--p30">
        <div class="container-fluid">
            <div class="header-wrap">
                <h4>Welcome to Feedback System</h4>
                <div class="header-button">
                    <?php
                        $adminid=$_SESSION['feedid'];
                        $rethead=mysqli_query($con,"select full_name, user_name from users where id='$adminid'");
                        $rowhead=mysqli_fetch_array($rethead);
                        $name=$rowhead['full_name'];
                        $username=$rowhead['user_name'];?>
                    <div class="account-wrap">
                        <div class="account-item clearfix js-item-menu">
                            <div class="content">
                                <a class="js-acc-btn" href="#"><?php echo $name; ?></a>
                            </div>
                            <div class="account-dropdown js-dropdown">
                                <div class="info clearfix">
                                    <div class="content">
                                        <h5 class="name">
                                            <a href="#"><?php echo $name; ?></a>
                                        </h5>
                                    </div>
                                </div>
                                <div class="account-dropdown__footer">
                                    <a href="logout.php">
                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>