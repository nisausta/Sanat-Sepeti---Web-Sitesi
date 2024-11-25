<?php


include("baglanti.php");
$username_err="";
$parola_err="";

if (isset($_POST["giris"])) {
    $username = $_POST["kullaniciadi"];
    $parola = $_POST["parola"];
    if (empty($username)) {
        $username_err = "Kullanıcı adı boş geçilemez.";
    }
    if (empty($parola)) {
        $parola_err = "Parola boş geçilemez.";
    }else{

        $parola= ($_POST["parola"]);
    }
   
    if (!empty($username_err)  || !empty($parola_err) ) {
        echo '<div class="alert alert-danger" role="alert">
            Lütfen tüm alanları doldurun!
        </div>';  
    } 


    $secim = "SELECT * FROM kullanicilar WHERE kullanici_adi = '$username'";
    $calistir=mysqli_query($baglanti,$secim);
    $kayitsayisi = mysqli_num_rows($calistir);

    if($kayitsayisi>0){
        $ilgilikayit = mysqli_fetch_assoc($calistir);
        $hashlisifre = $ilgilikayit["parola"];
        if(password_verify($parola,$hashlisifre)){

            session_start();
            $_SESSION["kullanici_adi"] = $ilgilikayit["kullanici_adi"];
            $_SESSION["email"] = $ilgilikayit["email"];
            header("location:profile.php");

        }
        
    }

   else{

    echo '<div class="alert alert-danger" role="alert">
                    Kullanıcı adı yanlış!
            </div>'; 
   } 


    mysqli_close($baglanti);
}
?>

<!doctype html>
<html lang="en">
    
  <head><style>

        
.footer {
    background-color: black;
    color: white;
    text-align: center;
    padding: 20px;
    position: fixed;
    width: 100%;
    bottom: 0;
}

.contact-info {
  display: flex;
  justify-content: space-around;
}

.person {
  margin: 10px;
  text-align: center;
}

    </style>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <meta name="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Sanat Sepeti</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Montserrat:wght@400;700&display=swap"
        rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="style.css?v=<?php echo time(); ?>">

    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
        integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc"
        crossorigin="anonymous"></script>
    <title> ÜYE GİRİŞ İŞLEMİ</title>
  </head>
  <body>
  <header>
        <div class="container">
            <div class="photo-container">
                <img src="img/art1.png.png" alt="Resim 1">
            </div>
            <div class="photo-container">
                <img src="img/art2.png.png" alt="Resim 2">
            </div>
            <div class="photo-container">
                <img src="img/art3.png.png" alt="Resim 3">
            </div>
        </div>
    </header>
    <nav>
        <div class="navbar-container">
            <div class="logo-container">
                <a href="index.php" class="logo">SANAT SEPETİ</a>
            </div>
            <div class="button-container">
                <a href="müzik.php"><button class="button">MÜZİK</button></a>
                <a href="resim.php"><button class="button">RESİM</button></a>
                <a href="shop.php"><button class="button">SHOP</button></a>

            </div>
        </div>
    </nav>

<body>
<div class="center-content">

    <div class="container p-5">
    <div class="card p-5 col-md-8">
        <form action="uyegiris.php" method="POST">
            
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Kullanıcı Adı</label>
                <input type="text" class="form-control 
            
                <?php
                if(!empty($username_err)){
                    echo "is-invalid";
                }
                ?>"
                
                id="exampleInputEmail1" name="kullaniciadi">
                <div id="validationServer03Feedback" class="invalid-feedback">
                
                
                <?php
                echo $username_err;
                ?>

            </div>
            </div>
           
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Parola</label>
                <input type="password" class="form-control
                <?php
                if(!empty($parola_err)){
                    echo "is-invalid";
                }
                ?>"
                id="exampleInputPassword1" name="parola">
                <div id="validationServer03Feedback" class="invalid-feedback">
                <?php
                echo $parola_err;
                ?>
            </div>
            </div>
            <button type="submit" name="giris" class="btn btn-primary" style="background-color:black; border-radius: 5px; border:black; color:white; margin-top:15px; padding:8px; font-size:15px; ">Giriş Yap</button>
        </form>
    </div>
    </div>
</div>


<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
<div class="footer">
    <h2>Bize Ulaşın</h2>
    <br>
    <div class="contact-info">
        <div class="person">
            <p>Şimal Bülbül</p>
            <p>simal@sanatsepeti.com</p>
            <p>05555555555</p>
        </div>
        <div class="person">
            <p>Rıdvan Beyiş</p>
            <p>ridvan@sanatsepeti.com</p>
            <p>05555555555</p>
        </div>
        <div class="person">
            <p>Nisa Usta</p>
            <p>nisa@sanatsepeti.com</p>
            <p>05555555555</p>
        </div>
    </div>
</div>

</html> 