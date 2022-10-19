<?php include'header.php';?>
<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="index.php">Home</a> / Dealers</span>
    <h2>Dealers</h2>
</div>
</div>
<!-- banner -->


<div class="container">
<div class="spacer agents">

<div class="row">
  <div class="col-lg-8  col-lg-offset-2 col-sm-12">
      <!-- agents -->
	  
	 <?php 
					
include("admin/common/connection.php");
$query="select * from add_dealers";
$result=mysql_query($query) ;				
while($row=mysql_fetch_array($result))
{

$id=$row["id"];
$dname=$row["dname"];
$cnumber=$row["cnumber"];
$email=$row["email"];
$address=$row["address"];
$cntctperson=$row["cntctperson"];
$pno=$row["pno"];
$image=$row["image"];
?>		 
	  
	  
	  
      <div class="row">
		<table width="100%" style="padding:10px">
			<tr>
				<td style="padding-top:10px">
        <div class="col-lg-2 col-sm-2 "><a href="#"><img src="admin/dealers/<?php echo $image; ?>" width="100" height="120" alt="agent name"></a></div>
        <div class="col-lg-7 col-sm-7 "style="padding-left:30px"><h4><?php echo $dname;?></h4></div>
		<div class="col-lg-7 col-sm-7 "style="padding-left:30px"><font color="#72b70f">Address:</font><?php echo $address;?></div>
		<div class="col-lg-7 col-sm-7 "style="padding-left:30px"><font color="#72b70f">Contact Person:</font><?php echo $cntctperson;?></div>
		<div class="col-lg-7 col-sm-7 "style="padding-left:30px"><font color="#72b70f">Contact number:</font><?php echo $pno;?></div>
		<div class="col-lg-7 col-sm-7 "style="padding-left:30px"><font color="#72b70f"><a href="dealer_pro.php?dname=<?php echo $dname; ?>">Properites</a></div>
		</td>
		<td valign="top">
        <div class="col-lg-3 col-sm-3 "><span class="glyphicon glyphicon-envelope"></span> <a href="#"><?php echo $email; ?></a><br>
        <span class="glyphicon glyphicon-earphone"></span><?php echo $cnumber; ?></div>
		</td>
		</tr>
		</table>
      </div>
	  
      <!-- agents -->
      <div><hr  style="border-color:#000"></div>
<?php } ?>	  
	  
	  
	  
	  

      
     
  </div>
</div>


</div>
</div>

<?php include'footer.php';?>