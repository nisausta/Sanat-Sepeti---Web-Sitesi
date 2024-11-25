<?php
/* Uncaught mysqli_sql_exception: Duplicate entry '' for key 'kullanici_adi' in hatası alma sebebi = kullanici adını unique olarak işaretledik. bi kere boş kaydettiği 
zaman ikinciye boş kaydedemeyeceği için ikincisinde hata veriyor!!! */


include("baglanti.php");

$username_err = ""; // kullanıcı hatasını tutacak değişken. hata oluştukça hata mesajı bu değişken içine atılır. Değişken = girilen özellikler. karakter sayısı vs
$email_err = "";
$parola_err = "";
$adres_err = "";


if (isset($_POST["kaydet"])) {
    $name = $_POST["kullaniciadi"];  // form elemanından veriyi aldık ve değişken içerisine attık. kulanıcı adı verisini attık ve $name isimli değişken içerisine attık
    $email = $_POST["email"];
    $parola = $_POST["parola"];
    $adres = $_POST ["adres"];

    if (empty($name)) //kullanıcı adı boşsa
    {
        $username_err = "Kullanıcı adı boş bırakılamaz."; 
    }

    if (empty($email)) {
        $email_err = "E-mail boş bırakılamaz.";
    }
    if (empty($adres)) {
        $adres_err= "Adres boş bırakılamaz.";
    }

    if (empty($parola)) {
        $parola_err = "Parola boş bırakılamaz.";
    } else {
        $password = password_hash($parola, PASSWORD_DEFAULT); //parola şifreleme
    }

    $check_username_query = "SELECT kullanici_adi FROM kullanicilar WHERE kullanici_adi = '$name'"; //veritabanında username satırlarını kontrol eder 
    $check_username_result = mysqli_query($baglanti, $check_username_query);
    
    if (mysqli_num_rows($check_username_result) > 0) { // eğer kullanıcı adı daha önce alınmışsa  ekrana bu yazıyı yazdırır
        $username_err = "Bu kullanıcı adı alınmış.";
    }

    if (empty($username_err) && empty($email_err) && empty($parola_err)&& empty($adres_err)) {
        $ekle = "INSERT INTO kullanicilar (kullanici_adi, email, parola,adres) VALUES ('$name', '$email', '$password','$adres')";
         //yukarıdaki ekleme sorgusu   
        /*kullaniciların yanındaki paranteze veri tabanındaki atamak istediğimiz değer. ikinci kısımda da ilk kısımdakilerin yerine hangi değerleri atamak istediğmizi yazıyotuz. 
        sıralama önemli.*/

        $calistirekle = mysqli_query($baglanti, $ekle);

        if ($calistirekle) {
            echo '<div class="alert alert-success" role="alert">
                    Kayıt Başarılı Şekilde Eklendi!
                </div>';
                header("Location: profile.php");
                exit();
        } else {
            echo '<div class="alert alert-danger" role="alert">
                Kayıt Eklenirken Problem Oluştu: ' . mysqli_error($baglanti) . '
            </div>';
        }
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Üye Kayıt İşlemi</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Montserrat:wght@400;700&display=swap"
        rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
        integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc"
        crossorigin="anonymous"></script>
</head>
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
                <a href="index.php" class="logo" style="color:white;">SANAT SEPETİ</a>
            </div>
            <div class="button-container">
                <a href="müzik.php"><button class="button">MÜZİK</button></a>
                <a href="resim.php"><button class="button">RESİM</button></a>
                <a href="shop.php"><button class="button">SHOP</button></a>
            </div>
        </div>
    </nav>
<body>

    <div class="container p-5">
        <div class="card p-5 col-md-8">

            <form action="kayitol.php" method="POST">

                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Kullanıcı Adı</label>
                    <input type="text" class="form-control <?php 
                if(!empty($username_err)){
                    echo "is-invalid";
                }
                ?>"
                
                id="exampleInputEmail1" name="kullaniciadi">
                    <div class="invalid-feedback">
                        <?php
                        echo $username_err;
                        ?>
                </div>

                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">E-mail</label>
                    <input type="email" class="form-control <?php
                if(!empty($email_err)){
                    echo "is-invalid";
                }
                ?>" 
                
                id="exampleInputEmail1" name="email">
                    <div class="invalid-feedback">
                    <?php
                        echo $email_err;
                        ?>
                        </div>

                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label">Parola</label>
                    <input type="password" class="form-control <?php
                if(!empty($parola_err)){
                    echo "is-invalid";
                }
                ?>" 
                
                id="exampleInputPassword1" name="parola">
                    <div class="invalid-feedback">
                    <?php
                        echo $parola_err;
                        ?>
                        </div>
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label">Adres</label>
                    <input type="text" class="form-control <?php 
                if(!empty($adres)){
                    echo "is-invalid";
                }
                ?>"
                
                id="exampleInputEmail1" name="adres">
                    <div class="invalid-feedback">
                        <?php
                        echo $adres_err;
                        ?>
                </div>

                <button type="submit" name="kaydet" class="kayıtol" style="background-color:black; border-radius: 5px; border:black; color:white; margin-top:15px; padding:8px;">Kayıt Ol</button>
            </form>

        </div>
    </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
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