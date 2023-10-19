<?php
require_once('../class/CRUD.php');
$crud = new CRUD;



?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Creer un client</title>
    <link rel="stylesheet" href="../styles.css">
    <style>
        
     
    
    </style>
</head>
<body>
    <?php
        require_once('../class/header.php');
    ?>
    <form action="client-store.php" method="post">
        <label>Nom
            <input type="text" name="nom">
        </label>
        <label>Adresse
            <input type="text" name="adresse">
        </label>
        <label>Ville
            <input type="text" name="ville">
        </label>
        <label>Phone
            <input type="text" name="phone">
        </label>
        <label>Code Postal
            <input type="text" name="code_postal">
        </label>
        <label>Courriel
            <input type="email" name="courriel">
        </label>
        <button type="submit" value="save">SAVE</button>
    </form>
    <br><br> <a href="client-index.php"><button>ACCEUIL</button></a>
</body>
</html>