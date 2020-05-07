<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<link rel="stylesheet" type="text/css" href="config/signUp.css">
</head>
<body>
	<?php include "koneksi.php";?>
	<div class="container-login">
		<div class="wrap-login">
			<form class="login100-form" method="post" action="signUpDB.php" name="signUp">
				<span class="login100-form-title">Sign Up</span>
				<div class="column">
					<div class="wrap-input100">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Username">
					</div>

					<div class="wrap-input100">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="password">
					</div>

					<div class="wrap-input100">
						<span class="label-input100">Nama</span>
						<input class="input100" type="text" name="nama" placeholder="Nama Lengkap">
					</div>
				</div>

				<div class="column">
					<div class="wrap-input100">
						<span class="label-input100">Tanggal Lahir</span>
						<input class="input100" type="date" name="tanggallahir">
					</div>
					<div class="wrap-input100">
						<span class="label-input100">Email</span>
						<input class="input100" type="text" name="email" placeholder="Email">
					</div>
					<div class="wrap-input100">
						<span class="label-input100">Profesi</span>
						<input class="input100" type="text" name="profesi" placeholder="Profesi">
					</div>
				</div>

				<div class="wrap-input100" >
					<span class="label-input100">Deskripsi</span>
					<textarea class="input100" name="deskripsi" placeholder="Deskripsi"></textarea>
				</div>

				<div class="wrap-input100-keahlian">
					<span class="label-input100">Keahlian</span>
					<div class="boxes">
					<?php 
							$query = mysqli_query($con,"Select * from kelompokKeahlian");
							$i = 1;
							while($d = mysqli_fetch_array($query)){ 
					?>
								<div class="dropdown">
									<span class="box"><?php echo $d['namakk']."<br>";?></span>
									<div class="dropdown-content">
									<?php
										$query2 = mysqli_query($con,"Select * from keahlian where idkk = '$d[idkk]'");
										while($d2 = mysqli_fetch_array($query2)){
									?>

									<input type="checkbox" name="keahlian[]" value="<?php echo $d2['idk']?>"><? echo $d2['namak'];?> <br>
									<?php } ?>
									</div>
								</div>
							<?php if($i % 3 == 0){ ?>
								<br>
					<?php
							}
							$i++;
						}
					?>
					</div>
				</div>
			<input class="button" type="submit" name="Save" value="Save">
			</form>
		</div>
	</div>
</body>
</html>