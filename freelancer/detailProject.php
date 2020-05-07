<!DOCTYPE html>
<html>
<head>
	<title>Detail Project</title>
</head>
<body>
	<div><?php include "topBar.php"?></div>
	<?php
		include "koneksi.php";
		$query = mysqli_query($con,"select * from project where idp = '$_GET[id]'");
		$m=mysqli_fetch_array($query);
	?>
	<div class="content">
		<div class="dProject-content">
			<div class="dProject-tittle">
				<?php echo $m['judul_project'] ?>
			</div>
			<div class="dProject-desc">
				<h3 style="font-size: 16px;font-style: normal;">Deskripsi Project</h3>
				<?php echo $m['descripsi_project'] ?>
			</div>
			<div class="dProject-tag">
				<h3 style="font-size: 16px;font-style: normal;">Syarat Skill</h3>
				<?php $query2=mysqli_query($con, "select * from project p, keahlianProject kp, keahlian k where p.idp=kp.idp and p.idp ='$_GET[id]' and kp.idk=k.idk");while($d2 = mysqli_fetch_array($query2)){
								echo $d2['namak'].",  "; }?>
			</div>
		</div>
		<div class="dProject-content">
			<div class="box-bid" style="background-color: white; width:200px;float: left; color:black;">
				<div style="font-size: 12px; text-align: left; vertical-align: text-top;">
					Budget Project(IDR)
				</div>
				<span style="color:green;">Rp. <?php echo number_format($m['budget_project_min']);?> <br><span style="color:black">s/d</span><br> Rp. <?php echo number_format($m['budget_project_max']);?></span>
			</div>
			<?php if($m['idPembuat']!=$_SESSION['username']){
				?>
				<div class="dropdown" style="float: left;">
				<span class='box-bid'>Tawarkan Project</span>
				<div class="dropdown-content" style="width: 250px;">
					<form action="bidding.php?id=<?php echo $_GET['id']?>" method="post">
						<input style="width: 100%;" type="number" name="biaya" placeholder="Biaya (IDR)">
						<input style="width: 100%;" type="number" name="lamaKerja" placeholder="Lama Kerja (Hari)">
						<input type="submit" name="bid" value="Tawarkan">
					</form>
				</div>
				</div>
				<?php
			}else{
				?>
				<span class='box-bid' style="background-color: #00AA86;"><?php echo $m['status']?></span>
				<?php
			}
			?>			
		</div>
	</div>
	<div class="content">
		<table width="100%">
			<tr>
				<th>Freelancer</th><th>Tawaran (IDR)</th>
			</tr>
			<?php 
			$query = mysqli_query($con,"select m.username, m.foto_profile, m.Nnama_member, b.proposalBiaya, b.lamaKerja from member m, bid b where b.username = m.username and b.idp = $_GET[id] ");
			while($d = mysqli_fetch_array($query)){
				if($d['foto_profile']==NULL){
					$fotoProfile = "profileIcon.png";
				}else{
					$fotoProfile = $d['foto_profile'];	
				}?>
				<tr>
					<td>
						<a href="myprofile.php?freelancer=<?php echo $d['username']?>">
						<div style="width: 150px; float: left; margin-right: 20px">
							<img width="100%" src="img/<?php echo $fotoProfile?>">
						</div>
						<div class="dProject-tittle" style="float: left; color: dodgerblue; ">
							<?php echo $d['Nnama_member']?>
						</div>
						</a>
					</td>
					<td align="center">
						<div style="font-size: 16px; color: green;">
							Rp. <?php echo number_format($d['proposalBiaya'])?>
						</div>
						<div style="font-size: 11px;font-style: italic; ">
							Dalam <?php echo $d['lamaKerja'] ?> hari
						</div>
					</td>
				</tr>
				<?php
			}?>
		</table>
	</div>
	<div><?php include "footer.php" ?></div>
</body>
</html>