-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Apr 2022 pada 23.51
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata_indri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `pk_login_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`pk_login_id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `pk_transaksi_id` int(11) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `no_identitas` varchar(50) DEFAULT NULL,
  `no_hp` varchar(50) DEFAULT NULL,
  `tempat_wisata` int(11) DEFAULT NULL,
  `tanggal_kunjungan` varchar(50) DEFAULT NULL,
  `dewasa` varchar(50) DEFAULT NULL,
  `anak` varchar(50) DEFAULT NULL,
  `qrcode` varchar(25) DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `status` enum('Y','N') DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`pk_transaksi_id`, `nama_lengkap`, `no_identitas`, `no_hp`, `tempat_wisata`, `tanggal_kunjungan`, `dewasa`, `anak`, `qrcode`, `created_date`, `status`) VALUES
(2, 'Adam', '5665', '23232', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'N'),
(3, 'Andri', '989', '989', 1, '2022-04-17', '1', '1', NULL, '2022-04-17', 'N'),
(7, 'Dini', '3275656565', '08555555', 1, '2022-04-17', '2', '1', NULL, '2022-04-17', 'N'),
(8, 'asdad', '1212', '085555', 1, '2022-04-17', '1', '2', NULL, '2022-04-17', 'N'),
(9, 'Dini', '121231321231', '089614729915', 2, '2022-04-17', '1', '2', NULL, '2022-04-17', 'N'),
(12, 'titisan', '32132132', '089898', 1, '2022-04-17', '1', '2', '942847204.png', '2022-04-17', 'N'),
(13, 'titisan', '32132132', '089898', 1, '2022-04-17', '1', '2', '941896892.png', '2022-04-17', 'N'),
(14, 'test', '32323', '12', 2, '2022-04-17', '2', '3', '470081814.png', '2022-04-17', 'N'),
(15, 'titisan', '2323565', '08999', 2, '2022-04-17', '1', '2', '432131819.png', '2022-04-17', 'N'),
(18, '2311', '121321321', '123132123', 1, '2022-04-17', '2', '1', '651520538.png', '2022-04-17', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `wisata_id` int(11) NOT NULL,
  `nama_tempat` varchar(50) DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `tiket_dewasa` int(11) DEFAULT NULL,
  `tiket_anak` int(11) DEFAULT NULL,
  `embed` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`wisata_id`, `nama_tempat`, `lokasi`, `deskripsi`, `foto`, `tiket_dewasa`, `tiket_anak`, `embed`) VALUES
