<?php include'header.php';?>
<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="index.php">Home</a> /<?php echo $category=$_GET['category']; ?></span>
    <h2><?php echo $category=$_GET['category']; ?></h2>
</div>
</div>
<!-- banner -->


<div class="container">
<div class="properties-listing spacer">

<div class="row">
<div class="col-lg-3 col-sm-4 ">

<?php include("left.php"); ?>



</div>

<div class="col-lg-9 col-sm-8">
<div class="sortby clearfix">
<div class="pull-left result"><h1>	<?php echo $category=$_GET['category']; ?> Properties</h1> </div>
 
</div>
<div class="row">
							
<?php 
$category=$_GET['category'];					
include("admin/common/connection.php");
$query="select * from add_property where category='$category'";
$result=mysql_query($query) ;				
while($row=mysql_fetch_array($result))
{

$id=$row["id"];
$dealer=$row["dealer"];
$category=$row["category"];
$type=$row["type"];
$city=$row["city"];
$floor=$row["floor"];
$location=$row["location"];
$specification=$row["specification"];
$space=$row["space"];
$price=$row["price"];
$image=$row["image"];
?>							

				


     <!-- properties -->
      <div class="col-lg-4 col-sm-6" >
      <div class="properties">
        <div class="image-holder"><img src="admin/property/<?php echo $image; ?>"  width="240" height="150" alt="properties">
         
        </div>
        <h4><a href="property-detail.php"><?php echo $type; ?></a></h4>
        <p class="price">Price: Rs. <?php echo $price; ?></p>
       
        <a class="btn btn-primary" href="property-detail.php?id=<?php echo $id;?>&category=<?php echo $category; ?>">View Details</a>
      </div>
      </div>
      <!-- properties -->

	  
<?php } ?>
	  
	  

     
     
     

</div>
</div>
</div>
</div>
</div>

<?php include'footer.php';?>