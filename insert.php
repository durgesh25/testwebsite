<?php
include 'config.php';
if(isset($_POST))
{
$name=$_POST['name'];
$oc=$_POST['occupation'];
$age=$_POST['age'];
$phone=$_POST['phone'];


$sql = "INSERT INTO userdeatil (name, occupation, age,phone)
VALUES ('$name', '$oc', '$age','$phone')";

if ($con->query($sql) === TRUE) {
    echo "Add record  successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
}


?>