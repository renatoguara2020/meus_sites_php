<?php
$servername = "localhost";
$username = "root";
$password = "456alves";
$dbname = "crud_pdo";

if(!empty($_POST['btn-enviar'])){

$lastname = filter_input(INPUT_POST,'lastname', FILTER_SANITIZE_SPECIAL_CHARS);
$firstname = filter_input(INPUT_POST,'firstname', FILTER_SANITIZE_SPECIAL_CHARS);
$email =  filter_input(INPUT_POST,'email', FILTER_SANITIZE_EMAIL);



try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  // prepare sql and bind parameters
  $stmt = $conn->prepare("INSERT INTO students (firstname, lastname, email)VALUES (:firstname, :lastname, :email)");
  $stmt->bindParam(':firstname', $firstname, PDO::PARAM_STR);
  $stmt->bindParam(':lastname', $lastname, PDO::PARAM_STR);
  $stmt->bindParam(':email', $email,PDO::PARAM_STR);

  
  $stmt->execute();

  echo "New records created successfully";

} catch(PDOException $e) {
    
  echo "Error: " . $e->getMessage();
}

//$stmt = $conn->prepare("DELETE FROM students WHERE id = 15");


$stmt->execute();




$stmt = null;
$conn = null;

}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <form action="" method="post">

        <label for="">Nome:</label>
        <input type="text" name="firstname"></input>
        <label for="">Lastname:</label>
        <input type="text" name="lastname"></input>
        <label for="">Email:</label>
        <input type="email" name="email"></input>
        <button type="submit" name="btn-cadastrar">Cadastrar</button>
    </form>
</body>

</html>