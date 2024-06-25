<?php
session_start();
include('includes/config.php');
include('includes/header.php');
include('includes/sidebar.php');

// For User Login
if(isset($_POST['login']))
{
    $email=$_POST['email'];
    $password=$_POST['password'];
    $stmt=$mysqli->prepare("SELECT email,password,id FROM userregistration WHERE email=? and password=? ");
    $stmt->bind_param('ss',$email,$password);
    $stmt->execute();
    $stmt->bind_result($email,$password,$id);
    $rs=$stmt->fetch();
    $stmt->close();
    if($rs)
    {
        $_SESSION['id']=$id;
        $_SESSION['login']=$email;
        header("location:dashboard.php");
    }
    else
    {
        echo "<script>alert('Invalid Username/Email or password');</script>";
    }
}

// For Accommodation Manager Login
if(isset($_POST['manager_login']))
{
    $manager_email=$_POST['manager_email'];
    $manager_password=$_POST['manager_password'];
    $stmt=$mysqli->prepare("SELECT email,password,id FROM accommanager WHERE email=? and password=? ");
    $stmt->bind_param('ss',$manager_email,$manager_password);
    $stmt->execute();
    $stmt->bind_result($manager_email,$manager_password,$manager_id);
    $rs=$stmt->fetch();
    $stmt->close();
    if($rs)
    {
        $_SESSION['manager_id']=$manager_id;
        $_SESSION['manager_login']=$manager_email;
        header("location:manager_dashboard.php");
    }
    else
    {
        echo "<script>alert('Invalid Manager Username/Email or password');</script>";
    }
}
?>

<!doctype html>
<html lang="en" class="no-js">
<head>
    <!-- Meta tags, CSS links, and other head content -->
</head>
<body>
    <!-- Header and other common elements -->
    <?php include('includes/header.php');?>
    <div class="ts-main-content">
        <?php include('includes/sidebar.php');?>
        <div class="content-wrapper">
            <div class="container-fluid">
                <!-- User Login Form -->
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <h2 class="page-title">Student Login</h2>
                        <div class="well row pt-2x pb-3x bk-light">
                            <div class="col-md-8 col-md-offset-2">
                                <form action="" class="mt" method="post">
                                    <label for="" class="text-uppercase text-sm">Email</label>
                                    <input type="text" placeholder="Email" name="email" class="form-control mb">
                                    <label for="" class="text-uppercase text-sm">Password</label>
                                    <input type="password" placeholder="Password" name="password" class="form-control mb">
                                    <input type="submit" name="login" class="btn btn-primary btn-block" value="Login">
                                </form>
                            </div>
                        </div>
                        <div class="text-center text-light">
                            <a href="forgot-password.php" class="text-light">Forgot password?</a>
                        </div>
                    </div>
                </div>
                <!-- Accommodation Manager Login Form -->
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <h2 class="page-title">Accommodation Manager Login</h2>
                        <div class="well row pt-2x pb-3x bk-light">
                            <div class="col-md-8 col-md-offset-2">
                                <form action="" class="mt" method="post">
                                    <label for="" class="text-uppercase text-sm">Email</label>
                                    <input type="text" placeholder="Email" name="manager_email" class="form-control mb">
                                    <label for="" class="text-uppercase text-sm">Password</label>
                                    <input type="password" placeholder="Password" name="manager_password" class="form-control mb">
                                    <input type="submit" name="manager_login" class="btn btn-primary btn-block" value="Login">
                                </form>
                            </div>
                        </div>
                        <div class="text-center text-light">
                            <a href="forgot-password.php" class="text-light">Forgot password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- JavaScript files -->
     
</body>
</html>


