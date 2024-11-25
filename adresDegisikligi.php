<!DOCTYPE html>
<html>

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
    <meta charset="utf-8">
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

    <?php
include("baglanti.php");
session_start();

$username = isset($_SESSION['kullanici_adi']) ? $_SESSION['kullanici_adi'] : null;

if ($username) {
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['new_address'])) {
        $newAddress = $_POST['new_address'];
        $updateQuery = "UPDATE kullanicilar SET adres = '$newAddress' WHERE kullanici_adi = '$username'";
        $updateResult = mysqli_query($baglanti, $updateQuery);

        if ($updateResult) {
            echo "<br><br>";

            echo "Adres başarıyla güncellendi.";
            echo "<br><br>";
        } else {
            echo "Adres güncelleme hatası: " . mysqli_error($baglanti);
        }
    }

    echo "<a href='asılsepet.php '>Geri Dön</a>";
} else {
    echo "Oturum açık değil veya kullanıcı adı belirtilmemiş.";
}

mysqli_close($baglanti);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adres Değiştir</title>
</head>
<body style="background-color: #fff; color: #000; text-align: center; margin: 0; padding: 0; font-family: Arial, sans-serif;">
<div style="margin:50px;">

    <h2>Adres Değiştir</h2>
    <form method="post" action="" style="display: inline-block; margin-top: 20px;">
        <label for="new_address" style="display: block; margin-bottom: 10px;">Yeni Adres:</label>
        <input type="text" id="new_address" name="new_address" required style="padding: 8px; width: 200px;">
        <button type="submit" style="padding: 10px; background-color: #000; color: #fff; border: none; cursor: pointer;">Değiştir</button>
    </form>
</div>
</body>
</html>


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