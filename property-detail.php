<?php ob_start();?>
<?php include("header.php");?>
<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="#">Home</a> /<?php echo $category=$_GET['category']; ?></span>
    <h2><?php echo $category=$_GET['category']; ?></h2>
</div>
</div>
<!-- banner -->


<div class="container">
<div class="properties-listing spacer">

<div class="row">
<div class="col-lg-3 col-sm-4 hidden-xs">

<?php include("left_pro.php"); ?>

<div class="advertisement">
  <h4>Advertisements</h4>
  <img src="images/advertisements.jpg" class="img-responsive" alt="advertisement">

</div>

</div>

<div class="col-lg-9 col-sm-8 ">

<?php 
	$id=$_GET['id'];	
$category=$_GET['category'];		
include("admin/common/connection.php");
$query="select * from add_property where category='$category' and id=".$id;
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
}
?>							

		
<h2><?php echo $space; ?></h2>
<div class="row">
  <div class="col-lg-8">
  <div class="property-images">
    <!-- Slider Starts -->
<div id="myCarousel" >
      <!-- Indicators -->
     
      <div >
        <!-- Item 1 -->
        <div class="item active">
          <img src="admin/property/<?php echo $image; ?>" width="550" alt="properties" height="300" style="border-radius:20px; border:3px solid #72b70f" />
        </div>
        <!-- #Item 1 -->

      </div>
     
    </div>
<!-- #Slider Ends -->

  </div>
  



  <div class="spacer"><h4><span class="glyphicon glyphicon-th-list"></span> Properties Specification</h4>
  <p>Near By : <?php echo $specification; ?></p>

  </div>
  <div><h4><span class="glyphicon glyphicon-map-marker"></span> Location</h4>
<div class="well"><?php echo $location; ?></div>
  </div>

  </div>
  <div class="col-lg-4">
  <div class="col-lg-12  col-sm-6">
<div class="property-info">
<p class="price">$ 200,000,000</p>
  <p class="area"><span class="glyphicon glyphicon-map-marker"></span> City : <?php echo $city; ?></p>
  
  <div class="profile">
  <span class="glyphicon glyphicon-user"></span> Dealer Details
  
								
<?php 
												
include("admin/common/connection.php");
$query="select * from add_dealers where dname='$dealer'";
$result=mysql_query($query) ;				
while($row=mysql_fetch_array($result))
{


$dname=$row["dname"];
$cnumber=$row["cnumber"];
$email=$row["email"];
$address=$row["address"];
$cntctperson=$row["cntctperson"];
$pno=$row["pno"];
$image=$row["image"];
}
?>				
  <p style="color: #72b70f"><b><?php echo $dname; ?></b><p/>
   <p><img src="admin/dealers/<?php echo $image; ?>" width="170" height="100"></p>
   <p> Contact No. <?php echo $cnumber; ?></p>
  <p>Email :<?php echo $email; ?><br>Address <?php echo $address; ?></p>
  <p>Contact Person<?php echo $cntctperson; ?><br>Phone No. <?php echo $pno; ?></p>
 
  </div>
</div>

    

</div>
<div class="col-lg-12 col-sm-6 ">
<div class="enquiry">
  <h6><span class="glyphicon glyphicon-envelope"></span> Post Enquiry</h6>

  
  
  
  <?php
include("admin/common/connection.php");
if(isset($_POST['Submit'])=='Send'){
$name=$_POST['name'];
$email=$_POST['email'];
$num=$_POST['num'];
$message=$_POST['message'];
$query="insert into property_enquiry(name,email,num,message,pro_id,dname,price,space) values('$name','$email','$num','$message','$id','$dname','$price','$space')";
$result=mysql_query($query);
if($result=='1'){
	echo "<span style='color:green'>Your Enquiry send to admin. We will soon you contact.</span>";
}	
else{
	echo "Error:Please try again".mysql_error();
}
}
?>
  
 
  <form role="form" method="post">
                <input type="text" class="form-control" placeholder="Full Name" name="name" required/>
                <input type="text" class="form-control" placeholder="you@yourdomain.com" name="email" required/>
                <input type="text" class="form-control" placeholder="your number" name="num" required/>
                <textarea rows="6" class="form-control" placeholder="Whats on your mind?" name="message" required></textarea>
      <input type="submit" class="btn btn-primary" name="Submit" value="Send">      </form>
 </div>         
</div>
  </div>
</div>
</div>
</div>
</div>
</div>

<?php include("footer.php");?>
<?php ob_flush();?>