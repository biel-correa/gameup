<?php
$jogo = $_POST['jogo'];
$user = $_POST['userId'];
$level = $_POST['level'];
$levelVariation = $_POST['levelVariation'];

$sql = "INSERT INTO levels(user_id, game_id, level_name, level_variation) VALUE ('$user','$jogo','$level','$levelVariation');";
$conn = mysqli_connect('localhost', 'root', '', 'game_up');
if (mysqli_query($conn, $sql)) {
    echo 1;
}else{
    echo 0;
}