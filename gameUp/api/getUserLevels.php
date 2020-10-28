<?php
$userId = $_POST['userId'];

$sql = "SELECT levels.level_name, levels.level_variation, games.game_name FROM levels INNER JOIN games ON levels.game_id = games.game_id WHERE levels.user_id = $userId;";
$conn = mysqli_connect('localhost', 'root', '', 'game_up');
$res = mysqli_query($conn, $sql);

$levels = array();
while($row = mysqli_fetch_assoc($res)) {
    $levels[] = [$row['level_variation'], $row['game_name'], $row['level_name']];
}
echo json_encode($levels);
?>