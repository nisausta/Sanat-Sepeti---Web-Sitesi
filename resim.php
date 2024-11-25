<!DOCTYPE html>
<html lang="en">
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
    <title>Sanat Sepeti</title>
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
    <div class="resim">
        <?php
    include("baglanti.php");

// resimleri vtden çektirmek için olan sorgu
$secim = "SELECT * FROM resimlerresim";
$calistir = mysqli_query($baglanti, $secim);

if ($calistir) {
    // sorgu başarılıysa
    if (mysqli_num_rows($calistir) > 0) {
        // burası resimleri gösteriyor hangi satırda varsa ordan çektiriyor
        while ($row = mysqli_fetch_assoc($calistir)) {
            ?>
    <div style="border: 4px solid #ddd; padding: 10px; margin: 10px; text-align: center; display: flex; flex-direction: column; align-items: center;">
    <img src='<?php echo $row["resim_url"]; ?>' alt='' style="max-width: 500px; height: auto;">
    <h3 style="color: #333; font-size: 18px; margin-bottom: 5px;"><?php echo $row["baslik"]; ?></h3>
    <p style="margin-top: 5px;"><?php echo $row["aciklama"]; ?></p><br>
</div>

            <?php
        }
    } else {
        // resimi çekemezse
        echo "Veri bulunamadı.";
    }

} else {
    // sorguda hata varsa
    echo "Sorguda hata: " . mysqli_error($baglanti);
}

// bağlantıyı kapatıoyr
mysqli_close($baglanti);
?>

    </div>
    <br><br><br><br>
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