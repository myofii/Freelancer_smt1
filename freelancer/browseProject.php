<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div><?include "topBar.php"?></div>
	<?php
		include "koneksi.php";
		$query = mysqli_query($con,"select * from project order by idp desc");
		
	?>
	<div class="content">
		<?php
			while($d = mysqli_fetch_array($query)){
		?>
		<a href="detailProject.php?id=<?php echo $d['idp']?>">
		<div class="project">
			<div class="dProject-budget"">
				<div style="font-size: 12px; text-align: left; vertical-align: text-top;">
					Budget Project(IDR)
				</div>
				<span style="color:green; text-align: center;">Rp. <?php echo number_format($d['budget_project_min']);?> <br><span style="color:black">s/d</span><br>Rp. <?php echo number_format($d['budget_project_max']);?></span>
			</div>
			<img src="img/project.png">
			<div class="project-title"><?php echo $d['judul_project']?></div>
			<div class="project-desc"><?php echo $d['descripsi_project']?></div>
			<img src="img/tag.png" style="margin-top: 10px">
			<div class="project-tag">
				<?php
					$query2 = mysqli_query($con,"select k.namak from keahlian k, keahlianProject kp, project p where kp.idk=k.idk and kp.idp=p.idp and p.idp=$d[idp]");
					while($d2 = mysqli_fetch_array($query2)){
						echo $d2['namak'].", ";
					}
				?>
			</div>
			
		</div></a>
	<?php } ?>
	</div>
	<div><?php include "footer.php"?></div>
</body>
</html>