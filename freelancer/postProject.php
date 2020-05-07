<!DOCTYPE html>
<html>
<head>
	<title>Post Project</title>
	<link rel="stylesheet" type="text/css" href="config/signUp.css">
</head>
<body>
	<?php include "koneksi.php"?>
	<div class="container-login">
		<div class="wrap-login">
			<form class="login100-form" method="post" action="postProjectDB.php" enctype="multipart/form-data">
				<span class="login100-form-title">Post Project</span>
				<div class="wrap-input100">
					<span class="label-input100">Nama Project</span>
					<input class="input100" type="text" name="pname" placeholder="Nama Project">
				</div>

				<div class="wrap-input100">
					<span class="label-input100">Deskripsi Project</span>
					<textarea class="input100" name="pdescription" placeholder="Deskripsi Project"></textarea>
				</div>
				<div class="wrap-input100">
					<span class="label-input100">Budget Project (IDR)</span>
					<input class="input100" style="width: 40%;" type="number" name="minpbudget" placeholder="Budget Minimal">
					<input class="input100" style="width: 40%;" type="number" name="maxpbudget" placeholder="Budget Maksimal">
				</div>
				
				<div class="wrap-input100-keahlian">
					<span class="label-input100">Skill Requirement</span>
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
			<input class="button" type="submit" name="Save" value="Post">
			</form>
		</div>
	</div>
</body>
</html>