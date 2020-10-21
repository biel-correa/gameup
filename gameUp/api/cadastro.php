<?php
$name = $_POST['nome'];
$senha = md5($_POST['senha']);
$conf = md5($_POST['confsenha']);
$date = date("Y/m/d");

$sql = "insert into users (user_name,user_password,user_creation_date) values('$name','$senha','$date')"; 
$conn = mysqli_connect('localhost', 'root', '', 'game_up');
$sql1 = "select user_name from users where user_name ='$name'"; 



if ($senha!=$conf) {

    echo '2';
}else {
    $res= mysqli_query($conn,$sql1);
    $row=mysqli_fetch_array($res); 
    echo $row[0];
    if ($conn && $row=='') {     //row pega pelo conselog e compara por la, se retoarnar valor nulo, significa que nao existe uma conta com o mesmo nome
        $res = mysqli_query($conn, $sql);
        echo '1';  
      
    }
    
}

 


?>