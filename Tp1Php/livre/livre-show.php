<?php

if(isset($_GET['id']) && $_GET['id']!=null ){
    $id= $_GET['id'];
    require_once('../class/CRUD.php');
    $crud = new CRUD;
    $client = $crud->selectId('livre', $id);

    // foreach($client as $key=>$value){
    //     $$key=$value;
    // }

     extract($client);
     


}else{
    header('location:livre-index.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>client</title>
    <link rel="stylesheet" href="../styles.css">
    <style>
        form{
            background-color: aliceblue;
            border: none;
        }
        .card{
            background-color: white;
            margin:auto;
            border: 1px solid black;
            width :fit-content;
            padding: 20px;
        }
        .card form{
            border: none;
            background-color: white;
        }
    </style>
</head>
<body>
    <?php
        require_once('../class/header.php');
    ?>
    <div class="card">
         <h1>Livre</h1>
    <p><strong>Titre: </strong><?= $titre; ?></p>
    <p><strong>Auteur: </strong><?= $auteur; ?></p>
    <p><strong>Annee: </strong><?= $annee; ?></p>

    <a href="livre-edit.php?id=<?= $id; ?>"><button>EDIT</button></a>
    <form action="livre-delete.php" method="post">
        <input type="hidden" name="id" value="<?= $id; ?>">
        <br>
        <button type="submit">DELETE</button>
        
    </form>
</div>
   
   <br><br> <a href="livre-index.php"><button>ACCEUIL</button>
</body></a>
</html>