<?php

$server = "localhost";
$user ="root";
$password ="";
$nama_database ="Freelancer";

$con = mysqli_connect($server, $user, $password, $nama_database);

if(!$con){
	die("Gagal terhubung dengan data base:". mysqli_connect_error());
}

?>