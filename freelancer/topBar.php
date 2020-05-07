<?php session_start();?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div class="header">
		<div class="header-left">
			<a href="myProject.php">My Project</a><a href="browseProject.php">Browse Project</a><a href="postProject.php">Post Project</a>
		</div>
		
		<div class="header-right">
			<div class="dropdown">
				<img src="img/<?php echo $_SESSION['fotoProfile']?>" width="50pxx">
				<div class="dropdown-content">
					<a class="box" href="myprofile.php">Profile</a>
					<a class="box" href="logout.php">Log Out</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>