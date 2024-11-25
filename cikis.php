<?php 
session_start();
$_SESSION=array();//boşaltmak her veriyi boş veri atmak
session_destroy();
header("location: index.php");//çıkış yapıp bu sayfaya at


?>