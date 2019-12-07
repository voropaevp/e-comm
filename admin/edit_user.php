<?php

include("../db.php");
$user_id=$_REQUEST['user_id'];

$result=mysqli_query($con,"select `user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2` from user_info where user_id='$user_id'")or die ("query 1 incorrect.......");

list($user_id, $first_name, $last_name, $email, $password, $mobile, $address1, $address2)=mysqli_fetch_array($result);

if(isset($_POST['btn_save'])) 
{
    foreach ($_POST as $key => $value) {
        $$key=$value;
    }
    // echo "update user_info set first_name='$first_name', last_name='$last_name',email='$email', password='$password',
    // mobile='$mobile', address1='$address1', address2='$address2' where user_id='$user_id'";
    // exit();

mysqli_query($con, "update user_info set first_name='$first_name', last_name='$last_name',email='$email', password='$password',
    mobile='$mobile', address1='$address1', address2='$address2' where user_id='$user_id'")or die("Query 2 is inncorrect..........");

header("location: manage_users.php");
mysqli_close($con);
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
</head>
<body>
<?php include("include/header.php"); ?>
   	<div class="container-fluid main-container">
	<?php include("include/side_bar.php");?>
    
	<div class="col-md-9 content" align="center">  
<div class="panel-heading" style="background-color:#c4e17f">
	<h1>Edit User Details </h1></div><br>
<form action="edit_user.php" name="form" method="post" enctype="multipart/form-data">
<input type="hidden" name="user_id" id="user_id" value="<?php echo $user_id;?>" />
<div class="col-sm-6">
    <input name="first_name" class="input-lg" type="text"  id="first_name" style="font-size:18px; width:330px" value ="<?php echo $first_name; ?>" autofocus required><br><br>
</div>
<div class="col-sm-6">
<input name="last_name" class="input-lg" type="text"  id="last_name" style="font-size:18px; width:330px" value="<?php echo $last_name; ?>" autofocus required><br><br>
    </div>
    <div class="col-sm-6">
    <input name="email" class="input-lg" type="text"  id="email" style="font-size:18px; width:330px" value="<?php echo $email; ?>" autofocus required><br><br>
    </div>
    <div class="col-sm-6">
<input name="password" class="input-lg" type="text"  id="password" style="font-size:18px; width:330px"  value="<?php echo $password; ?>" required><br><br>
    </div>
     <div class="col-sm-6">
    <input name="mobile" class="input-lg" type="phone"  id="mobile" style="font-size:18px; width:330px" value="<?php echo $mobile; ?>" autofocus required><br><br>
    </div>
     <div class="col-sm-6">
    <input name="address1" class="input-lg" type="text"  id="address1" style="font-size:18px; width:330px" value="<?php echo $address1; ?>" autofocus required><br><br>
    </div>
     <div class="col-sm-6">
    <input name="address2" class="input-lg" type="text"  id="address2" style="font-size:18px; width:330px" value="<?php echo $address2; ?>" autofocus required><br><br>
    </div>

    <div class="col-sm-6">
        <button type="submit" class="btn btn-success " name="btn_save" id="btn_save" style="font-size:18px">Submit</button></div>
</form>
</div></div>
<?php include("include/js.php");?>
</body>
</html>