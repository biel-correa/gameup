<?php
$name = $_POST['nome'];
$senha = md5($_POST['senha']);

$sql = "select user_id, user_name, user_password from users where user_name = '$name'";
$conn = mysqli_connect('localhost', 'root', '', 'game_up');
$res = mysqli_query($conn, $sql);
$row = mysqli_fetch_assoc($res);

if (!$res) {
    echo '0';
}else{
    if ($row['user_password'] == $senha) {
        echo $row['user_id'];
    }else{
        echo '2';
    }
}