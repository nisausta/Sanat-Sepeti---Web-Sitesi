<?php
session_start();

include('asıl_db.php'); // Veritabanı bağlantı dosyası

// Kullanıcıyı belirle
$username = isset($_SESSION['username']) ? $_SESSION['username'] : null;
$user = null;

if ($username) {
    foreach ($users as $u) {
        if ($u['username'] === $username) {
            $user = $u;
            break;
        }
    }
}

if (!$user) {
    // Kullanıcı bulunamadı. Bu durumda sadece uyarı gösterelim.
    //echo "Uyarı: Lütfen giriş yapınız!";
} else {
    $user_id = $user['id'];

    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['checkout'])) {
        // Sepetteki ürünleri veritabanına ekle
        foreach ($_SESSION['cart'] as $product_id => $quantity) {
            $insertOrderQuery = "INSERT INTO orders (user_id, product_id, quantity) VALUES ('$user_id', '$product_id', '$quantity')";
            $conn->query($insertOrderQuery);
        }

        // Sepeti temizle
        $_SESSION['cart'] = [];

    
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>    <style>

        
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
p {
text-align: center;
font-weight: bold;
font-size: 18px;
}

    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sepet Sayfası</title>
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
    <br>
    <div class="sepetYazi">
    <h2>SEPET</h2>
    <br>

    </div>
    <?php if (empty($_SESSION['cart'])): ?>
    <div style="text-align: center; font-weight: bold; font-size:larger">
        Sepet boş.
    </div>

    <?php else: ?>
        <ul>
            <?php foreach ($_SESSION['cart'] as $product_id => $quantity): ?>
                <li>
                    <?php echo $products[$product_id - 1]['name'] . ' - ' . $products[$product_id - 1]['price'] . ' TL x ' . $quantity; ?>
                </li>
            <?php endforeach; ?>
        </ul>
        <?php if ($user): ?>
            <form method="post" action="">
                <input type="submit" name="checkout" value="Satın Al">
            </form>
        <?php endif; ?>
    <?php endif; ?>
    
    <br><br>

    <?php
if (!empty($_SESSION['cart']) && isset($products)) {
    $totalPrice = 0; // toplam tutarı saklıyor

    // Sepetteki her ürün için dön
    foreach ($_SESSION['cart'] as $product_id => $quantity) {
        // ürünün fiyatı toplam tutara ekleme
        $totalPrice += $products[$product_id - 1]['price'] * $quantity;
    }

    // sonucu ekrana yazdırma
    echo "<p>Toplam Fiyat: " . number_format($totalPrice, 2) . ' TL</p>';
} 
?>


<br><br>


<div class="devamEtContainer" style="background:black; color:white; display: flex; justify-content: center;  align-items: center;">
  <a href="profile.php"><button class="devamEt" style="background:black; color:white; font-size:15px; " >Alışverişe Devam Et</button></a>

</div>
   
<br>
<div class="odememetni">
    <p><b><a href ="odemeS.php"> Ödeme yapmak için ...</a> </b> </p>
    <br><br><br><br><br>
    </div>

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




