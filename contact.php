<?php include'header.php';?>
<!-- banner -->
<div class="inside-banner">
  <div class="container"> 
    <span class="pull-right"><a href="#">Home</a> / Contact Us</span>
    <h2>Contact Us</h2>
</div>
</div>
<!-- banner -->




<div class="container">
<div class="spacer">
<div class="row contact">
  <div class="col-lg-6 col-sm-6 ">

<?php
include("admin/common/connection.php");
if(isset($_POST['submit'])=='Message'){
$fname=$_POST['fname'];
$email=$_POST['email'];
$cnum=$_POST['cnum'];
$message=$_POST['message'];
$query="insert into manage_contact(fname,email,cnum,message) values('$fname','$email','$cnum','$message')";
$result=mysql_query($query);
if($result=='1'){
	echo "added";
}	
else{
	echo "Error:Please try again".mysql_error();
}
}
?>
  
  <form method="post">

                <input type="text" class="form-control" placeholder="Full Name" name="fname">
                <input type="text" class="form-control" placeholder="Email Address" name="email">
                <input type="text" class="form-control" placeholder="Contact Number" name="cnum">
                <textarea rows="6" class="form-control" placeholder="Message" name="message"></textarea>
				<input type="submit" class="btn btn-success" name="submit" value="Message"/>
          

</form>
                
        </div>
  <div class="col-lg-6 col-sm-6 ">
  <div class="well"><iframe width="100%" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Pulchowk,+Patan,+Central+Region,+Nepal&amp;aq=0&amp;oq=pulch&amp;sll=37.0625,-95.677068&amp;sspn=39.371738,86.572266&amp;ie=UTF8&amp;hq=&amp;hnear=Pulchowk,+Patan+Dhoka,+Patan,+Bagmati,+Central+Region,+Nepal&amp;ll=27.678236,85.316853&amp;spn=0.001347,0.002642&amp;t=m&amp;z=14&amp;output=embed"></iframe></div>
  </div>
</div>
</div>
</div>

<?php include'footer.php';?>