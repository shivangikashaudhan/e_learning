<?php 
    include 'conixion.php';
    $id = $_GET['id'];

    if(isset($id)){
        $stmt = $con ->prepare("DELETE FROM finee WHERE id=$id");
        $stmt -> execute();

    }
    header('location:students_list.php');
