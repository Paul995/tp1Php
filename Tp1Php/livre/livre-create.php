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
    <form action="livre-store.php" method="post">
        <label>Titre
            <input type="text" name="titre">
        </label>
        <label>Auteur
            <input type="text" name="auteur">
        </label>
        <label>Annee
            <input type="text" name="annee">
        </label>
        <button type="submit" value="save">SAVE</button>
    </form>
    <br><br> <a href="livre-index.php"><button>ACCEUIL-livres</button></a>
</body>
</html>