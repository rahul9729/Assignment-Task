  <div class="search-form"><h4><span class="glyphicon glyphicon-search"></span> Search for</h4>
<form name="search" action="search_result.php" method="post">   
   <div class="row">
            <div class="col-lg-12">
              <select class="form-control" name="category">
                <option value="Buy">Buy</option>
                <option value="Rent">Rent</option>
                <option value="Sale">Sale</option>
              </select>
            </div>

          </div>

          <div class="row">
          <div class="col-lg-12">
              <select class="form-control" name="typename" required>
			  <option value="">Please select Property type</option>
			  
			  <?php 
												
													include("admin/common/connection.php");
													$typename=$_POST['typename'];
													$query="select * from add_type";
													$result=mysql_query($query) ;				
													while($row=mysql_fetch_array($result))
													{

													$id=$row["id"];
													$typename=$row["typename"];
												
												?>
												
												<option value="<?php echo $typename; ?>"><?php echo $typename; ?></option>
												<?php 												
												} 
												?>
											
											
				  
                
              </select>
              </div>
          </div>
          <input class="btn btn-primary" type="submit" value="FIND" name="submit">
		  </form>

  </div>
<div class="hot-properties hidden-xs">
<h4>Hot Properties</h4>


							
<?php 
												
include("admin/common/connection.php");
$dname=$_GET['dname'];
$query="select * from add_property where dealer='$dname' limit 0,5";
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
                <div class="col-lg-4 col-sm-5"><img src="admin/property/<?php echo $image ?>" class="img-responsive img-circle" alt="properties"></div>
                <div class="col-lg-8 col-sm-7">
                  <h5><a href="property-detail.php?id=<?php echo $id;?>&category=<?php echo $category; ?>"><?php echo $space; ?></a></h5>
                  <p class="price"><?php echo $price; ?></p> </div>
              </div>
			  
			  
<?php } ?>			  
			  


</div>
