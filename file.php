<?php 
$conek=mysqli_connect('localhost','root','','jurnal_firda');

if(isset($_GET['nim'])){
	mysqli_query($conek, "DELETE FROM jurnal WHERE nim= '".$_GET['nim']."' ");
	header("Location: file.php");
}
?>

<a href = "form.php"> inputan baru</a><br><br>

<form method="post">
	mencari:<input type="text" name="mencari">
	<input type="submit" name="submit" value="kirim">
</form><br>







<!-- $hsl= mysqli_connect($conek,"SELECT * FROM jurnal");
$arr2=mysqli_fetch_array($hsl);


print_r($arr2);
foreach ($arr2 as $value) {
	echo $value;
} -->

 


 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 </head>
 <body>
 	<table border="5">
 		<thead>
 			<td>No</td>
 			<td>NIM</td>
			<td>Nama</td>
			<td>Program Studi</td>
			<td>Aksi</td>
 		</thead>

 		<tbody>
 			<?php 
 			$hsl;
 			if (isset($_POST['submit'])){
 				$hsl= mysqli_query($conek, "SELECT * FROM jurnal WHERE nim LIKE '%".$_POST['mencari']."%'");
 			}else{
 				$hsl = mysqli_query($conek, "SELECT * FROM jurnal");
 			}


 			$i = 1;
 			while($arr2 = mysqli_fetch_array($hsl)){
 				echo "<tr>";
 				echo "<td>$i</td>";
 				echo "<td>".$arr2['nim']."</td>";
 				echo "<td>".$arr2['nama']."</td>";
 				echo "<td>".$arr2['program_studi']."</td>";
 				echo "<td><a href='file.php?nim=".$arr2['nim']."'>hapus</a></td>";
 				echo "</tr>";
 				$i++;
 			}



 			 ?>

 		</tbody>

 	</table>
 
 </body>
 </html>