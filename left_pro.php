
<div class="hot-properties hidden-xs">
<h4>Hot Properties</h4>

<?php 
		
include("admin/common/connection.php");
$category=$_GET['category'];
$query="select * from add_property where category='$category' limit 0,5";
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


<div class="row">
                <div class="col-lg-4 col-sm-5"><img src="admin/property/<?php echo $image;  ?>" class="img-responsive img-circle" alt="properties"/></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php?id=<?php echo $id; ?>&category=<?php echo $category=$_GET['category']; ?>"><?php echo $space; ?></a></h5>
                  <p class="price"><?php echo $price; ?></p> </div>
              </div>
			  
<?php } ?>		  
			

</div>
