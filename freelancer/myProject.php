<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<div><?php include "topBar.php"?></div>
	<?php include "koneksi.php";
	$query = mysqli_query($con,"SELECT judul_project, project.idp,project.idPembuat , COUNT(username) as jmlh, avg(proposalBiaya) as rata2, project.status FROM project LEFT OUTER JOIN bid on project.idp = bid.idp GROUP BY project.idp HAVING project.idPembuat = '$_SESSION[username]' ")?>

	<div class="content">
		<table width="100%">
			<tr>
				<th>Judul Project</th><th>Jumlah Tawaran</th><th>Rata-Rata Tawaran</th>
			</tr>
			<?php 
			while ($d = mysqli_fetch_array($query)) {
			?>
			<tr>
				<td style="font-weight: bold;"><a style="color: dodgerblue" href="detailProject.php?id=<?php echo $d['idp']?>"><?php echo $d['judul_project']?></td><td align="center"><?php echo $d['jmlh']?></td><td align="center" style="color: green;">Rp. <?php echo number_format($d['rata2'])?></td>
			</tr>
			<?php
			}
		?>
		</table>
	</div>
	<div><?php include "footer.php"?></div>
</body>
</html>