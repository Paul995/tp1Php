<?php

// ini_set('display_errors', 1);

// ini_set('display_startup_errors', 1);

// error_reporting(E_ALL);


require_once('../class/CRUD.php');
$crud = new CRUD;
$livre = $crud->select('livre', 'titre');


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des livres</title>
    <link rel="stylesheet" href="../styles.css">
    <style>
        

    </style>
</head>
<body>
    <?php
        require_once('../class/header.php');
    ?>
    <h1>Livres</h1>
    <table>
        <tr>
            <th>Titre</th>
            <th>Auteur</th>
            <th>Annee</th>
        </tr>

        <?php
            foreach($livre as $row){
        ?>
            <tr>
                <td><a href="livre-show.php?id=<?= $row['id']?>"><?= $row['titre']?></a></td>
                <td><?= $row['auteur']?></td>
                <td><?= $row['annee']?></td>
                
        </td>
            </tr>
        <?php
        }
        ?>
    </table>
    <br><br>
    <a href="livre-create.php">
    <button>Ajouter</button></a>


    
</body>
</html>