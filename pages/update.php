<?php
session_start();
if (!isset($_SESSION['id'])) {
    // Handle the case when 'id' is not set in the session (e.g., redirect to an error page)
    exit("Session 'id' not set.");
}

$id = $_SESSION['id'];
include 'conixion.php';

if (isset($_POST['submit'])) {
    $image = $_FILES['image'];
    $filename = $image['name'];
    $filepath = $image['tmp_name'];
    $fileerror = $image['error'];
    
    if ($fileerror == 0) {
        $desfile = 'download/' . $filename;
        move_uploaded_file($filepath, $desfile);
    }
    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $mobile = $_POST['mobile'];
    $link = $_POST['link'];
    
    // Use prepared statements to prevent SQL injection
    $requete = $con->prepare("UPDATE finee
        SET 
        image = :image,
        name = :name,
        Email = :email,
        mobile = :mobile,
        link = :link
        WHERE id = :id");
        
    $requete->bindParam(':image', $desfile); // Bind the image file path
    $requete->bindParam(':name', $name);
    $requete->bindParam(':email', $email);
    $requete->bindParam(':mobile', $mobile);
    $requete->bindParam(':link', $link);
    $requete->bindParam(':id', $id);
    
    $res = $requete->execute();
    header("location: students_list.php");
}
?>