(1, 'Curug Deng Deng', 'Kabupaten Tasikmalaya', 'curug dengdeng hadir dengan keindahan alam yang begitu indah, berupa tebing kecoklatan dan jernihnya air sungai. Tempat wisata memukau ini terletak di Desa Nagrog, Kecamatan Cipatujah, Kabupaten Tasikmalaya.', 'https://lh3.googleusercontent.com/-LtEdShJRbLA/WMVBR_yJp3I/AAAAAAAAGTI/VFyGG3stA00/s1600/19-33-56-curug_dengdeng_pancatengah.jpg', 10000, 5000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(2, 'Pantai Karang Tawulan', 'Kabupaten Tasikmalaya', 'Salah satu pantai populer dan eksotis di Tasikmalaya adalah Pantai Karang Tawulan yang menawarkan pasir pantai putih dan tersembunyi di balik tebing. Pantai Karang Tawulan yang indah ini terletak di Desa Cimanuk, Kalapagenep, Kecamatan Cikalong, Tasikmalaya.', 'https://asset.kompas.com/crops/Fz0jDIh3z6Dxp642Di1MUK7KkkE=/0x0:800x533/750x500/data/photo/2020/10/19/5f8d5c603a93f.jpg', 15000, 5000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(3, 'Pantai Batukaras', 'Kabupaten Tasikmalaya', 'panati batukaras merupakan pantai yang terletak di Desa Batu karas, Kecamatan cijulang, Kabupaten Pangandaran. Tidak hanya menawarkan keindahan pantai saja, tetapi berbagai atraksi wisata mulai dari surfing, berenang, hutan mangrove, restoran terapung, kafe, mancing, hotel, vila, home stay dan berbagai fasilitas wisata lainnya lengkap di objek wisata ini.', 'https://wisatabaru.com/wp-content/uploads/2017/10/Pantai-Batu-Karas-di-Ciamis.jpg', 10000, 5000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(4, 'Gunung Galunggung', 'Kabupaten Tasikmalaya', 'Gunung Galunggung merupakan salah satu tempat wisata favorit yang ada di Kabupaten Tasikmalaya. Gunung ini masih aktif dan memiliki ketinggian 2.167 meter di atas permukaan laut (mdpl), sehingga pengunjung dapat merasakan udara yang sangat sejuk. Banyak keindahan yang dapat ditemukan di Gunung Galunggung, seperti Kawah Hijau, pemandian air panas, gardu pandang, sampai Curug Agung yang penuh warna.', 'https://kabaralam.com/img/2020/999/d355f7d1-0c2e-4868-aefd-522e9a0fd3c4.jpg', 10000, 5000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(5, 'Situ Gede', 'Kota Tasikmalaya', 'Situ Gede merupakan kawasan danau yang telah berdiri sejak zaman kolonial Belanda dengan menyajikan keindahan pemandangan alam, sehingga menarik banyak wisatawan. Di tengah danau, terdapat pulau dengan luas mencapai 1 hektar. Konon, di sana terdapat tiga makam yang juga menjadi asal-usul Situ Gede.\r\n\r\nArtikel ini telah tayang di Kompas.com dengan judul \"25 Wisata Tasikmalaya, Pas Dikunjungi Saat Libur Panjang\", Klik untuk baca: https://travel.kompas.com/read/2020/10/24/165141327/25-wisata-tasikmalaya-pas-dikunjungi-saat-libur-panjang?page=all.\r\nPenulis : Lenny Septiani\r\nEditor : Anggara Wikan Prasetya\r\n\r\nDownload aplikasi Kompas.com untuk akses berita lebih mudah dan cepat:\r\nAndroid: https://bit.ly/3g85pkA\r\niOS: https://apple.co/3hXWJ0L', 'https://asset.kompas.com/crops/LOHvdFqjngDOa291rvyD8OnStFs=/0x0:1000x667/750x500/data/photo/2020/08/18/5f3b8e1fa6086.jpg', 10000, 5000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(6, 'curug ci koja', 'Kabupaten Tasikmalaya', ' Curug Koja yang terletak di kampung Citamiang, Desa Linggalaksana, Kecamatan Cikatomas, Kabupaten Tasikmalaya. Selain menawarkan keindahan alam serta ketenangan dari hiruk pikuk perkotaan, Curug Cikoja juga aman untuk berenang.\r\n\r\nRute menuju Curug Koja yang letaknya paling hilir di Kecamatan Cikatomas ini bukan perkara mudah. Jika dari arah Kota Tasikmalaya, Anda harus berkendara menyusuri wilayah selatan melewati Kecamatan Sukaraja. Setelah melewati Masjid Al-Askari Sukaraja, Anda melanjutkan dengan mengambil arah kiri menuju wilayah Kecamatan Cikatomas. ', 'https://res.cloudinary.com/dansprogramming/image/upload/c_scale,w_550/v1625641343/AYOMEDIA/Air-Terjun-Dan-Curug-Di-Tasikmalaya.jpg', 12000, 6000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(7, 'Alun Alun Tasikmalaya', 'Kota Tasikmalaya', 'Tempat yang harus dikunjungi saat berlibur ke Tasikmalaya adalah Alun-alun Tasikmalaya terletak di Jalan Otto Iskandardinata, Empangsari, Tawang, Tasikmalaya. Alun-Alun ini dilengkapi tugu yang menjadi daya tarik tersendiri, yaitu Tugu Mak Eroh dan Abdul Rozak untuk mengenang jasanya bagi lingkungan hidup di Tasikmalaya.', 'https://asset.kompas.com/crops/sMOpErqzerE2glA_wdek5hpdOiM=/0x408:1080x1128/750x500/data/photo/2020/10/22/5f9146d0d546c.jpg', 10000, 5000, 'https://www.youtube.com/embed/nNxAwvg7Q04'),
(8, 'Cireong', 'Kabupaten Tasikmalaya', 'Sungai Cireong Ciamis adalah Wisata alam sungai jernih dan segar yang alami. Airnya mengalir langsung dari Gunung Sawal Ciamis. Kita tinggal  pilih-pilih mana buat main air. Kalau mau agak dalam mesti jalan dulu sedikit ke atas dekat jembatan bambu Cireong di Dusun Cireong, Desa Sukaresik, Kecamatan Sindangkasih, Kabupaten Ciamis, Jawa Barat. Dari Kota Tasikmalaya dekat aja kok, lewat perbatasan Tasik-Ciamis sedikit, bisa lewat Cikoneng.', 'https://i0.wp.com/ariefpokto.com/wp-content/uploads/2018/04/Screenshot_2018-04-10-12-11-35_1523337514284.jpg?w=720&ssl=1', 8000, 4000, 'https://www.youtube.com/embed/nNxAwvg7Q04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`pk_login_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`pk_transaksi_id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`wisata_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `pk_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `pk_transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `wisata_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
