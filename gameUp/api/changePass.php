<?php
$email = $_GET["email"];

$sql = "select email from users where email = '$email'";
$conn = mysqli_connect('localhost', 'root', '', 'game_up');
$res = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($res);

echo $row;

?>