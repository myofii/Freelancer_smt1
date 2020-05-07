<?php
	include "koneksi.php";
	$username = $_POST['username'];
	$pass = md5($_POST['password']);

	if(!ctype_alnum($username) or !ctype_alnum($pass)){
		echo "Error";
	}else{
		$login = mysqli_query($con,"select * from member where username = '$username' and password = '$pass'");
		$ketemu = mysqli_num_rows($login);
		$r=mysqli_fetch_array($login);
		if($ketemu > 0){
			session_start();
			$_SESSION['username'] = $r['username'];
			if($r['foto_profile']==NULL){
				$_SESSION['fotoProfile'] = 'profileIcon.png';
			}else{
				$_SESSION['fotoProfile'] = $r['foto_profile'];
			}
			
			header('location: myProject.php');
		}else{
			echo "<script type='text/javascript'>alert('username atau password salah!!!'); window.location = 'signIn.php'</script>";
		}
	}
?>