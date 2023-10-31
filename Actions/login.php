<?php 
session_start(); 
include('connect.php');

$username = $_POST['username'];
$mobile = $_POST['mobile'];
$password = $_POST['password'];
$std = $_POST['std'];

$sql = "select * from `userdate` where username = '$username' and mobile='$mobile' and password='$password' and standard='$std'"; 
 
$result = mysqli_query($con, $sql);

if (mysqli_num_rows($result) > 0) {
    $sql = "select username, photo, votes, id from `userdate` where standard='group' ";

    $resultgroup=mysqli_query($con, $sql);
    if (mysqli_num_rows($resultgroup) > 0) {
        $group=mysqli_fetch_all($resultgroup, MYSQLI_ASSOC);
        $_SESSION['groups'] = $group;

    }

    $data = mysqli_fetch_array($result);
    $_SESSION['id']=$data['id'];
    $_SESSION['status']=$data['status'];
    $_SESSION['data']=$data;

    echo "<script>
    window.location='../Partials/dashboard.php ';
    </script>";
 

}else{ 
    echo "<script>
    alert('Invalid credentials');
    window.location='../index.php';
    </script>";
}



?>