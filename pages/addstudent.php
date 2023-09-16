<?php 
    include 'conixion.php';
    if(isset($_POST['submit'])){
        
        $image = $_FILES['img']['name'];
        $tempname = $_FILES['img']['tmp_name'];  
        $folder = "../assets/img/".$image;
        
        if(move_uploaded_file($tempname,$folder)){
            echo 'images est uplade';
        }

        $Name = $_POST['Name'];
        $Email = $_POST['Email'];
        $Mobile = $_POST['Mobile'];
        $link = $_POST['link'];
        $DateOfRegister = $_POST['Date Of Register'];
        $encrypt=password_hash($password, PASSWORD_DEFAULT);

        $requete = $con->prepare("INSERT INTO students_list(img,Name,Email,Mobile,link,DateOfRegister,password) VALUES('$image','$Name','$Email','$Mobile','$link','$DateOfRegister','$encrypt')");
        //$requete->execute(array($image,$Name,$Email,$Phone,$EnrollNumber,$DateOfAdmission));
        $requete->execute();
    }
    header('location:students_list.php')
    ?>