<!DOCTYPE html>
<html>
<head>
	<title>My Profile</title>
	<link rel="stylesheet" type="text/css" href="config/style.css">
</head>
<body> 
	<div><?php include "topBar.php" ?></div>
	<?php
	include "koneksi.php";
	if(!isset($_GET['freelancer'])){
		$username = $_SESSION['username'];
		$fotoProfile = $_SESSION['fotoProfile'];
	}else{
		$username = $_GET['freelancer'];
	}
	$query = mysqli_query($con,"select * from member where username = '$username'");
	$d = mysqli_fetch_array($query);
	if(isset($_GET['freelancer'])){
		if($d['foto_profile']==NULL){
			$fotoProfile = "profileIcon.png";
		}else{
			$fotoProfile = $d['foto_profile'];	
		}
	}
	?>
	<div class="content">
		<div class="profile-nav">
			<div class="profile-img">
				<img src="img/<?php echo $fotoProfile?>">
				<?php if(!isset($_GET['freelancer'])){?>
				<div class="dropdown">
					<span>Ganti Foto Profile</span>
					<div class="dropdown-content">
						<form method="post" action="profileAction.php?action=foto" enctype="multipart/form-data">
							<input type="file" name="fotoprofile">
							<input style="width: 102px;" type="submit" name="upload" value="upload">
						</form>
					</div>
				</div>	
				<?php }?>
			</div>
			<div class="profile-contact">
				<?php if(!isset($_GET['freelancer'])){?>
				<div class="dropdown">
					<span style="font-size: 11px; font-style: italic; text-align: right; color: dodgerblue">edit contact</span>
					<div class="dropdown-content-contact">
						<form method="post" action="profileAction.php?action=contact">
							<input type="text" name="email" value="<?php echo $d['email']?>" placeholder="E-Mail">
							<input type="text" name="noHp" value="<?php echo $d['noHp']?>" placeholder="Nomor Hp">
							<input type="text" name="profesi" value="<?php echo $d['profesi']?>" placeholder="Profesi">
							<input type="submit" name="save" value="save" >
							
						</form>
					</div>
				</div>
				<?php } ?>
				<div class="content-contact" style="margin-left: 0px;">
					<img src='img/email.png'><?php echo $d['email'] ?>
				</div>
				<div class="content-contact" style="margin-left: 0px;">
					<img src='img/contact.png'><?php echo $d['noHp'] ?>
				</div>
				<div class="content-contact" style="margin-left: 0px;">
					<img src="img/job.png"><?php echo $d['profesi'] ?>
				</div>
			</div> 
		</div>
		<div class="profile-desc">
			<div class="dProject-tittle" style="margin-top: 0; font-size: 24px;">
				<?php echo $d['Nnama_member']?>
			</div>
			<div class="dProject-desc">
				<h3>Deskripsi</h3>
				<?php echo $d['deskripsi_member'];?>
			</div>
			<div class="dProject-tag">
				<h3>Kemampuan Freelancer</h3>
				<?php $query2=mysqli_query($con, "select * from keahlianMember km,member m, keahlian k where m.username=km.username and m.username ='$username' and km.idk=k.idk");while($d2 = mysqli_fetch_array($query2)){
								echo $d2['namak'].",  "; }?>
			</div>
		</div>
	</div>
	<div><?php include "footer.php" ?></div>
</body>
</html>
