<?php

include "koneksi.php";
if(isset($_POST['Save'])){

	$email=$_POST['email'];
	$username=$_POST['username'];
	$password=md5($_POST['password']);
	$nama=$_POST['nama'];
	$profesi=$_POST['profesi'];
	$deskripsi=$_POST['deskripsi'];
	$tanggallahir=$_POST['tanggallahir'];

	
	$query="INSERT INTO member (username, password, Nnama_member, email, profesi, deskripsi_member,Tgl_lahir) VALUES( '$username','$password','$nama','$email','$profesi', '$deskripsi', '$tanggallahir')";

	$status=mysqli_query($con, $query);
	foreach ($_POST['keahlian'] as $key => $value) {
		$query2 = "INSERT INTO keahlianMember VALUES('$username','$value')";
		$status2=mysqli_query($con, $query2);
	}
	
	if($status&&$status2){
		header ('location: signIn.php');
	}
	else{
		header ('location: signUp.php?status=gagal');
	}
}
	else{
		die("Akses dilarang...");
	}
?>