<?php
require_once('../class/CRUD.php');

$crud = new CRUD;
$delete = $crud->delete('livre', $_POST['id']);
header('location:livre-index.php');
?>