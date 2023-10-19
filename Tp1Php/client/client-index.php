<?php
require_once('../class/CRUD.php');
$crud = new CRUD;
$client = $crud->select('client', 'nom');

//print_r($client);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste de client</title>
    <link rel="stylesheet" href="../styles.css">
    <style>
        

    </style>
</head>
<body>
    <?php
        require_once('../class/header.php');
    ?>
    <h1>Clients</h1>
    <table>
        <tr>
            <th>Nom</th>
            <th>Adresse</th>
            <th>Phone</th>
            <th>Courriel</th>
            <th>Ville</th>
        </tr>

        <?php
        foreach($client as $row){
        ?>

            <tr>
                <td><a href="client-show.php?id=<?= $row['id']?>"><?= $row['nom']?></a></td>
                <td><?= $row['adresse']?></td>
                <td><?= $row['phone']?></td>
                <td><?= $row['courriel']?></td>
                <td><?= $row['ville']
        ?></td>
            </tr>
        <?php
        }
        ?>
    </table>
    <br><br>
    <a href="client-create.php">
    <button>Ajouter</button></a>


    
</body>
</html>