<?php
include "koneksi.php";
session_start();
if(isset($_POST['bid'])){
	$username = $_SESSION['username'];
	$idp = $_GET['id'];
	$biaya = $_POST['biaya'];
	$lama = $_POST['lamaKerja'];
	$desc = $_POST['deskripsi'];

	$query = mysqli_query($con,"insert into bid (proposalBiaya,lamaKerja,deskripsiFreelancer,username,idp) values ('$biaya','$lama','$desc','$username','$idp')");
	header("location: detailProject.php?id=$_GET[id]");

}
?>
