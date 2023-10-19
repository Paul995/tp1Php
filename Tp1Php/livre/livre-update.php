<?php
require_once('../class/CRUD.php');

$crud = new CRUD;
$update = $crud->update('livre', $_POST);
header('Location:livre-index.php');
?>