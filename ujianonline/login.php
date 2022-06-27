<?php
@session_start();
$db = mysqli_connect("localhost", "root", "", "db_elearning");
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>E-Learning SD Negeri 1 Dibal</title>

        <!-- CSS -->
        <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="assets/css/form-elements.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- Favicon and touch icons -->
        <link rel="shortcut icon" href="assets/ico/favicon.png">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
</head> 
<body>
<!-- Top content -->
<div class="top-content">
        <div class="inner-bg">
             <div class="container">
             <div class="row">
                        <center><img src="style/assets/img/logo_login.png" /></center>
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>E-Learning</strong> SD Negeri 1 Dibal</h1>
                            <div class="description">
                            	<p>
	                            	Selamat datang Siswa/Siswi SD Negeri 1 Dibal, ini adalah media pembelajaran online! 
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>Login untuk mengkases E-Learning</h3>
                            		<p>Masukkan Username dan Password anda :</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>


    <div class="form-bottom">
            <?php
            if(@$_GET['page'] == '') { ?>
                <div class="row">
                        <?php
                        if(@$_POST['login']) {
                            $user = @mysqli_real_escape_string($db, $_POST['user']);
                            $pass = @mysqli_real_escape_string($db, $_POST['pass']);
                            $sql = mysqli_query($db, "SELECT * FROM tb_siswa WHERE username = '$user' AND password = md5('$pass')") or die ($db->error);
                            $data = mysqli_fetch_array($sql);
                            if(mysqli_num_rows($sql) > 0) {
                                if($data['status'] == 'aktif') {
                                    @$_SESSION['siswa'] = $data['id_siswa'];
                                    echo "<script>window.location='./';</script>";
                                } else {
                                    echo '<div class="alert alert-warning">Login gagal, akun Anda sedang tidak aktif</div>';
                                }
                            } else {
                                echo '<div class="alert alert-danger">Login gagal, username / password salah, coba lagi!</div>';
                            }
                        } ?>
                        <form method="post">
                        <div class="form-group">
                            <label class="sr-only" for="user">Username</label>
                            <input type="text" name="user" placeholder="Username..." class="form-username form-control" id="user" required />
                        </div>
                        <div class="form-group">    
                            <label class="sr-only" for="pass">Password</label>
                            <input type="password" name="pass" placeholder="Password..." class="form-password form-control" id="pass"  required />
                        </div>   
                            <hr />
                            <button type="submit" name="login" value="Login" class="btn">Login</button>
                        </form>
                    </div>
                </div>
                <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 social-login">
                        	<h3>Silahkan klik tombol di bawah ini, sesuai kebutuhan anda :</h3>
                            <input type="reset" class="btn btn-danger" />
                            <a href="./?hal=daftar" class="btn btn-info">Daftar</a>
                        	</div>
                        </div>
            <?php
            } else if(@$_GET['page'] == 'berita') {
                include "inc/berita.php";
            } ?>
        </div>
    </div>

<!-- Javascript -->
<script src="assets/js/jquery-1.11.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.backstretch.min.js"></script>
        <script src="assets/js/scripts.js"></script>
        
        <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->

</body>
</html>