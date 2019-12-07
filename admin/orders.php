<?php

include("../db.php");
error_reporting(0);
if(isset($_GET['action']) && $_GET['action']!="" && $_GET['action']=='delete')
{
$order_id=$_GET['order_id'];
//if(empty($_GET['order_id']))
/*this is delet query*/
mysqli_query($con,"update orders_info  set status=1 where order_id='$order_id'");
} 

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Panel</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="style/css/bootstrap.min.css" rel="stylesheet">
<link href="style/css/k.css" rel="stylesheet">




</head>
<body>
  <?php include("include/header.php");?>
   	<div class="container-fluid main-container">
	<?php include("include/side_bar.php");?>
    <div class="col-md-9 content" style="margin-left:10px">
    <div class="panel-heading" style="background-color:#c4e17f">
	<h1>Orders</h1></div><br>
<div class='table-responsive'>  
<div style="overflow-x:scroll;">

<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Customer Name</th>
                <th>Products</th>
                <th>Email</th>
                <th>Address</th>
                <th>Quantity</th>
                <th>Amount</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        	<?php 
$result=mysqli_query($con,"SELECT * FROM `orders_info` WHERE status=0")or die ("query 1 incorrect.....");

foreach ($result as $key => $value) {
    # code...

    echo "<tr><td>".$value['f_name']."</td><td><a class=' btn btn-success' href='orders_details.php?order_id=".$value['order_id']."'>View Products</a></td><td>".$value['email']."</td><td>".$value['address']."<br>ZIP:".$value['zip']."<br>".$value['state']."</td><td>".$value['prod_count']."</td><td>".$value['total_amt']."</td>

<td>
<a class=' btn btn-success' href='orders.php?order_id=".$value['order_id']."&action=delete'>Delete</a>
</td></tr>";
}


?>
           
        </tbody>
    </table>



</div></div>
</div></div>
<?php include("include/js.php");?>
</body>
</html>
<script type="text/javascript">
$(document).ready(function() {
    $('#example').DataTable();
} );
</script>