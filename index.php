<?php


if(($_POST['firstname'] != null) && ($_POST['lastname'] != null) && ($_POST['email'] != null)){
  $firstname = filter_input(INPUT_POST, 'firstname', FILTER_SANITIZE_SPECIAL_CHARS);
  $lastname = filter_input(INPUT_POST, 'lastname', FILTER_SANITIZE_SPECIAL_CHARS);
  $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
$servername = "localhost";
$username = "root";
$password = "456alves";
$dbname = "crud_pdo";

try {
  $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  $conn->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

  // sql to create table
//   $sql = "CREATE TABLE MyGuests (
//   id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
//   firstname VARCHAR(255) NOT NULL,
//   lastname VARCHAR(255) NOT NULL,
//   email VARCHAR(250),
//   reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
//   )";

$stmt = $conn->prepare("INSERT INTO employee (firstname, lastname, email)VALUES (:firstname,:lastname, :email)");
$stmt->bindValue(':firstname',$firstname);
$stmt->bindValue(':lastname',$lastname);
$stmt->bindValue(':email',$email);

  // use exec() because no results are returned

  $stmt->execute();
  echo "Employees created successfully";
} catch(PDOException $e) {
  echo $sql . "<br>" . $e->getMessage();
}
}

$conn = null;
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