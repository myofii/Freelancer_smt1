<?php
	session_start();
	include "koneksi.php";
	$action = $_GET['action'];
	switch ($action) {
		case 'foto':
			$target_dir = "img/";
			$target_file = $target_dir . basename($_FILES["fotoprofile"]["name"]);
			$filename = basename(($_FILES['fotoprofile']['name']));
			$uploadOk = 1;
			$imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
			// Check if image file is a actual image or fake image
			if(isset($_POST["submit"])) {
			    $check = getimagesize($_FILES["fotoprofile"]["tmp_name"]);
			    if($check !== false) {
			        echo "File is an image - " . $check["mime"] . ".";
			        $uploadOk = 1;
			    } else {
			        echo "File is not an image.";
			        $uploadOk = 0;
			    }
			}
			// Check if file already exists
			if (file_exists($target_file)) {
			    echo "Sorry, file already exists.";
			    $uploadOk = 0;
			}
			// Check file size
			if ($_FILES["fotoprofile"]["size"] > 500000) {
			    echo "Sorry, your file is too large.";
			    $uploadOk = 0;
			}
			// Allow certain file formats
			if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
			&& $imageFileType != "gif" ) {
			    echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
			    $uploadOk = 0;
			}
			// Check if $uploadOk is set to 0 by an error
			if ($uploadOk == 0) {
			    echo "Sorry, your file was not uploaded.";
			// if everything is ok, try to upload file
			} else {
			    if (move_uploaded_file($_FILES["fotoprofile"]["tmp_name"], $target_file)) {
			    	$query=mysqli_query($con,"update  member set foto_profile = '$filename' where username = '$_SESSION[username]'");
			    	$_SESSION['fotoProfile'] = $filename;
			       	header('location: myprofile.php');
			    } else {
			        echo "Sorry, there was an error uploading your file.";
			    }
			}

			break;
		
		case 'contact':
			if(isset($_POST['save'])){
				$email = $_POST['email'];
				$noHp = $_POST['noHp'];
				$profesi = $_POST['profesi'];
				if(mysqli_query($con,"update member set email = '$email', noHp = '$noHp', profesi='$profesi'")){
					header('location: myprofile.php');
				}

			}
			break;
	}
?>