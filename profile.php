<?php 
session_start(); // oOturumu başlattı

include("baglanti.php"); // bağlantı

if (isset($_SESSION["kullanici_adi"])) {
    // eğer oturum açıksa

    // vtden ürünleri çek
    $query = "SELECT id, name, price, img, description FROM urunler"; // 
    $result = $baglanti->query($query);

    // ürünleri diziye ekle
    $products = [];
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $products[] = $row;
        }
    }

    // sepete ekleme
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['add_to_cart'])) {
        $product_id = $_POST['product_id'];
        if (array_key_exists($product_id, $products)) {
            if (!isset($_SESSION['cart'][$product_id])) {
                $_SESSION['cart'][$product_id] = 0;
            }
            $_SESSION['cart'][$product_id]++;
        }
    }
}
else {
    echo "Bu sayfayı görüntüleme yetkiniz yoktur.";
}

$baglanti->close();
?>



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
    
    
    <br><br>
    <ul>
    <?php foreach ($products as $product): ?>

            <li>
                <img src="<?php echo $product['img']; ?>" alt="<?php echo $product['name']; ?>">
                <div>
                    <?php echo $product['name'] . ' - ' . $product['price'] . ' TL'; ?>

                    <form method="post" action="">
                        <input type="hidden" name="product_id" value="<?php echo $product['id']; ?>">
                        <input type="submit" name="add_to_cart" value="Sepete Ekle" class="custom-button">
                    </form>
                </div>
            </li>
        <?php endforeach; ?>
    </ul>
    <br><br>
    <div class="butonsatiri" style="text-align: center;">
    <div class="sepetiG" style="display: inline-block; background-color:black; padding: 10px; margin: 10px; border-radius: 5px;">
        <a href="asılsepet.php" style="color: white; text-decoration: none;">SEPETİ GÖRÜNTÜLE</a>
    </div>
    <div class="cikisyap" style="display: inline-block; background-color: #e74c3c; padding: 10px; margin: 10px; border-radius: 5px;">
        <a href='cikis.php' style="color: white; text-decoration: none;">ÇIKIŞ YAP</a>
    </div>
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




