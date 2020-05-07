<?php

include "koneksi.php";

if(isset($_POST['Save'])){
	session_start();
	$idPembuat = $_SESSION['username'];
	$name = $_POST['pname'];
	$deskripsi = $_POST['pdescription'];
	$budgetmin = $_POST['minpbudget'];
	$budgetmax = $_POST['maxpbudget'];

	$query="INSERT INTO project (judul_project,descripsi_project,budget_project_min,budget_project_max,idPembuat) VALUES ('$name','$deskripsi','$budgetmin','$budgetmax','$idPembuat')";
	$status=mysqli_query($con, $query);

	//Upload File
	$tfile = count($_FILES['pfile']['name']);
	if($tfile>0){
		$idp=mysqli_fetch_array(mysqli_query($con,"SELECT max(idp) from project"));
		
		for ($i=0; $i <$tfile ; $i++) { 
			$temp = explode('.', $_FILES['pfile']['name'][$i]);
			$filename =basename($_FILES['pfile']['name'][$i]);
			if(move_uploaded_file($_FILES['pfile']['tmp_name'][$i],'projectFile/'.$filename)){
				mysqli_query($con, "INSERT INTO projectFile VALUES ((select max(idp) from project),'$filename')");
			}
		}		
	}
		
	foreach ($_POST['keahlian'] as $key => $value) {
		$query2 = "INSERT INTO keahlianProject VALUES((Select max(idp) from project),'$value')";
		$status2=mysqli_query($con, $query2);
	}
	
	if($status&&$status2){
		header ('location: myProject.php');
	}
	else{
		header ('location: postProject.php?status=gagal');
	}

}else{

	die("Akses dilarang...");
}
?>