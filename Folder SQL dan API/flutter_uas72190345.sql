-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2021 at 10:01 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flutter_uas72190345`
--

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `judul_berita` text NOT NULL,
  `isi_berita` text NOT NULL,
  `tanggal_berita` date NOT NULL,
  `nama_penulis` text NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul_berita`, `isi_berita`, `tanggal_berita`, `nama_penulis`, `kategori`) VALUES
(2, 'Jenazah Selesai Dikremasi, Ayah Peluk Erat Guci Abu Laura Anna', 'JAKARTA - Jenazah Laura Anna akhirnya menjadi abu setelah dikremasi selama 4 jam. Sebagian dari abu tersebut kemudian disimpan dalam sebuah guci dan akan dibawa pulang ke rumah.  Menariknya, ayah mendiang, Gabor Edelenyi terlihat enggan berpisah dengan guci abu tersebut. Pria 73 tahun asal Hungaria itu, tampak mendekap erat guci yang berisi abu putrinya tersebut.', '2021-12-17', 'Dewi Aspara', 'Terbaru'),
(3, 'Heboh Ilmuwan Temukan Air Es di Bawah Lembah Mars', 'Jakarta - Air es bersembunyi hanya beberapa meter di bawah permukaan Mars di salah satu situs paling dramatis di Planet Merah tersebut. Temuan ini merupakan hasil penelitian terbaru berdasarkan data yang dikumpulkan oleh Trace Gas Orbiter (TGO). Dikutip dari Space.com, TGO merupakan bagian dari misi ExoMars yang dioperasikan oleh European Space Agency (ESA) dan mitranya dari Rusia, Roscosmos. ExoMars mencakup TGO, yang diluncurkan pada 2016, dan penjelajah Rosalind Franklin yang akan diluncurkan ke Mars tahun depan.', '2021-12-17', 'Rachmatunnisa', 'Terbaru'),
(4, 'Gara-gara Rudiger, Chelsea Batal Pulangkan Eden Hazard', 'Bola.net - Spekulasi kepulangan Eden Hazard ke Chelsea berpotensi gagal terjadi. Karena kubu The Blues ngambek ke Real Madrid. Sudah menjadi rahasia umum bahwa Eden Hazard ingin disingkirkan oleh Real Madrid. Minim kontribusi dan punya gaji besar jadi alasan mengapa El Real ingin cepat-cepat menyingkirkannya.', '2021-12-17', 'Tim bolanet', 'Terbaru'),
(5, 'Pilu! Terungkapnya Alasan Nia Ramadhani dan Ardi Bakrie Konsumsi Narkoba', 'Jakarta - Sidang narkoba yang menimpa pasangan Nia Ramadhani dan Ardi Bakrie kembali bergulir. Kali ini, mereka menyampaikan penyebab mengonsumsi narkoba. Kasus itu berawal pada tanggal 7 Juli 2021. Sopir Nia Ramadhani yang berinisial NZ alias Zen Vivanto diamankan oleh pihak kepolisian.', '2021-12-17', 'Tim detikcom', 'Terbaru'),
(7, 'Presiden Korea Selatan Minta Maaf karena Gagal Tangani Pandemi Covid-19', 'SEOUL, KOMPAS.com ? Presiden Korea Selatan Moon Jae-in meminta maaf kepada rakyatnya karena gagal menahan penyebaran Covid-19 di Negeri Ginseng. Dia juga meminta maaf karena tidak berhasil mengamankan ketersediaan kamar di rumah sakit ketika Korea Selatan saat pemerintah mulai melonggarkan pembatasan. Permintaan maaf tersebut disampaikan juru bcara pemerintah sebagaimana dilansir Reuters, pada Kamis (16/12/2021).', '2021-12-17', 'Danur Lambang Pristiandaru', 'Terbaru'),
(8, 'Tolong Catat! 7 Vaksin Covid Ini Diakui WHO, Sinovac Masuk?', 'Jakarta. CNBC Indonesia - World Health Organization (WHO) turun membantu dunia memerangi Covid-19. Salah satu caranya melalui COVAX Faculity, sebuah program untuk pengiriman dan mendistribusikan vaksin Covid-19 bagi negara berkembang dan miskin. Vaksin yang masuk dalam program ini harus mendapatkan emergency use listing (EUL) dari WHO.', '2021-12-17', 'Aristya Rahadian', 'Populer'),
(9, 'Teleskop FAST China deteksi lebih dari 500 pulsar baru', 'Jakarta (Antara/Xinhua) - Para ilmuwan telah mengidentifikasi lebih dari 500 pulsar baru sejak Oktober 2017 dengan menggunakan Teleskop Radio Sferikal Apertur Lima ratus meter (Five-hundred-meter Aperture Spherical Radio Telescope/FAST), yang juga dijuluki sebagai \"Mata Langit China\". Dengan menggunakan FAST, para ilmuwan juga mendeteksi total 1.652 semburan independen dari satu sumber ledakan radio cepat (fast radio burst/FRB) berulang, yang diberi nama kode FRB121102, demikian penjelasan Li Di, kepala ilmuwan teleskop tersebut sekaligus peneliti di Observatorium Astronomi Nasional di bawah Akademi Ilmu Pengetahuan China, pada Kamis.', '2021-12-17', 'Wu Si, Cheng Lu, Qi Jian', 'Populer'),
(10, 'Bursa Transfer Pemain Liga 1 Memanas, Mantan Striker Persib Utarakan Pernyataan Getir', 'PRFMNEWS - Bursa transfer pemain Liga 1 musim 2021/2022 semakin memanas. Situasi ini semakin terasa ketika mantan striker Persib Bandung mengutarakan pernyataan getir usai didepak Pangeran Biru. Adalah Wander Luiz, mantan striker Persib yang semakin memanaskan suasana bursa transfer pemain Liga 1 musim ini yang sedang masuk dalam masa jeda.', '2021-12-17', 'Lia Aulia Khairunnisaa', 'Populer'),
(11, 'Mengenal Spinal Cord Injury yang Dialami Laura Anna, Benarkah Mengancam Nyawa?', 'Kabar duka datang dari industri hiburan Indonesia. Berita meninggalnya salah satu selebgram, Laura Anna di usia 21 tahun hingga saat ini masih menjadi topik yang ramai dibicarakan oleh publik, Bunda. Sebelumnya, Laura Anna diketahui mengalami kecelakaan dua tahun lalu dan mengalami cedera saraf tulang belakang atau disebut juga dengan spinal cord injury.', '2021-12-17', 'Bella Barlian', 'Populer'),
(12, 'Harga Redmi Note 10 Murah Padahal Sudah 5G, Cek Spesifikasi Ponsel Xiaomi Ini...', 'WARTA SAMBAS - Menjelang Natal dan Tahun Baru (Nataru), perusahaan elektronik asal China, Xiaomi mengejutkan pengguna setianya dengan harga Redmi Note 10 yang terbilang murah. Dengan spesifikasi mumpuni karena tersemat chipset MediaTek Dimensity 700 Dual 5G, tentunya harga Redmi Note 10 sangat mungkin lebih mahal dari sekarang.', '2021-12-17', 'Tim Warta Sambas Raya 02', 'Populer'),
(13, 'Samsung Luncurkan Tablet Galaxy Tab A8', 'KOMPAS.com - Samsung mengumumkan lini tablet terbarunya untuk segmen kelas menengah, yaitu Galaxy Tab A8. Tablet ini merupakan penerus dari Galaxy Tab A7 yang diluncurkan pada 2020 lalu. Sebagai suksesor, Galaxy Tab A8 (2021) membawa sejumlah peningkatan, misalnya dari aspek layar dan prosesor yang digunakan.', '2021-12-17', 'Wahyunanda Kusuma Pertiwi', 'Riwayat Baca'),
(14, 'Vaksin Booster Gratis untuk Lansia dan Peserta BPJS, Ini yang Perlu Diketahui', 'Jakarta - Pemerintah menetapkan akan memberikan suntikan dosis ketiga atau vaksin booster gratis bagi lansia dan peserta BPJS (Badan Penyelenggara Jaminan Sosial) Kesehatan mulai Januari 2022. Hal ini diungkapkan langsung oleh Menteri Kesehatan (Menkes) Budi Gunadi Sadikin saat Rapat Kerja dengan Komisi IX DPR di Kompleks Parlemen, Senayan, Jakarta, pada Selasa (14/12/2021).', '2021-12-17', 'Maulida Balqis', 'Riwayat Baca'),
(15, 'Legenda Singapura Turut Salut Rizky Ridho Main Tanpa Celah untuk Timnas Indonesia di Piala AFF 2020', 'Bola.com, Bishan - Legenda Timnas Singapura, Baihakki Khaizan, salut dengan Rizky Ridho. Bek Timnas Indonesia itu dinilai bermain tanpa celah ketika melawan Vietnam. Berkat ketangguhan Rizky Ridho, Timnas Indonesia mampu mengimbangi Vietnam 0-0 dalam matchday keempat Grup B Piala AFF 2020 di Bishan Stadium, Bishan, Singapura, Rabu (15/12/2021).', '2021-12-17', 'Muhammad Adiyaksa', 'Riwayat Baca'),
(16, 'Mitos dan Fakta tentang Vaksin Covid-19 untuk Anak Menurut CDC', 'KOMPAS.com - Pemberitahuan vaksin Covid-19 merupakan salah satu cara untuk menghentikan pandemi Covid-19 yang telah berlangsung sejak akhir tahun 2019 lalu. Tak hanya orang dewasa, anak-anak pun perlu mendapatkan vaksin Covid-19 hingga dosis lengkap untuk melindungi mereka dari Covid-19 dan gejala yang parah. Mengetahui informasi-informasi yang akurat mengenai vaksin Covid-19 penting agar para orangtua tidak ragu lagi untuk memberikan vaksin pada anak-anaknya.', '2021-12-17', 'Lulu Lukyani', 'Riwayat Baca'),
(17, 'Pemerintah Terapkan Tanggap Darurat Cegah Omicron Menyebar', 'Jakarta, CNN Indonesia -- Juru Bicara Satgas Penanganan Covid-19 Wiku Adi Sasmito menyatakan bahwa pemerintah kini menerapkan situasi tanggap darurat untuk mencegah penyebaran virus corona varian Omicron. Kebijakan baru juga tengah dirancang. \"Saat ini pemerintah melakukan tanggap darurat demi mencegah meluasnya varian Covid-19 dalam negeri kemudian menyusun kebijakan yang disesuaikan dengan kebijakan berbagai pakar,\" kata Wiku dalam konferensi pers, Kamis (16/12).', '2021-12-17', 'CNN Indonesia', 'Riwayat Baca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
