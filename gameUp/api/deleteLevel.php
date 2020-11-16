<?php
$idLevel = $_POST['idlevel'];

$sql = "DELETE FROM levels WHERE levels.level_id = $idLevel";
$conn = mysqli_connect('localhost', 'root', '', 'game_up');

if (mysqli_query($conn, $sql)) {
    echo 1;
}
else{
    echo 0;
}