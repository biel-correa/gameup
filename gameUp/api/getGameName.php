<?php
$sql = "select game_id, game_name from games";
$conn = mysqli_connect('localhost', 'root', '', 'game_up');
$res = mysqli_query($conn, $sql);

$games = array();
while($row = mysqli_fetch_assoc($res)) {
    $games[] = [$row['game_id'], $row['game_name']];
}
echo json_encode($games);
?>