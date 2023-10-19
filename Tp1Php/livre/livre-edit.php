<?php
if(isset($_GET['id']) && $_GET['id']!=null ){
    $id= $_GET['id'];
    require_once('../class/CRUD.php');
    $crud = new CRUD;
    $client = $crud->selectId('livre', $id);
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
    <title>Creer un client</title>
    <link rel="stylesheet" href="../styles.css">
    <style>


    </style>
</head>
<body>
    <?php
        require_once('../class/header.php');
    ?>
    <h1>Client Edit (<?= $titre?>)</h1>

    <form action="livre-update.php" method="post">

        
        <input type="hidden" name="id" value="<?= $id; ?>">
        <label>Titre
            <input type="text" name="titre" value="<?= $titre; ?>">
        </label>
        <label>Auteur
            <input type="text" name="auteur"  value="<?= $auteur; ?>">
        </label>
        <label>Annee
            <input type="text" name="annee"  value="<?= $annee; ?>">
        </label>
        <button type="submit" value="save">SAVE</button>
    </form>
    
</body>
</html>