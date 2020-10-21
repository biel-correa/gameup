<?php
$id = $_POST['id'];

$sql = "select user_name, user_creation_date from users where user_id = '$id'";
$conn = mysqli_connect('localhost', 'root', '', 'game_up');
$res = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($res);

$info = array('userName'=>$row[0], 'userCreationDate'=>$row[1]);

echo json_encode($info);