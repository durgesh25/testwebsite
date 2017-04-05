<?php
include 'config.php';
session_start();
if(isset($_POST))
{
$name=$_POST['na'];
$pwd=$_POST['pwd'];
$qur="SELECT * from users WHERE username='$name' && password='$pwd' && status=1";

//$res=mysqli_query($con,$qur);

//$res1=mysqli_fetch_array($con,$res);
//echo $res1['uname'];
$result = $con->query($qur);

if ($result->num_rows > 0) {
    echo "success";
    $_SESSION['admin']=$name;
} else {
    echo "username password does not match";
}
}


?>