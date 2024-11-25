-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 29 Ara 2023, 03:29:26
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `projeuyelik`
--
CREATE DATABASE IF NOT EXISTS `projeuyelik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `projeuyelik`;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `etkinlikresim`
--

DROP TABLE IF EXISTS `etkinlikresim`;
CREATE TABLE `etkinlikresim` (
  `id` int(11) NOT NULL,
  `resim_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `etkinlikresim`
--

INSERT DELAYED IGNORE INTO `etkinlikresim` (`id`, `resim_url`) VALUES
(1, 'img/Sergi1.png'),
(2, 'img/Sergi2.png'),
(3, 'img/Sergi1.png');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE `kullanicilar` (
  `id` int(11) NOT NULL,
  `kullanici_adi` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `parola` varchar(150) NOT NULL,
  `kayit_tarihi` datetime NOT NULL DEFAULT current_timestamp(),
  `adres` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT DELAYED IGNORE INTO `kullanicilar` (`id`, `kullanici_adi`, `email`, `parola`, `kayit_tarihi`, `adres`) VALUES
(1, 'ayss', 'simallbulbul@gmail.com', '$2y$10$YHqUvZ1jZpdvd1dkX8PuDe3CCIsQvPPOmUrYejolX71Ik.xxTHJlG', '2023-12-07 03:58:02', NULL),
(2, 'simalbulbul', 'simal@gmail.com', '$2y$10$A7Nl2GH/fGp9MCzDpYL6BOTgR2PZhKzkBmlfk8rcqDv8JRj8HhXAm', '2023-12-07 06:45:21', NULL),
(3, 'nisaUsta', 'simal@gmail.com', '$2y$10$LeQda.IqUGqoPp4Ccl8CsudiwQ9.HMT6BVa7qNvDN4kmHsdrYEcte', '2023-12-07 06:53:35', NULL),
(4, 'sarıyer', 'simal@gmail.com', '$2y$10$hMD7/r2FZ80s3dx6n8VUg.Y/mxNuuSWfbJ5.qF6n9AWE4oVvV219C', '2023-12-15 18:24:54', NULL),
(5, 'ilkkere', 'simal@gmail.com', '$2y$10$GQrwHxV5QkjsF3sPTGe.J.PMCIacI///Tk5AgsWtAz0KEHDz1HFc2', '2023-12-15 18:25:51', NULL),
(6, 'aysenurB', 'simal@gmail.com', '$2y$10$EzFrnHUW2AHwcDZiJrUj9Oe6oz329oWwmKDeFfhAx0hP6tO7jr4be', '2023-12-15 18:26:53', NULL),
(7, 'nissim', 'simal@gmail.com', '$2y$10$QJUXVTms.zXGA1RNAGEwc.NT.wcfgOW6rMGYK5QzEpq90WHzcDY.O', '2023-12-15 18:30:01', 'asdsad'),
(8, 'dfdg  dfgsdfg', 'simallbulbul@gmail.com', '$2y$10$hE3LuqQLFS7bgkTtWKwKquHdzkPRUQrurvHNiErSGJtxetSFM7N9.', '2023-12-16 02:39:42', 'halkalı'),
(9, 'deneme12', 'deneme@gmail.com', '', '2023-12-18 02:22:51', 'sarıyer'),
(10, 'simsimal1234', 'simal@gmail.com', '', '2023-12-18 02:24:52', 'halkalı'),
(11, 'artıkoldu', 'simal@gmail.com', '$2y$10$v.tFowN1VLmI1qOOGdoyTuGqbzENs0XBhqWZsWUvCKG8qZ3hZjUkC', '2023-12-19 04:39:23', 'sefaköy'),
(12, 'simalbalcan', 'simallbulbul@gmail.com', '$2y$10$mZlpf0uqXSasH3M.44dNy.VbSO3ct2fARhybvDOQ1sufJwLgfcnHm', '2023-12-19 06:07:23', 'halkalı'),
(13, 'ayssim', 'simallbulbul@gmail.com', '$2y$10$HnQ0zFO/JpAw0s947BaoP..rxHR7g11fLcyyQYaK4yhZR8edp3FL2', '2023-12-19 06:14:24', 'sarıyer'),
(14, 'aysenursimal', 'simal@gmail.com', '$2y$10$zLQ9EiKNR5HCLj7pX3Vm/ug4X5kFMqFmHZM3wq70ecUbLPYPaZw6S', '2023-12-19 06:17:23', 'sarıyer'),
(15, 'ridvan', 'simal@gmail.com', '$2y$10$G8ZYpMMWgCpb/Rcdu/WOSuTzVq2MW7Nzp2YUuMCgVTs3uFkyzbYP2', '2023-12-19 18:43:54', 'sarıyer'),
(19, 'nisw', 'Ustanisa93@gmail.com', '$2y$10$DqNJq4jpIP7vdwxN7xfdAOAs/14SiZ0G3Tau2drRd08hGTEJci0Vq', '2023-12-24 17:01:35', 'sefaköy');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimlermuzik`
--

DROP TABLE IF EXISTS `resimlermuzik`;
CREATE TABLE `resimlermuzik` (
  `id` int(11) NOT NULL,
  `resim_url2` varchar(255) NOT NULL,
  `baslik2` varchar(255) NOT NULL,
  `aciklama2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `resimlermuzik`
--

INSERT DELAYED IGNORE INTO `resimlermuzik` (`id`, `resim_url2`, `baslik2`, `aciklama2`) VALUES
(1, 'img/1.1.jpg', 'The Dark Side Of The Moon', 'Dark Side of the Moon, modern yaşamın normal insanlar üzerindeki etkilerini anlatmaktadır. Örneğin, bir\n                uçağın yere çakılma sesiyle başlayan \"On the Run\" uçuş korkusunu işlemektedir. \"Time\", zamanın biz\n                farkına varmadan ne kadar da hızlı geçtiğini anlatmaktadır. \"The Great Gig In The Sky\", ölümün doğası\n                hakkındadır. \"Money\", zenginliğin insana etkilerini ironik bir şekilde anlatmaktadır. \"Any Colour You\n                Like\" diğer şarkılar kadar açık bir mesaj bulundurmasa da insandaki karar verme ve seçim korkusunu\n                anlatır. \"Brain Damage\", toplumun yanlışlarının belki de sadece \"deliler\" tarafından fark\n                edilebileceğini söyler. Bu şarkıda grubun eski üyesi Syd Barrett ile ilgili temalar da bulunmaktadır.\n                Aynı zamanda albümün içinde \"dark side of the moon\" sözü geçen tek şarkısıdır. Son olarak \"Eclipse\",\n                insan hayatındaki her şeyin aslında uyum içinde olması gerekirken bu uyumun asla yakalanamamasını\n                anlatmaktadır. Albüm, \"There is no dark side of the moon, really. Matter of fact it\'s all dark.\"\n                sözleriyle biter.'),
(2, 'img/1.2.png', 'Placebo', 'Müzikle biraz ilgilenen herkesin hayatının bir döneminden Placebo geçmiştir.  En azından 1-2 tane şarkıları ezbere bilinir, sevilir. Ancak çevremde gördüğüm üzücü bir gerçek var ki, bu şahane grup genellikle küçük görülüyor, hakları yeniyor. Bu çirkin durumu gidermek için elimizden geleni yapalım, 1994’den beri çıkarttıkları tüm albümlerde kendilerini geliştiren bu grubu yakından inceleyelim.\n\nPlacebo, bir dolu büyük grup gibi Londra’da, aslında saat kulesi ile değil, müzisyenlere verdiği ilhamla ünlü olan şehirde, 1994 yılında Brian Molko ve Stefan Olsdal tarafından kuruldu. Eskiden okullarında panpa olan bu ikili, okulu bitirirken mezuniyet kutlaması sırasında şişelerce içip, duygusallaşıp; “abi ilerde de kesin görüşelim, koparmayalım hiç bağları” demişler, ancak herkes gibi bunu başaramamışlardır. Yıllar sonra metroda karşılaşan ikili, bizlerin aksine zorlama bir muhabbet çevirip kendi yollarına gitmek yerine, müzik grubu kurup tüm dünyaya adlarını duyurmaya karar vermişler. İyi de yapmışlar.'),
(3, 'img/1.3.jpg', 'Houses of the Holy', 'Houses of the Holy, İngiliz rock grubu Led Zeppelin\'in beşinci stüdyo albümü. 28 Mart 1973\'te Atlantic Records tarafından yayınlandı. Albüm, iki grup üyesinin evde stüdyolar kurmasından yararlandı, bu da onların daha sofistike şarkılar ve düzenlemeler geliştirmelerine ve müzikal tarzlarını genişletmelerine izin verdi.\n\nBaşlık parçası da dahil olmak üzere oturumlarda kaydedilen diğer materyaller rafa kaldırıldı ve daha sonraki albümler Physical Graffiti ve Coda\'da yayınlandı. Tüm enstrümanlar ve vokaller grup üyeleri Robert Plant (vokal), Jimmy Page (gitar), John Paul Jones (bas, klavye) ve John Bonham (bateri) tarafından sağlandı. Albümün yapımcılığını Page, miksajını ise Eddie Kramer yaptı.\n\nKapak, grubun Hipgnosis tarafından tasarlanan ilk kapağıydı ve Kuzey İrlanda\'daki Giant\'s Causeway\'de çekilen bir fotoğrafa dayanıyordu.\n\nEleştirel tepkiler karışık olsa da, Houses of the Holy, daha sonra 1999\'da Amerika Kayıt Endüstrisi Birliği (RIAA) tarafından bir Elmas (10 milyondan fazla albüm satıldı) sertifikası alarak ticari bir başarı elde etti. Rolling Stone\'un Tüm Zamanların En İyi 500 Albümü listesinde 278 numarada.'),
(4, 'img/1.4.png', 'Lonely Hearts Club Band', 'Sgt. Pepper\'s Lonely Hearts Club Band, İngiliz The Beatles grubunun 1967 yılında piyasaya sürdükleri rock türünde sekizinci albümleri, aynı zamanda aynı adı taşıyan filmin müzik albümü.\n\nBeatles\'ın bir grup olarak uyumlu bir biçimde yaptıkları son albümdür. Albüm, grubu kariyerinin zirvesine ulaştırmıştır. Ayrıca grubun ilk konsept albümüdür. O zamana kadar yapılan albümlerde, şarkılar birbiri ile alakasız, uyumlu olmayan parçalardan oluşurken, Sgt. Pepper\'s Lonely Hearts Club Band, küçük çocuklardan huzurevindeki yaşlılara, gençlerden, uyuşturucu müptelası hippilere kadar herkese hitap eden, melodik, şiirsel, mizahi ve renkli bir albümdür. 13 parçadan oluşur.\n\nAlbüm, 2003 yılında Rolling Stone tarafından Tüm Zamanların En İyi 500 Albümü listesinde birinci sıraya konulmuştur.[1]'),
(5, 'img/acdc.png', 'Highway To Hell', 'Highway to Hell Bon Scott’ın yer aldığı son albümdür. Albümde \"Highway to Hell\", \"Touch Too Much\", \"If You Want Blood (You\'ve Got It)\", ve \"Shot Down in Flames\" gibi daha sonra fanların en sevdiği parçalar arasına girecek ve gösterilerde çoğunluka çalınacak şarkılar bulunmaktadır. AC/DC ilk defa bu albümle US Top 100’e girerek 17. Sıraya kadar çıkabilmiştir\n\nHighway to Hell Harry Vanda ve George Young tarafından yapımcılığı(prodüktörlüğü) gerçekleştirilmeyen ilk AC/DC albümüdür. Ön çalışmalar Ocak 1979’da yeni yapımcıları Eddie Kramer ile tanıştıkları Sydney’de başlar. Fakat Kramer daha tek bir şarkı bile tamamlanmadan kovulur ve onun yerine Robert John \"Mutt\" Lange getirilir. Lange daha sonra Back in Black ve For Those About to Rock We Salute You albümlerinde de yapımcılığı üstlenir. Albüm şubat 1979’da Miami’de ve mart-nisan aylarında Londra’daki Roundhouse stüdyolarında kaydedilmiştir.\n\nAlbümün Avustralya versiyonunda kullanılan kapak uluslararası versiyondan farklıdır. Avustralya dışında kullanılan albüm kapağında grubun fotoğrafı bulunurken,Avustralya versiyonunda fotoğraf alevler ve bir bas gitar ile birlikte yer almıştır. Doğu Almanya’da kulanılan kapakta ise sadece grubun ve albümün adı bulunmaktadır.'),
(6, 'img/1.6.jpg', 'Wish You Were Here', 'İlk olarak, sadece beş şarkıdan oluşmasına rağmen, Pink Floyd\'un şu ana kadarki en iyi parçaları denildiğinde akla gelen Shine On You Crazy Diamond, Welcome To The Machine, Have A Cigar ve albümle aynı adı taşıyan Wish You Were Here\'ı; yani bu şarkıların tamamını içeren bir albüm olan Wish You Were Here\'ı inceleyelim. David Gilmour (gitar/vokal) ve Rick Wright\'a (klavye) göre Pink Floyd\'un en iyi albümü olan bu albümün kapağı da diğer kapaklar gibi Storm Thorgerson\'a ait.\n\nTakım elbise içerisindeki iki  adamla gerçekleştirilen ve bu adamlardan birinin alevler içinde olduğu bu çalışmanın çıkış noktası, Thorgerson\'a göre kırılganlık duygusu, daha doğrusu insanların \"gerçek duygularını yanmaktan korktukları için gizlemeleri durumu\" olmuş. Albümün yapım sürecinde grubun üyeleri, uyuşturucu sorunlarından dolayı yollarını ayırdığı Syd Barret\'ın eksikliğini hissettikleri ve bundan dolayı yoğun bir duygusal bunalım içinde olduklarından dolayı da Thorgerson\'ın albüm kapağında hayata geçirdiği, duygularla alakalı düşüncelerinin aslında bu süreci çok iyi yansıttığını söylemek mümkün.\n\nBu öyle bir duygusal bunalım ki albümün çıkış noktası olan ve sonradan albümün ismi haline gelen \"Keşke burada olsaydın\" olarak çevirebileceğimiz Wish You Were Here cümlesi bile Syd Barret\'a bir sesleniş niteliğinde. Albümde yer alan ve grup üyelerinin kendilerinin de onayladığı üzere Barret\'a ithafen yazılmış \"Shine On You Crazy Diamond\" parçasının kaydı sırasında Syd Barret\'ın stüdyoya gelmesi üzerine duygusal olarak iyice dağılan Roger Waters ve David Gilmour\'ı gördükten sonra Storm Thorgerson \"eksiklik\" hissini onlarda somut olarak görmüş ve ve böyle bir albüm kapağı tasarlamakta son kararını vermiş.'),
(7, 'img/1.7.jpg', 'Rage Against The Machine', 'İdeolojilerini şarkılarına yansıtmaktan hiçbir zaman çekinmeyen ve şarkılarında sıklıkla kapital düzene, otoriteye olan karşıtlıklarını, sol düşünceye yakın olan görüşlerini dinlediğimiz Rage Against The Machine; şarkı sözlerindeki radikalliklerini bir üst seviyeye çıkararak albüm kapaklarında çok çarpıcı bir fotoğraf kullanmış. Görmüş olduğumuz bu fotoğraf 1963 yılına ait ve Vietnamlı bir Budist keşiş olan Thích Quảng Đức\'ın hükümetin Budistlere olan baskısını protesto etmek için kendini ateşe vermiş olduğu sırada Malcom Browne adlı bir fotoğrafçı tarafından çekilmiş. Aynı zamanda bu öyle bir fotoğraf ki zamanında John F. Kennedy\'yi o zamanki Vietnam hükümetine destek vermekten vazgeçirmiş. \n\n1992 yılında çıkardıkları ilk albümleri için seçtikleri bu görsel onların arkasında durduğu tüm bağlılığı, merhamet duygusunu ve meydan okumayı temsil ettiğinden dolayı Malcom Browne\'dan bu fotoğrafın lisansını almışlar ve rock müzik tarihine bu ikonik albüm kapağıyla isimlerini yazdırmışlar.'),
(8, 'img/1.8.jpg', 'Cream', 'Disraeli Gears, İngiliz rock grubu Cream\'in ikinci stüdyo albümüdür. Kasım 1967\'de yayınlandı [1] ve Birleşik Krallık Albüm Listesi\'nde 5. sıraya ulaştı. [2] ve İsveç ve Finlandiya listelerinde 1 numara. Albüm aynı zamanda Avustralya albüm listesinde iki hafta boyunca 1 numaraydı ve Amerika Birleşik Devletleri\'nde yıl sonu albüm listesinde Cash Box tarafından 1968\'in 1 numaralı albümü olarak listelendiAlbümde \" Strange Brew \" ve \" Sunshine of Your Love \" single\'larınınyanı sıra bunların B-side\'ları \" Tales of Brave Ulysses \" ve \" SWLABR \" yer alıyor.\n\nOrijinal 11 parçalık albüm 1998\'de yeniden düzenlendi ve ardından 2004\'te iki diskli Deluxe Edition olarak piyasaya sürüldü.Kapak resmi, Chelsea\'deki The Pheasantry\'de Clapton ile aynı binada yaşayan Avustralyalı sanatçı Martin Sharp tarafından yaratıldı . Sharp, Cream\'in bir sonraki albümü Wheels of Fire\'ın sanat eserlerini yaratmaya devam etti ve \" Tales of Brave Ulysses \" şarkılarının ve The Savage Seven film teması \"Anyone for Tennis\"in Clapton\'la birlikte yazdı . Fotoğraf , tartışmalı Yesterday and Today \"kasap\" kapağı da dahil olmak üzere Beatles için yaptığı çalışmalarla tanınan Bob Whitaker\'a aitti. Fotoğrafların çoğu Temmuz 1967\'de Londra\'daki Hyde Park\'ta ve İskoç Dağlık Bölgesi\'nde çekildi. Görüntülerden bazıları Britanya adalarının en yüksek dağı olan Ben Nevis\'te çekildi . Fotoğraflar, kabarık, permalı saç stiline sahip, temiz traşlı bir Clapton\'u gösteriyor . Ancak albümün Kasım ayında piyasaya sürüldüğü sırada saçlarını düz uzatmış ve bıyık bırakmıştı.\n\nÖn kapak, çiçek aranjmanıyla çevrelenmiş, ortada başlık ve altta grup adı bulunan psychedelic bir kolajdan oluşuyor. Martin Sharp, kapakta \"sıcak floresan ses\" olarak tanımladığı müziğin sesini yakalamaya çalışıyordu: [9]'),
(9, 'img/1.9.jpg', 'Stream Anarchy Pistols', 'Onlar “gürültücü üç beş hayta”dan daha fazlasıydı. Kaosun içinde patırtı koparan bu ekip, Sex Pistols, “Anarchy in the UK” ile yalnız punk’ın değil müzik tarihinin de en önemli gruplarından biri oldu.\n\nHer koşulda otoriteyi reddetmek anlamına gelen anarşi sözcüğü pek çoğumuz için 70’lerin marşlarından biri sayılabilecek “Anarchy in the UK” şarkısından tanıdık bir sözcük. Bu şarkı aynı zamanda punk müziğin de yükselişini simgeleyen kilometre taşı niteliğinde bir eser. Gelin, 26 Kasım 1976’de yayınlanan ve bugün 45 yaşına giren “Anarchy in the UK”in hikâyesine… \n\nVokalde Johnny Rotten, gitarda Steve Jones, davulda Paul Cook ve bas gitarda Glen Matlock’tan oluşan Sex Pistols, bu şarkıyı efsane basçı Sid Vicious olmadan kaydetmişti. İngiliz hükümetinin kenarları köşeli, baskıcı ve tutucu rejimine bir başkaldırı olarak kaleme aldıkları bu eserde patlamaya hazır bir bomba gibiydiler. Rotten bir röportajında “İnsanlar neden bir grup olduğumuzu bilmiyor. Grubuz çünkü tüm bu eski model zırvalıklardan sıkıldık” diyordu. Evet sıkılmışlardı. Ve çoğu insanın da canını sıkmaya hazırlardı. Gitarist Steve Jones, “Biz müziğin içinde değiliz. Biz kaosun içindeyiz” diyerek de son noktayı koymuştu. '),
(10, 'img/1.10.jpg', 'Seventh Son Of Seventh Son', 'Seventh Son of a Seventh Son, İngiliz heavy metal grubu Iron Maiden\'ın yedinci stüdyo albümüdür. 11 Nisan 1988 tarihinde yayımlanmıştır. Adrian Smith\'in 1999 yılında gruba dönmeden önce yaptığı son albümdür. Prodüktörlüğünü Martin Birch yapmıştır.\n\nAlbüm Birleşik Krallık listelerine 1 numaradan, ABD listelerine ise 12 numaradan girmiştir. Albümden çıkan single\'lar \"Can I Play With Madness\", \"The Evil That Men Do\", \"The Clairvoyant\" (Canlı) ve \"Infinite Dreams\" (Canlı) listelerde ilk 10\'a girmiştir.'),
(11, 'img/1.11.jpg', 'Destroyer', 'Destroyer , Amerikalı hard rock grubu Kiss\'in 15 Mart 1976\'da Casablanca Records tarafından ABD\'dedördüncü stüdyo albümüdürBu, ABD\'de ilk 40\'a giren üçüncü Kiss albümü olmasının yanı sıra, Almanya ve Yeni Zelanda\'da listelere giren ilk albüm oldu . Albüm, 22 Nisan 1976\'da RIAA tarafından altın , aynı yılın 11 Kasım\'ında ise platin sertifikasıyla ödüllendirildi; bu, platine ulaşan ilk Kiss albümü oldu. [1] Albüm, grubun ilk üç albümündeki ham sound\'dan bir sapmayı işaret ediyordu.\nİlk üç stüdyo albümüyle mütevazı bir ticari başarı yakalayan Kiss, 1975\'teki konser albümü Alive! ile ticari bir atılım gerçekleştirdi. Grubun altın sertifika alan ilk albümü oldu. [2] Alive\'ın başarısı ! Listelerde 110 hafta geçiren , sadece zor durumdaki gruba değil, aynı zamanda nakit sıkıntısı çeken plak şirketleri Casablanca Records\'a da fayda sağladı . [3] [4] Kiss, 1975\'in sonlarında Casablanca ile yeni bir sözleşme imzaladı, bunun nedeni kısmen plak şirketinin grubun kariyerinin başından beri çok destekleyici olmasıydı. Sözleşme iki albüm içindi, bu da Casablanca\'nın grubun Alive\'ın başarılarını tekrarlayıp kopyalayamayacağından emin olmadığının bir göstergesiydi ! [5]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimlerresim`
--

DROP TABLE IF EXISTS `resimlerresim`;
CREATE TABLE `resimlerresim` (
  `id` int(11) NOT NULL,
  `resim_url` varchar(255) NOT NULL,
  `baslik` varchar(255) NOT NULL,
  `aciklama` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `resimlerresim`
--

INSERT DELAYED IGNORE INTO `resimlerresim` (`id`, `resim_url`, `baslik`, `aciklama`) VALUES
(1, 'img/2.1.jpg', 'Starry Night', 'Yıldızlı Gece (Felemenkçe: De sterrennacht), Hollandalı art izlenimci ressam Vincent van Gogh tarafından yapılan yağlı boya tablo. Haziran 1889\'da yaptığı tabloda ressam, sanatoryumdaki odasının doğuya bakan pencereden görünen Saint-Rémy-de-Provence köyünün gün doğuşundan hemen önceki görünüşünü resmetmiştir.Van Gogh, hayal gücünden yola çıkarak bir tuval boyamak arzusundaydı, bunun esere daha fazla değer katacağına inandı ve “gerçekliğe tek bir bakışla görebileceğimizden daha heyecan verici ve rahatlatıcı bir doğa yaratmayı başarabiliriz” dedi. Sanatçı, kardeşi Theo\'ya yazdığı mektupta, temanın bu olmasını istediğini açıkça belirtti. Yıldızlı Gece, Van Gogh\'un hafızadan resim yapma arzusunun gerçekleşmesiydi ve bu, eserin o sırada ürettiği diğerlerine kıyasla daha büyük duygusal etkisini açıklayabilir.Van Gogh, hayal gücünden yola çıkarak bir tuval boyamak arzusundaydı, bunun esere daha fazla değer katacağına inandı ve “gerçekliğe tek bir bakışla görebileceğimizden daha heyecan verici ve rahatlatıcı bir doğa yaratmayı başarabiliriz” dedi. Sanatçı, kardeşi Theo\'ya yazdığı mektupta, temanın bu olmasını istediğini açıkça belirtti. Yıldızlı Gece, Van Gogh\'un hafızadan resim yapma arzusunun gerçekleşmesiydi ve bu, eserin o sırada ürettiği diğerlerine kıyasla daha büyük duygusal etkisini açıklayabilir.'),
(2, 'img/2.2.jpg', 'Miss Auras, The Red Book', 'Yıldızlı Gece (Felemenkçe: De sterrennacht), Hollandalı art izlenimci ressam Vincent van Gogh tarafından yapılan yağlı boya tablo. Haziran 1889\'da yaptığı tabloda ressam, sanatoryumdaki odasının doğuya bakan pencereden görünen Saint-Rémy-de-Provence köyünün gün doğuşundan hemen önceki görünüşünü resmetmiştir.Van Gogh, hayal gücünden yola çıkarak bir tuval boyamak arzusundaydı, bunun esere daha fazla değer katacağına inandı ve “gerçekliğe tek bir bakışla görebileceğimizden daha heyecan verici ve rahatlatıcı bir doğa yaratmayı başarabiliriz” dedi. Sanatçı, kardeşi Theo\'ya yazdığı mektupta, temanın bu olmasını istediğini açıkça belirtti. Yıldızlı Gece, Van Gogh\'un hafızadan resim yapma arzusunun gerçekleşmesiydi ve bu, eserin o sırada ürettiği diğerlerine kıyasla daha büyük duygusal etkisini açıklayabilir.Van Gogh, hayal gücünden yola çıkarak bir tuval boyamak arzusundaydı, bunun esere daha fazla değer katacağına inandı ve “gerçekliğe tek bir bakışla görebileceğimizden daha heyecan verici ve rahatlatıcı bir doğa yaratmayı başarabiliriz” dedi. Sanatçı, kardeşi Theo\'ya yazdığı mektupta, temanın bu olmasını istediğini açıkça belirtti. Yıldızlı Gece, Van Gogh\'un hafızadan resim yapma arzusunun gerçekleşmesiydi ve bu, eserin o sırada ürettiği diğerlerine kıyasla daha büyük duygusal etkisini açıklayabilir.'),
(3, 'img/2.3.jpg', 'Skrik', 'Çığlık tablosu, genel bir kanıya göre ressam Munch’un varoluşsal sıkıntı ve ızdıraplarını en iyi anlattığı eserdir. Turuncu ve kırmızı renk tonlarının gökyüzünü kapladığı tabloda, iki elini başının arasına alan bir figür, öylece durmaktadır. Kadın mı yoksa erkek mi olduğu belli olmayan bu figürün yüz hatları oldukça dehşet verici görünmektedir. Dehşet verici görüntüsü olan figür çığlık atmakta ancak arkasında bulunan iki kişi oldukça sakin görünmektedir. Aynı zamanda uzakta da bir geminin varlığı dikkat çekmektedir. Resimdeki iki kişi ve gemi sakin bir görünümde olsalar da diğer tüm havaya korku hakim olmaktadır.\n\nÇığlık resmi, durduk yere bir anda yapılan bir tablo değildir. Munch bu eserde, hayatı boyunca şahit olduğu, yaşadığı, gördüğü ve duyduğu her şeyi bu eserine aktarmıştır. Çığlık tablosu diğer eserlerinde de yaşadığı tüm acıları en iyi şekilde yansıtmıştır.'),
(4, 'img/2.4.jpg', 'Sorrowing Old Man', 'Kederli Yaşlı Adam (Sonsuzluğun Kapısında), 1890 yılında Vincent Van Gogh (1853-1890) tarafından ölümünden iki ay önce yaratıldı. Bu tablo şu anda Hollanda\'nın Otterlo kentindeki Kröller-Müller Müzesi\'nde sergileniyor. Bu tablonun boyutları 2\' 7” x 2\' 1” feet\'tir ve tuval üzerine yağlı boya olarak sınıflandırılmıştır. Bu resim, Van Gogh\'un Fransa\'nın Saint-Remy kentindeki bir akıl hastanesinde vakit geçirirken hatırladığı bir tasarım olan kağıt üzerine eski bir litografiye dayanıyordu .   Bu tablonun Van Gogh\'un bozulan sağlığını temsil ettiği, sanat eserinde Van Gogh\'un zayıflığını ve yaşamının son dönemlerindeki çalışmalarına olan bağlılığını yansıtan çeşitli unsurların sergilendiği genel olarak kabul edilir.'),
(5, 'img/2.5.jpg', 'Cafe Terrace at Night', 'Ressamın Arles\'da kalış sürecinde çizdiği bu tablo Place du Forum\'un kuzeydoğu köşesinde bulunan betimlemesidir. Van Gogh yıldızlı gökyüzü temasını ilk kez bu eserinde kullanmıştır.[1] Kafenin gece görünümünün yansıtıldığı esere genelde koyu renkler hakim olsa da, çiziminde siyah rengin herhangi bir tonu kullanılmamıştır. Onun yerine tercih edilen sıcak renkler ve perspektif derinliği ile bu resim Van Gogh eserleri için sıra dışıdır. Bu perspektif sayesinde seyirci, çakıl taşları ile döşeli kaldırımın sonundan öne doğru ilerleyen at arabasına yönelir. Kafenin lambalarından yansıyan sarı ışığın aydınlattığı geniş tentenin altında, arkadaki masa etrafında misafirler oturuyor. Masanın kenarında beyaz giysili, elinde tepsi olan garson onlara hizmet etmektedir. Bununla birlikte sokakta dolaşan insanlar, uzaktan gelen atlı araba, sokağın sağındaki karanlık binalar, ışıklı küçük dükkân, ağaç dalları ve eski bir kilisenin kulesi (şimdiki Lapidaire Müzesi) gözükmektedir. Gecenin karanlığına rağmen aydınlık ve huzur dolu olan bu tablo ressamın en özel eserlerinden biri olarak kabul edilir.'),
(6, 'img/2.6.jpg', 'The Bedroom', 'Van Gogh, Arles\'taki evine taşındıktan sonra dönemin ressamlarından Paul Gauguin ile birlikte çalışmak ve ortak paylaşımlarda bulunmak için onu buraya davet eder. Ressam, misafirini beklerken uygun ortam hazırlamak ve kendi resim yeteneğini göstermek için odayı, yaptığı çalışmalarla süsler. Eserde duvarlarda görülen tablolar da bu süreçte yapılmıştır. Odadaki eşyalar temelde, bir yatak, iki sandalye ve bir masadan oluşuyor. Sağdaki duvarın yanında bir sandalye, üzerinde su bulunan küçük masa ve sokağa bakan bir pencere bulunur. Soldaki duvarın yanında ikinci bir sandalye ve diğer odanın kapısı bulunuyor. Odada hiç kimse yoktur. Yatağın yanındaki duvarda ressamın arkadaşları olan Eugène Boch ve Paul-Eugène Milliet\'nin portresi asılmıştır. Yatağın arkasındaki resim ise Kayalıklar ve Meşe Ağacı\'dır. Tablodaki çoğu nesneler çiftler halinde resmedilmiştir. Bu da Van Gogh\'un Gauguin\'i bekleyişinin yansımasıdır. Sandalyeler, yastıklar ve duvardaki tabloların çiftler halinde oluşu tabloya huzur, düzen ve barış duygusu vermek için yardımcı olur. Tema her ne olursa olsun Arles ve Saint-Rémy dönemleri boyunca Van Gogh\'un en sevdiği ve sıklıkla kullandığı renk sarıydı. Bu tabloda da kullanılan esas renk sarıdır. Resmin en dikkat çekici ve çarpıcı yanı, ilginç bir perspektife sahip olmasıdır. Alışılmışın dışında orantısız boyutlarda yamuk şekilde betimlenen odanın ölçülerinde sıra dışı bir derinlik yanılgısı göze çarpıyor. Arka duvar sağa doğru yönelirken, yatağın sağındaki duvarda yatağa doğru eğilmiştir. Odanın sağındaki kapı odayı koridora, sol taraftaki kapı ise ressamın Gauguin için hazırladığı misafir odasına bağlıyor.'),
(7, 'img/2.7.jpg', 'The Tortoise Trainer', 'Kaplumbağa Terbiyecisi, Osman Hamdi Bey\'in 1906 ve 1907 yıllarında iki farklı versiyonunu çizdiği tablosudur. Osmanlı Ressamlar Cemiyeti tarafından çıkartılan gazetenin on yedinci sayısında tablonun adı Kaplumbağalar ve Adam olarak geçer, ancak tabloya daha sonra yaygın olarak bilinen Kaplumbağa Terbiyecisi adı verilmiştir.[1]\n\nBelinde sıkı bir kemerle bağlanmış kırmızı uzun bir giysi giyen sakallı bir adam, mavi çinilerle kaplı eşyasız ve bakımsız bir odada, izleyiciye arkası yarı dönük biçimde dikilmektedir. Başına, etrafına gelişigüzel bir yemeni sarılmış arakiye takmıştır.[2] Adamın ayaklarının dibinde, yerdeki yaprakları yemekte olan kaplumbağalar vardır. Bursa\'daki Yeşil Camii\'nin üst katındaki[2] odanın duvarlarındaki sıvalar ve çiniler yer yer dökülmüştür. Tablonun tek ışık kaynağı adamın önündeki alçak penceredir.[3]\n\nEllerini arkasında kavuşturmuş olan adam bir ney tutmaktadır. Sırtında bir nakkare asılıdır ve buna bağlı bir mızrap boynundan aşağıya sarkar.[2] Bazılarına göre adamın sırtında asılı olan şey, eskiden dervişler ve dilenciler tarafından kullanılan, hindistan cevizinden ya da abanozdan yapılma dilenci çanağı olan keşkülüfukaradır.[3]'),
(8, 'img/2.8.jpg', 'American Gotik', 'Amerikan Gotiği (İngilizce özgün adıyla American Gothic), Chicago Sanat Enstitüsü koleksiyonunda yer alan Grant Wood\'a ait 1930 tarihli resimdir. Wood; Eldon, Iowa\'daki Amerikan Gotik Evi ile \"Düşlediğim insanlar o evde yaşamalı\" fikrinden ilham alarak tabloyu resmetti. Resim, Wood\'un kız kardeşi olarak yorumlanmış bir kadının yanında duran bir çiftçiyi tasvir eder.[1][2]\n\nFigürler, Wood\'un kız kardeşi Nan Wood Graham ve diş hekimleri Dr. Byron McKeeby\'den model alınmıştır. Kadın, 19. yüzyıldan kalma Americana\'yı andıran bir kolonide yaşayana özgü baskılı bir önlük giymiş ve adam bir dirgen tutmaktadır. Evin verandasındaki bitkiler paşa kılıcı ile biftek begonyasıdır ve bu bitkiler, Wood\'un 1929 yılındaki Woman with Plants (Bitkileriyle Kadın) adlı annesinin portresindeki bitkilerle aynıdır.[3]\n\nAmerikan Gotiği, 20. yüzyıl Amerikan sanatının en bilinen resimlerinden biridir ve Amerikan popüler kültüründe yaygın olarak parodisi yapılmıştır.[1][4] Resim, Amerika Birleşik Devletleri dışında ilk kez 2016–17\'de Paris\'te Musée de l\'Orangerie\'de ve Londra\'da Kraliyet Sanat Akademisi\'nde sergilendi.[5][6][7]'),
(9, 'img/2.9.jpg', 'The Persistence of Memory', 'Sürrealizme yönelmeden önce psikanaliz ve Sigmund Freud üzerine çalışmalar yapan Dali için; düşleri resimlerinde önemli yer tutmuş. Akdeniz genlerinin getirdiği siestalar, Dali’nin resimlerinde nedenini bilmeden bir araya getirdiği heterojen parçalar doğurmuş.\nOtoportre, Dali için birçok çağdaş eserinde kullandığı canavarlaşmış bir insan figürünü simgeliyor. Soyut form çalışmalarında sık sık farklı şekillerde ortaya çıkıyor. Bu durum, Dali’nin daha önce üzerinde çalıştığı Bosch’un “The Garden of Earthly Delights” tablosundaki bir figüre dayalı gibi görünüyor. Rüyalarda, biçiminin ve kompozisyonunun tam seçilemediği soluk bir yaratığı andırıyor. Yaratığın net görülen birkaç kirpiği ve kapalı gözü, onun da uyku halinde olduğuna işaret ediyor. İkonografinin, Dali’nin kendi yaşadığı bir rüyayı simgelediği; saatlerin ise, uykuda zamanın geçmesini sembolize ettiği biliniyor.'),
(10, 'img/2.10.jpg', 'The Fall of the Rebel Angels', ' resim, dini temalar üzerine çalışmaları, karmaşık kompozisyonları, çirkin canavarları ve günahkar karakterleri betimlemesiyle ünlü olan sanatçı Hieronymus Bosch’un Bruegel’in üzerindeki etkisini açıkça gösterir. Bruegel’in yapıtında, Bosch’un 1500 yılında yaptığı aynı adlı eserinde olduğu gibi, melekler, fantastik yaratıklar, gökyüzünden yeryüzüne yığınlar halinde düşerler. Bruegel’in korkunç/fantastik yaratıkları, insanoğlundaki şeytani yönü, korku ve kargaşa hissi uyandırarak tasvir etmeye çalıştığı birer sembolik ögedir. ⁣⁣⁠\n\nBaş melek Mikail, resmin merkezinde, turkuaz pelerini, altından zırhı ve kalkanıyla, kılıcı havada, yedi başlı ejderi alt ederken betimlenmiş. Mikail tarafından yönetilen kutsanmış melekler ordusu, resmin her bir köşesini işgal eden insan, hayvan, bitki bileşiminden oluşan deforme yaratıklarla savaşır. Bu yaratıklar alt bölümde temsil edilen cehennemin karanlık derinliklerine düşerler. Resmin etkileyici yanı ise, Mikail’in önderliğini yaptığı Tanrı’nın ordusu ile Şeytan’ın lider olduğu isyankârlar ordusu arasındaki mücadeleden ziyade, meleklerin cennetten dünyaya bir yığın halinde düşüşleri ve fantastik görünümleriyle resmin tümüne yayılan yoğun kalabalıklarıdır.'),
(11, 'img/2.11.jpg', 'The Old Guitarist', 'Resimde, İspanya\'nın Barselona şehrindeki bir caddede, gitarının üzerine eğilmiş, yırtık pırtık giysili yaşlı, bitkin kör bir adam betimlenir. Günümüzde, Chicago Sanat Enstitüsü\'nde, Helen Birch Bartlett Hatıra Koleksiyonunun bir parçası olarak sergilenmektedir.[1]\n\nYaşlı Gitarist\'in yaratıldığı dönem; Modernizm, Empresyonizm, Post Empresyonizm ve Sembolizm akımlarının bir araya getirilip Ekspresyonizm adı altında genel bir hareketin oluşturulduğu ve Picasso\'nun bundan derinden etkilendiği bir dönemdir. Ayrıca, sanatçının \"mavi dönemi\" olarak adlandırılan bu dönemde El Greco, düşük geçim koşulları ve sevgili arkadaşının intiharı Picasso\'yu etkilemiştir. Pek çok X ışını, kızılötesi ışınlar ve küratörlerin incelemeleri, yaşlı gitaristin altında iki farklı figürün daha saklı olduğunu ortaya koymuştur.[2]');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisdetay`
--

DROP TABLE IF EXISTS `siparisdetay`;
CREATE TABLE `siparisdetay` (
  `ID` int(11) NOT NULL,
  `SiparisID` int(11) DEFAULT NULL,
  `SiparisMiktari` int(11) DEFAULT NULL,
  `UrunID1` int(11) DEFAULT NULL,
  `UrunID2` int(11) DEFAULT NULL,
  `UrunID3` int(11) DEFAULT NULL,
  `ToplamTutar` decimal(10,2) DEFAULT NULL,
  `SiparisDurumu` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `siparisdetay`
--

INSERT DELAYED IGNORE INTO `siparisdetay` (`ID`, `SiparisID`, `SiparisMiktari`, `UrunID1`, `UrunID2`, `UrunID3`, `ToplamTutar`, `SiparisDurumu`) VALUES
(1, 1, 3, 1, 2, 4, 150.00, 'Hazırlanıyor'),
(2, 2, 2, 9, 6, NULL, 90.00, 'Hazırlanıyor'),
(3, 3, 2, 1, 8, NULL, 30.00, 'Hazırlanıyor'),
(4, 4, 3, 3, 3, 1, 120.00, 'Hazırlanıyor'),
(5, 5, 1, 5, NULL, NULL, 15.00, 'Hazırlanıyor'),
(6, 6, 2, 6, 7, NULL, 75.00, 'Hazırlanıyor');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

DROP TABLE IF EXISTS `siparisler`;
CREATE TABLE `siparisler` (
  `ID` int(11) NOT NULL,
  `KullaniciID` int(11) DEFAULT NULL,
  `SiparisID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `siparisler`
--

INSERT DELAYED IGNORE INTO `siparisler` (`ID`, `KullaniciID`, `SiparisID`) VALUES
(1, 13, 1),
(2, 14, 2),
(3, 12, 3),
(4, 10, 4),
(5, 11, 5),
(6, 15, 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

DROP TABLE IF EXISTS `urunler`;
CREATE TABLE `urunler` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,3) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT DELAYED IGNORE INTO `urunler` (`id`, `name`, `price`, `img`, `description`) VALUES
(1, 'Yangın', 100.992, 'img/3.5.jpeg', 'Açıklama 1'),
(2, 'Çığlık', 200.498, 'img/3.2.jpeg', 'Açıklama 2'),
(3, 'İsimsiz', 50.994, 'img/3.6.jpeg', 'Açıklama 3'),
(4, 'Ten-Metal', 50.995, 'img/3.5.jpeg', 'Açıklama 4'),
(5, 'Yangın', 78.995, 'img/3.2.jpeg', 'Açıklama 5'),
(6, 'Yağmur', 69.999, 'img/3.6.jpeg', 'Açıklama 6'),
(7, 'İsimsiz', 123.995, 'img/3.5.jpeg', 'Açıklama 7'),
(8, 'Kent Planı I', 45.999, 'img/3.2.jpeg', 'Açıklama 8'),
(9, 'Kentsel Mekan', 89.999, 'img/3.6.jpeg', 'Açıklama 9'),
(10, 'Çığlık', 100.992, 'img/3.5.jpeg', 'Açıklama 10'),
(11, 'Çığlık', 200.498, 'img/3.2.jpeg', 'Açıklama 11'),
(12, 'İsimsiz', 50.994, 'img/3.6.jpeg', 'Açıklama 12'),
(13, 'Ten-Metal', 50.995, 'img/3.5.jpeg', 'Açıklama 13'),
(14, 'Yangın', 78.995, 'img/3.2.jpeg', 'Açıklama 14'),
(15, 'Ten-Metal', 100.992, 'img/3.6.jpeg', 'Açıklama 15');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `etkinlikresim`
--
ALTER TABLE `etkinlikresim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kullanicilar`
--
ALTER TABLE `kullanicilar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimlermuzik`
--
ALTER TABLE `resimlermuzik`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimlerresim`
--
ALTER TABLE `resimlerresim`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisdetay`
--
ALTER TABLE `siparisdetay`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiparisID` (`SiparisID`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `KullaniciID` (`KullaniciID`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `etkinlikresim`
--
ALTER TABLE `etkinlikresim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `kullanicilar`
--
ALTER TABLE `kullanicilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `resimlermuzik`
--
ALTER TABLE `resimlermuzik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `resimlerresim`
--
ALTER TABLE `resimlerresim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `siparisdetay`
--
ALTER TABLE `siparisdetay`
  ADD CONSTRAINT `siparisdetay_ibfk_1` FOREIGN KEY (`SiparisID`) REFERENCES `siparisler` (`ID`);

--
-- Tablo kısıtlamaları `siparisler`
--
ALTER TABLE `siparisler`
  ADD CONSTRAINT `siparisler_ibfk_1` FOREIGN KEY (`KullaniciID`) REFERENCES `kullanicilar` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
