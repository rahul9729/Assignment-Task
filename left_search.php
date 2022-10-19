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
  <div class="advertisement">
  <h4>Advertisements</h4>
  <img src="images/advertisements.jpg" class="img-responsive" alt="advertisement">

</div>
  


