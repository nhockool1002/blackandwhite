<?php
  if(isset($_SESSION['bawuser'])){
    unset($_SESSION['bawuser']);
    header( "Refresh:0; url=index.php");
  }
?>
