<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/style.css">
</head>
<body>
  <?php
    session_start();
    include 'conixion.php';
    $_SESSION["id"]= $_GET['id'];
    $id = $_SESSION["id"];
    $statement = $con -> prepare("SELECT * FROM finee WHERE id = $id");
    $statement->execute();
    $table = $statement -> fetch();

  ?>
<div class="container w-50">


<form method="POST" action="update.php" enctype="multipart/form-data">
                                  <div class="">
                                    <label for="recipient-name" class="col-form-label">img:</label>
                                    <input type="file" class="form-control" id="recipient-name" accept=".jpg,.png,.jpeg" name="image">
                                  </div>
                                  <div class="">
                                    <label for="recipient-name" class="col-form-label">Name:</label>
                                    <input type="text" class="form-control" id="recipient-name" name="name" value="<?php echo $table['name']?>">
                                  </div>
                                  <div class="">
                                    <label for="recipient-name" class="col-form-label">Email:</label>
                                    <input type="text" class="form-control" id="recipient-name" name="email" value="<?php echo $table['email']?>">
                                  </div>
                                  <div class="">
                                    <label for="recipient-name" class="col-form-label">mobile:</label>
                                    <input type="text" class="form-control" id="recipient-name" name="mobile" value="<?php echo $table['mobile']?>">
                                  </div>
                                  <div class="">
                                    <label for="recipient-name" class="col-form-label">link:</label>
                                    <input type="text" class="form-control" id="recipient-name" name="link" value="<?php echo $table['link']?>">
                                  </div>
                                  <div class="modal-footer">
                                <button type="submit" name="submit" class="btn btn-primary">Update student</button>
                              </div>
                                </form>
</div>
    <script src="../js/script.js"></script>
    <script src="../js/bootstrap.bundle.js"></script>
</body>
</html>