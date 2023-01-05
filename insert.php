<?php
include('db_connect.php');

if(isset ($_POST['submitbtn']))
{
	$b = $_POST['firstname'];
	$c = $_POST['lastname'];
	$n = $_POST['email'];
	$f = $_POST['password'];
	$password = mysqli_real_escape_string($conn, $f);
    $d = md5($password);
	
	$query = "insert into users (firstname,lastname,email,password) values ('$b','$c','$n','$d')";
	
	
	$run = mysqli_query($conn,$query);
	
		if($run)
	{
		header("location: login.php");
		
	}
	else
	{
		echo "Error!!";
	}
	}
?>
