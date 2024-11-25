<!DOCTYPE html>
<html>

<head><style>

        
.footer {
    background-color: black;
  color: white;
  text-align: center;
  padding: 20px;
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
    <meta charset="utf-8">
    <meta name="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sanat Sepeti</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lato:wght@400;700&family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
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
    <?php
    include("baglanti.php");
    session_start();

    // kullanıcı adını alma
    $username = isset($_SESSION['kullanici_adi']) ? $_SESSION['kullanici_adi'] : null;

    if ($username) {
        // kullanıcı adına göre adresi sorgulama
        $query = "SELECT adres FROM kullanicilar WHERE kullanici_adi = '$username'";
        $result = mysqli_query($baglanti, $query);

        if ($result) {
            // eğer sprgumuz başarılıysa
            if (mysqli_num_rows($result) > 0) {
                // veriyi çekme
                $row = mysqli_fetch_assoc($result);
                $adres = $row['adres'];

                // ekrana yazdırma bölümü
                echo"<br><br><br>";
                echo '<div style="border: 1px solid #ccc; padding: 10px; margin: 10px; background-color: #f8f8f8; font-family: \'Arial\', sans-serif; text-align:center;">';
                echo "<br> Kullanıcının Adresi: " . $adres;
            } else {
                echo "Kullanıcı bulunamadı veya adres bilgisi yok.";
            }
        } else {
            echo "Sorguda hata: " . mysqli_error($baglanti);
        }
    } else {
        echo "Oturum açık değil veya kullanıcı adı belirtilmemiş.";
    }

    // bağlantıyı kapatma için
    mysqli_close($baglanti);
    ?>


<?php
include("baglanti.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['confirm_order'])) {
        $user_id = isset($_SESSION['kullanici_id']) ? $_SESSION['kullanici_id'] : null;

        $product_id = 1; 
        $quantity = 2;   
        $total_price = calculateTotalPrice($product_id, $quantity); 

        // Siparişi veritabanına ekleyin
        $insert_query = "INSERT INTO siparisler (siperisID, miktar, kullaniciID, toplamTutar) VALUES ('$product_id', '$quantity', '$user_id', '$total_price')";

        if (mysqli_query($baglanti, $insert_query)) {
            echo    " <br><br>" ;
            echo "Sipariş başarıyla kaydedildi.";
        } else {
            echo "Sipariş kaydedilemedi: " . mysqli_error($baglanti);
        }
    }
}

function calculateTotalPrice($product_id, $quantity) {

    $product_price = 10;
    $total_price = $product_price * $quantity;

    return $total_price;
}
?>

<form method="post" action="">

<div class="siparisOnayS">
    <br><br>
    <h3 style="text-align: center"><b>Siparişi Onaylamak İçin Tıklayınız.</b></h3>
    <h3 style="text-align: center">
        <b>
            <a href="siparisOnayS.php" style="text-decoration: none;">
                <button type="button" style="background-color: black; border-radius: 5px; border: black; color: white; margin-top: 15px; padding: 15px; cursor: pointer;">
                    Onayla
                </button>
            </a>
        </b>
    </h3>
</div>


</form>

    </div>

    <div class="adresDegisikligi">


        <br><br>
        <h3 style="text-align: center; border: 1px solid #ccc; padding: 10px; margin: 10px; background-color: #f8f8f8; font-family: 'Arial', sans-serif;">
    <b><a href="adresDegisikligi.php" style="text-decoration: none; color: #333;">Adres güncelleme işlemi</a></b>
</h3>

    </div>
<br><br><br><br><br><br>


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