<?php
include("../db.php");
error_reporting(0);
$order_id=$_GET['order_id'];
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
                <th>Product Name</th>>
                <th>Images</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
        	<?php 
            $result=mysqli_query($con,"SELECT * FROM `order_products` WHERE `order_id`=$order_id");
            foreach ($result  as $key => $value) {
                $product_id=$value['product_id'];
                $results=mysqli_query($con,"SELECT `product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords` FROM `products` WHERE `product_id`=$product_id");
                foreach ($results as $key => $value) {
                            echo "<tr>
            <td>#".$value['product_title']."</td>
            <td><img src='../product_images/".$value['product_image']."' width='100px'/></td>
            <td>".$value['product_desc']."</td></tr>";
                }

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