-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Des 2022 pada 11.45
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mockup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `best_seller`
--

CREATE TABLE `best_seller` (
  `id` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `price` int(25) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `rating` double NOT NULL,
  `totalRater` int(25) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `best_seller`
--

INSERT INTO `best_seller` (`id`, `course_Id`, `price`, `fullname`, `thumbnail`, `rating`, `totalRater`, `teacher`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 3, 500000, 'Memulai Usaha Meracik Bumbu Dasar Aneka Olahan Nasi Menjadi Masakan Utuh Untuk Penjual Makanan', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/Thumbnail-Nasi_Goreng_-_Pijar_Mahir.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528475', 5, 193, 'Let\'s Bake n Cook', 1, '0000-00-00 00:00:00', '2022-12-20 17:39:26'),
(2, 4, 500000, 'Membuat Aneka Pizza bagi Pembuat Roti', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/Mengkombinasikan-bahan_pizza_bagi_pembuat_roti.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528746', 4.7, 1878, 'Baking World', 3, '0000-00-00 00:00:00', '2022-12-20 17:40:03'),
(3, 4, 250000, 'Belajar Mengelola Usaha Budi Daya Jamur untuk Calon Pengusaha Jamur', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/PijarMahir_343x179.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528520', 4.6, 241, 'Cakap -', 1, '0000-00-00 00:00:00', '2022-12-20 17:40:24'),
(4, 5, 550000, 'Belajar Ethical Hacking dan Mengatasi Peretasan IT bagi Cyber Security Specialist, Pentester dan Whi', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/Belajar-Ethical_Hacking_dan_Mengatasi_Peretasan_IT_bagi_Cyber_Security_Specialist__Pentester_dan_White_Hat_Hacker.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528656', 4.7, 354, 'CourseNet -', 3, '0000-00-00 00:00:00', '2022-12-20 17:40:39'),
(5, 5, 500000, 'Membuat Konten Video Pendek bagi Calon Seniman Digita', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/PDP-VOKRAF-SVCC-_Pijar-mahir-343x179_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528094', 4.5, 18, 'Vokraf .', 1, '0000-00-00 00:00:00', '2022-12-20 17:40:56'),
(6, 5, 497000, 'Promosi Bisnis Melalui Facebook Ads & Instagram for Business untuk Menjadi Pengusaha di Bidang Perda', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/PM-PRA-DMI--001.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528318', 4.8, 1162, 'Digital Marketist Indonesia', 4, '0000-00-00 00:00:00', '2022-12-20 17:41:30'),
(7, 5, 500000, 'Belajar Membuat Berbagai Macam Variasi Brownies', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/PM-PRA-IBJ-001.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528653', 5, 2, 'INGIN BELAJAR', 5, '0000-00-00 00:00:00', '2022-12-20 17:41:55'),
(8, 5, 400000, 'Belajar Merias Wajah Pengantin dengan Konsep Modern Internasional Bagi Penata Rias', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/PM-PRA-CRI-028.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528788', 4.8, 130, 'Cariilmu -', 5, '0000-00-00 00:00:00', '2022-12-20 17:38:43'),
(9, 4, 350000, 'Menjadi Perencana Keuangan Pribadi, Keluarga dan Profesional', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/BestSeller/PM-PRA-JFC-019.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671531528636', 5, 3, 'JFC Plus', 1, '0000-00-00 00:00:00', '2022-12-20 17:42:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `categoryname`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Kartu Prakerja', 'Untuk mempersiapkan diri memasuki dunia kerja', '2022-12-10 22:02:27', '2022-12-10 22:02:27'),
(2, 'Mahir Teknologi', 'Untuk belajar teknologi terbaru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Mahir Digital', 'Untuk belajar berbagai aspek digital', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Mahir Marketing', 'Untuk belajar berbagai ilmu marketing', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Pengembangan Diri', 'Untuk belajar cara mengembangkan diri agar lebih baik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Mahir Bahasa', 'Untuk belajar bahasa baru', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'UMKM', 'Materi  bimbingan mengenai UMKM', '2022-12-15 07:58:20', '2022-12-15 07:58:20'),
(8, 'Mahir Telekomunikasi', 'Belajar serba serbi telekomunikasi', '2022-12-15 07:58:20', '2022-12-15 07:58:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `collection`
--

CREATE TABLE `collection` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `numOrder` int(10) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `collection`
--

INSERT INTO `collection` (`id`, `name`, `type`, `numOrder`, `created_at`, `updated_at`) VALUES
(1, 'Kartu Prakerja', 'default', 1, '2022-12-15 02:14:58', '2022-12-15 02:14:58'),
(2, 'Flash Sale', 'sale', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Mahir Prakerja 2022', 'default', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Best Seller', 'default', 4, '2022-12-15 07:59:59', '2022-12-15 07:59:59'),
(5, 'Siap Jadi Talenta Digital Terbaik!', 'default', 5, '2022-12-15 07:59:59', '2022-12-15 07:59:59'),
(6, 'Pilihan Terbaik Untuk Kamu', 'default', 6, '2022-12-15 08:00:21', '2022-12-15 08:00:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `coursetype` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `duration` varchar(10) NOT NULL,
  `price` int(25) NOT NULL,
  `rating` int(25) NOT NULL,
  `totalrater` int(25) NOT NULL,
  `summary` longtext NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `enrolledusers` int(25) NOT NULL,
  `tag` varchar(15) NOT NULL,
  `whislisted` varchar(10) NOT NULL,
  `owned` varchar(10) NOT NULL,
  `classStatus` varchar(10) NOT NULL,
  `thumbnail` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `course`
--

INSERT INTO `course` (`id`, `category_id`, `category_name`, `coursetype`, `fullname`, `duration`, `price`, `rating`, `totalrater`, `summary`, `teacher`, `enrolledusers`, `tag`, `whislisted`, `owned`, `classStatus`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 1, 'kartu-prakerja', 'Pembelajaran Mandiri', 'Membuat Film Pendek Bagi Calon Sutradara', '365 menit', 500000, 5, 4, '<p></p><p><span><b>Deskripsi Pelatihan<br></b></span></p><p>Pelatihan ini ditujukan untuk calon sutradara agar mampu membuat film pendek yang baik. Industri film semakin berkembang seiring berjalannya waktu, salah satunya adalah produksi film pendek. Hal ini didukung dari munculnya banyak platform streaming video yang memberikan layar alternatif untuk menayangkan film-film pendek. Perkembangan ini juga terjadi karena adanya berbagai kompetisi produksi film pendek yang disponsori oleh berbagai pihak, dari pemerintah maupun swasta.&nbsp;<br></p><p>Hal ini menjadikan profesi sutradara sebagai peluang yang menjanjikan, karena tidak hanya dibutuhkan di industri perfilman, tetapi juga di industri lainnya, seperti periklanan. Selain itu, dengan mulai berkarya lewat film pendek, kesempatan untuk memproduksi film layar lebar akan terbuka lebar.</p><p></p><p>urgensi pelatihan ini muncul karena melihat banyaknya sutradara yang tidak memahami tata cara produksi film pendek karena tidak melewati pembelajaran formal tentang produksi film. Maka dari itu penting bagi calon sutradara untuk mempelajari tata cara produksi film pendek mulai dari tahap pra-produksi, produksi, hingga pasca-produksi agar tercipta sutradara film pendek yang berkompetensi di industri film.</p><p>Di pelatihan ini, peserta akan menguasai empat aspek kompetensi utama, yaitu:</p><p>menginterpretasi tahapan pembuatan film pendek, mendeskripsikan triangle above system, merencanakan pembuatan film pendek, dan mempelajari sikap profesional saat menjalani profesi sebagai sutradara film pendek.</p><p>Pelatihan ini merujuk pada kbji 2014 dengan kode 2654.03. Pelatihan ini memiliki sesi konsultasi yang dilaksanakan setiap hari Rabu, pukul 15.00 - 16.00 WIB bersama expert Brandon Hetarie, dengan kapasitas maksimum 1000 orang. Peserta dapat menyampaikan keluhan melalui email cs@vokraf.com ataupun melalui WhatsApp ke +62 812-8330-7269.<br></p><p><br></p><p></p><p><span><span><span><b>Tujuan Umum Pelatihan</b><br></span></span></span></p><p>Setelah mengikuti pelatihan, peserta dapat merencanakan pembuatan film pendek yang berkualitas dan mengenali peran sutradara sesuai dengan tahapan pembuatan film pendek yang baik, mulai dari pra-produksi, produksi sampai pasca-produksi dengan mengacu pada kompetensi yang tertera di KBJI 2014 dengan kode 2654.03.<br></p><p><br></p><p><span><span><span><b>Tujuan Khusus Pelatihan<br></b></span></span></span></p><p>1. Peserta mampu menyimpulkan peran sutradara dalam pembuatan film pendek;</p><p></p><p>2. Peserta mampu mengkonstruksi tahapan pembuatan film pendek: pra-produksi, produksi, dan pasca-produksi;</p><p>3, Peserta mampu merencanakan pembuatan film pendek;</p><p>4. Peserta mampu mempelajari peran sutradara.</p><p><br></p><p></p><p><b><span><span>Aspek Kompetensi:&nbsp;</span></span><span><span>Pengetahuan&nbsp;</span><span><span>(Knowledge)<br></span></span></span></b></p><p></p><p>1. Pengetahuan: Mengenali Profesi Sutradara<br></p><p>2. Pengetahuan: Mengenali Sejarah dan Perkembangan Film<br></p><p>3. Pengetahuan: Mengenali Perkembangan Film di Indonesia<br></p><p><br></p><p><span><span><b>Aspek Kompetensi: Keterampilan (Skill)</b></span></span></p><p><p><span><span>1.&nbsp;</span></span><span>Keterampilan : Menggunakan tools-tools dasar&nbsp;</span><span>pada software Photoshop</span></p><p><span>2.&nbsp;</span>Keterampilan : Menggunakan tools-tools dasar&nbsp;<span>pada software Illustrator</span></p><p><span><span>3.&nbsp;</span></span>Keterampilan : Membuat Logo dan Brand&nbsp;<span>Identity</span></p><p><br></p></p><p><span><span><b>Aspek Kompetensi:&nbsp;</b></span></span><span><span><b>Sikap (Attitude)</b></span></span></p><p><span><span><span><p style=\"\">1. Sikap: Menampilkan Sikap Koordinatif dan Manajerial dalam Menjadi Sutradara<br></p><p style=\"\">2. Sikap: Menunjukkan Sikap Peka Terhadap Seni sebagai Seorang Sutradara<br></p><p style=\"\">3. Sikap: Mempelajari Cara Menghadapi Kritik dan Review</p></span></span></span></p><p><br></p><p></p><p><span><b>Kelompok Sasaran</b></span></p><p>1. Pria dan wanita dengan rentang usia 18 - 35 tahun;</p><p>2. Pelatihan ini dapat diikuti oleh peserta yang tidak buta huruf;</p><p>3. Pelatihan dapat diikuti oleh peserta dengan jenjang pendidikan minimal SMA dan sederajat;</p><p>4. Tingkat kesulitan pelatihan ini adalah tingkat dasar;</p><p>5. Peserta yang ingin mempelajari pembuatan film pendek;</p><p>6. Peserta yang memiliki minat menjadi sutradara;</p><p>7. Peserta memiliki akses untuk menggunakan tools Microsoft Word untuk penulisan skrip;</p><p>8. Pelatihan ini dapat diikuti oleh peserta yang belum pernah membuat film pendek sebelumnya.</p><p><br></p><p><span><span><b>Durasi Per Sesi</b></span></span></p><p>Topik 1 : Membuat Film Pendek Bagi Calon Sutradara 123 menit<br></p><p>Topik 2 : Langkah-Langkah Pembuatan Film Pendek 162 menit<br></p><p>Topik 3 : Distribusi Film Pendek 80 menit<br></p><p><br></p><p><span><span><b>Total Durasi</b></span></span></p><p><span>365 Menit</span></p><p><span><br><b>Kapasitas Peserta</b></span></p><p><span>Unlimited</span></p><p><span><br><span><b>Level Pelatihan</b></span></span></p><p><span>Basic / Tingkat dasar</span></p><p><b><br></b></p><p><b>Metode Pembelajaran</b></p><p><span><span><span><span>Self paced learning : Metode ajar yang digunakan adalah ceramah interaktif roleplay dan bahan bacaan dengan penugasan praktek</span></span></span></span></p><p><span><span><span><span><span><br><b>Metode Evaluasi</b></span></span></span></span></span></p><p><span><span>1. Pre Test<br></span><span>2. Post Test<br></span><span>3. Formative Test<br></span><span>4. Tugas Praktik</span></span></p><p><span><span><span><br><b>Jenis/Klasifikasi Sertifikat</b></span></span></span></p><p><span><span>Sertifikat Penyelesaian, Sertifikat Kompetensi Lulus</span><br></span></p><p><span><span><b><br></b></span></span></p><p><span><span><b>Jadwal Mingguan Konsultasi dengan Pelatih</b></span></span></p><p>Rabu, 15.00 - 16.00 WIB<br></p><p><br></p><p><span><span><b>Profil Pengajar</b></span></span></p><p>Nama : Brandon Hetarie</p><p></p><p>Rangkuman Profil Tenaga Pelatih: Brandon Hetarie atau akrab dipanggil Brandon, adalah Creative Director di Cinemajestic Pictures sejak tahun 2019. Berkecimpung pada dunia Kreatif, sebagai Creative Director Brandon memiliki tanggung jawab atas proses kreatif dari penyusunan ide video, pembuatan deck presentasi kreatif, presentasi deck kreatif, menjadi sutradara dalam produksi video dan supervisi proses pasca-produksi.</p><p><br></p><p><b>Panduan Redeem Voucher Lembaga Vokraf</b></p><p></p><p>1. Di website Pijar Mahir (<a href=\"https://pijarmahir.id/\">https://pijarmahir.id/</a>), klik menu profil (nama anda) pada pojok kanan atas kemudian klik menu Voucher Saya dan klik Salin Kode (atau catat kode voucher secara manual)</p><p>2. Buka vokraf.com &nbsp;</p><p>3. Di tab paling atas terdapat tulisan “Anda Peserta Kartu Prakerja?” klik \"Tukar Voucher\"</p><p>4. Lanjutkan dengan Masuk (untuk yang sudah memiliki akun Vokraf) atau lanjutkan dengan Daftar dan mengisi formulir pendaftaran di form yang tersedia (untuk yang baru membuat akun Vokraf)</p><p>5. Masukkan Kode Voucher di kolom yang tersedia, lalu klik \"Tukar\"</p><p>6. Klik \"Beli Kelas\"</p><p>7. Klik \"Mulai Belajar\"</p><p>8. Pelatihanmu sudah bisa dimulai!</p><p>&nbsp;</p><p><b>Kontak Lembaga Vokraf</b></p><p>Email: cs@vokraf.com<b></b></p><p>+62 812-8330-7269 (cs Vokraf)</p><br><p></p>', 'Vokraf .', 9, 'paid', 'false', 'false', 'available', 'course/PDP-VOKRAF-SFP-(Pijar-mahir-343x179).png', '0000-00-00 00:00:00', '2022-12-20 14:42:39'),
(2, 1, 'Kartu Prakerja', 'Webinar', 'Membuat Presentasi dengan Microsoft Power Point bagi Staf Administrasi (Webinar)', '360 menit', 450000, 5, 2, '<p><span><b>Deskripsi Pelatihan</b><br><span>Mempersiapkan pembuatan presentasi sebagai staf administrasi. Pelatihan Microsoft PowerPoint ini membahas mengenai penggunaan aplikasi Microsoft Powerpoint dalam membuat multimedia untuk berbagai keperluan seperti tampilan presentasi, konten, dan penggunaan animasi. Peserta memahami manfaat dan penerapan aplikasi Microsoft Powerpoint, mengenal dasar-dasar Microsoft Powerpoint, mampu melakukan editing dan formatting presentation, mampu membuat multimedia dengan animasi, dan mampu mengerjakan berbagai studi kasus. Setelah menyelesaikan kelas ini, peserta mampu&nbsp; menggunakan aplikasi Microsoft Powerpoint&nbsp; untuk membuat berbagai jenis multimedia sebagai staf administrasi.</span></span></p><p><span style=\\\"\\\"><span style=\\\"\\\"><br><span style=\\\"font-size: 0.9375rem;\\\"><b>Tujuan Umum Pelatihan</b></span><br><span>Peserta dapat menggunakan aplikasi Microsoft Powerpoint untuk membuat berbagai jenis slide presentasi sebagai staf administrasi dengan tepat.</span></span></span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><span id=\\\"docs-internal-guid-b6eb58e7-7fff-5948-cf2c-5c59fac9a08b\\\" style=\\\"\\\"><br><b>Tujuan Khusus Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Mempersiapkan materi presentasi sebagai staf administrasi<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Membuat presentasi sebagai staf administrasi<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Menggunakan multimedia dalam presentasi dengan cermat dan kreatif</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Aspek Kompetensi: &nbsp;Pengetahuan&nbsp;</b></span></span><span style=\\\"font-size: 0.9375rem;\\\"><b>(Knowledge)<br></b></span><span style=\\\"font-size: 0.9375rem;\\\">1. Menggunakan aplikasi PowerPoint dalam komputer Peserta dapat memahami cara instalasi, membuka aplikasi, dan membuat slide presentasi baru pada PowerPoint&nbsp;<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Berkomunikasi Peserta dapat mengerti proses dalam pembuatan presentasi hasil slide yang sudah dibuat pada PowerPoint&nbsp;</span></p><p><span id=\\\"docs-internal-guid-b1e537a6-7fff-dad1-ec7f-f88df14b0eeb\\\" style=\\\"\\\"><br><span style=\\\"\\\"><b style=\\\"font-size: 0.9375rem;\\\">Aspek Kompetensi: &nbsp;Keterampilan (Skill)</b><br><span>Mengoperasikan komputer Peserta mampu mengoperasikan PowerPoint, serta membuat slide presentasi dengan berbagai jenis multimedia&nbsp;</span></span></span></p><p><b id=\\\"docs-internal-guid-dfea1c27-7fff-28c2-2f07-c92484247ab2\\\" style=\\\"font-size: 0.9375rem;\\\"><br>Aspek Kompetensi: &nbsp;Sikap (Attitude)<br></b><span style=\\\"font-size: 0.9375rem;\\\">1. Cermat : Peseta dapat cermat dalam membuat presentasi dan menggunakan multimedia dalam presentasi&nbsp;<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Teliti : Peserta dapat teliti dalam editing dan formating presentasi<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Kreatif : Peserta dapat kreatif dalam membuat desain slide presentasi dengan menggunakan multimedia dalam PowerPoint</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><br><b>Kelompok Sasaran<br></b></span><span style=\\\"font-size: 0.9375rem;\\\">1. Siapa saja yang ingin memahami dengan utuh dan menyeluruh segala seluk beluk mengenai aplikasi Presenting menggunakan Microsoft Powerpoint.</span></p><p><span style=\\\"font-size: 0.9375rem;\\\">2. Memiliki atau mempunyai akses terhadap komputer atau laptop dengan aplikasi Microsoft PowerPoint yang terinstal&nbsp;</span></p><p>3) Memiliki pengetahuan dasar tentang&nbsp;<span style=\\\"font-size: 0.9375rem;\\\">penggunaan aplikasi Microsoft Power Point</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"></span><span style=\\\"font-size: 0.9375rem;\\\"><span id=\\\"docs-internal-guid-b6eb58e7-7fff-5948-cf2c-5c59fac9a08b\\\" style=\\\"\\\"><span style=\\\"\\\"><br><span><b>Durasi Per Sesi</b></span></span></span></span></p><p><span>Ex : Bab Pengenalan Microsoft&nbsp;</span><span style=\\\"font-size: 0.9375rem;\\\">Power Point (Format materi:&nbsp;</span><span style=\\\"font-size: 0.9375rem;\\\">video webinar)</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><span style=\\\"\\\"><span style=\\\"\\\"><span><b></b></span></span></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Pengenalan Microsoft PowerPoint 30 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Dasar-Dasar Microsoft PowerPoint 60 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Editing dan Formatting Presentation 90 menit</span></p><p>Ex: Bab Pelatihan Mengenal&nbsp;<span style=\\\"font-size: 0.9375rem;\\\">multimedia dan tools (Format&nbsp;</span><span style=\\\"font-size: 0.9375rem;\\\">materi: video webinar)</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"></span><span style=\\\"font-size: 0.9375rem;\\\">4. Bekerja dengan Multimedia 120 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">5. Sharing Presentasi 60 menit</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Total Durasi<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">360 Menit</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Kapasitas Peserta<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">500 Peserta</span></p><p><b style=\\\"font-size: 0.9375rem;\\\"><br>Jadwal Mingguan&nbsp;</b><b style=\\\"font-size: 0.9375rem;\\\">Konsultasi dengan&nbsp;</b><span style=\\\"font-size: 0.9375rem;\\\"><b>Tenaga Pelatih<br></b></span><span style=\\\"\\\"><span style=\\\"font-size: 0.9375rem;\\\">Kamis 10.00-11.00</span></span></p><p><span style=\\\"\\\"><br><b>Jadwal Webinar<br></b>Senin, Rabu, 19.00 – 22.00</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><span id=\\\"docs-internal-guid-97ebc4a7-7fff-8b94-fc69-3ece83f5ffbc\\\" style=\\\"\\\"><span style=\\\"\\\"><span style=\\\"\\\"><br><span><span><b>Level Pelatihan&nbsp;<br></b></span></span></span></span></span></span><span style=\\\"font-size: 0.9375rem;\\\">Basic / Tingkat Dasar</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><span style=\\\"\\\"><span style=\\\"\\\"><span style=\\\"\\\"><br></span></span></span></span></p><p><b>Metode Pembelajaran</b></p><p>Webinar: Metode ajar yang digunakan adalah ceramah interaktif peragaan dan penugasan</p><p><b><br></b></p><p><b>Metode Evaluasi&nbsp;</b></p><p>1. Pre Test</p><p>2. Post Test</p><p>3. Formative Test</p><p>4. Tugas Praktik</p><p><br></p><p><b>Jenis/Klasifikasi Sertifikat</b>&nbsp;</p><p>Sertifikat Penyelesaian, Sertifikat Kompetensi Lulus</p><p><span style=\\\"font-size: 0.9375rem;\\\"><span style=\\\"\\\"><span style=\\\"\\\"><span style=\\\"\\\"><span><b><br></b></span></span></span></span></span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><span id=\\\"docs-internal-guid-97ebc4a7-7fff-8b94-fc69-3ece83f5ffbc\\\" style=\\\"\\\"><span style=\\\"\\\"><span style=\\\"\\\"><span><b>Profil Pengajar<br></b></span></span></span></span></span><span style=\\\"font-size: 0.9375rem;\\\">Adriani Dewi Hutami<br></span><span style=\\\"font-size: 0.9375rem;\\\">Sebagai Pegawai di salah satu Perguruan Tinggi di Bandung yang mengelola tugas dan tanggungjawab di bidang Administrasi baik bidang Akademik, Keuangan, Kemahasiswaan, Kerja Sama. Dan saat ini saya dipercayauntuk bertanggungjawab dalam mengelola keseluruhan opersaional kegiatan Program Studi sebagai Manajer Operasional. Saya telah memiliki pengalaman mengajar pada Mata Kuliah Pemasaran, Mata Kuliah Kewirausahaan dan Mata Kuliah Sistem Informasi Manajemen (SIM).</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Panduan Redeem Voucher</b></span></span></p><p>1. Di website Pijar Mahir (https://pijarmahir.id/), klik menu profil (nama anda) pada&nbsp;<span style=\\\"font-size: 0.9375rem;\\\">pojok kanan atas kemudian klik menu Voucher Saya dan klik Salin Kode (atau catat&nbsp;</span><span style=\\\"font-size: 0.9375rem;\\\">kode voucher secara manual)</span></p><p>2. Masuk ke halaman www.hicolleagues.com</p><p>3. Pilih menu kelas lalu pilih bagian menu prakerja</p><p>4. Setelah itu pilih kelas yang sudah kamu beli sebelumnya</p><p>5. Isi data-data dan salin salin kode voucher lalu terapkan</p><p>6. Kemudian klik \'Tukarkan Voucher\'</p><p>7. Sistem akan mengirimkan email verifikasi data lalu klik verifikasi pada email.</p><p>8. Setelah itu, akan diarahkan ke www.hicolleagues.com/login.</p><p></p><p>9. Masukkan email dan password pada saat menukarkan voucher di HiColleagues.</p><p style=\\\"\\\"><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Kontak Lembaga Pelatihan<br></b></span></span></p><p>Email: hello@hicolleagues.com dan&nbsp;<span style=\\\"font-size: 0.9375rem;\\\">prakerja@hicolleagues.com</span></p><p>WA: 082127274632</p><br><p></p>', 'Hi Colleagues', 2, 'paid', 'false', 'false', 'available', 'course/Power-Point.png', '2022-12-15 07:42:13', '2022-12-15 07:42:13'),
(3, 3, 'Mahir Digital', 'Pembelajaran Mandiri', 'Dasar Pembuatan Desain Iklan', '4 Jam', 300000, 5, 24, '<p></p><p></p><p><b>Deskripsi Singkat Pelatihan</b></p>\\r\\n\\r\\n<p>Pelatihan akan dilaksanakan di platform Pijar Mahir dalam bentuk\\r\\npembelajaran online dan akan disediakan sertifikat di akhir pelatihan. Pelatihan\\r\\nini terdiri dari 4 bab dan akan menjelaskan tentang Dasar Pembuatan Desain\\r\\nIklan. Dengan selesai mempelajari materi ini, peserta pemula yang ingin membuat\\r\\ndesain iklan, dapat memulai dengan membuat desain iklan untuk memasarkan\\r\\nproduk, agar produk bisa dikenal lebih luas oleh masyarakat dan dapat meningkatkan\\r\\nangka penjualan produk. Pada pelatihan ini, akan ada pretest dan postest untuk\\r\\nAnda menguji kemampuan Anda Sebelum dan sesudah pelatihan.</p><p>\\r\\n<b>Tujuan Pelatihan <br>\\r\\n</b></p><span id=\\\"docs-internal-guid-3407d960-7fff-c700-727a-d7635365392e\\\"><p dir=\\\"ltr\\\" style=\\\"\\\">Tujuan Umum : Pelatihan ini bertujuan agar Anda dapat membuat desain iklan secara mandiri, sehingga pemasaran dan angka penjualan produk yang Anda iklankan dapat menjadi efektif dan meningkat.</p><p dir=\\\"ltr\\\" style=\\\"\\\">Tujuan Khusus :&nbsp;</p><ul style=\\\"\\\"><li dir=\\\"ltr\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" role=\\\"presentation\\\">Mampu membuat Iklan</p></li><li dir=\\\"ltr\\\" aria-level=\\\"1\\\"><p dir=\\\"ltr\\\" role=\\\"presentation\\\">Menguasai cara mendesign iklan secara mandiri</p></li></ul></span><p><b>\\r\\nTarget Peserta<br>\\r\\n</b>Siapa saja yang memiliki\\r\\nketertarikan dalam pembuatan desain iklan, khususnya para pemilik produk/jasa\\r\\nyang ingin memasarkan produk/jasanya.</p>\\r\\n\\r\\n<p><b>Fasilitas Pelatihan<br>\\r\\n</b>Konten Video Digital<br>\\r\\nTes Awal<br>\\r\\nTes Akhir<br>\\r\\nMateri Pembelajaran Mandiri<br>\\r\\nSertifikat Penyelesaian Pelatihan</p>\\r\\n\\r\\n<p><b>Durasi<br>\\r\\n</b>± 4 jam</p>\\r\\n\\r\\n<p><b>Instruktur<br>\\r\\n</b>Raden Riski Ramadhan\\r\\nAris</p>\\r\\n\\r\\n<p>Pendidikan: Sarjana Design and Visual Art – Institut Teknologi\\r\\nNasional<br>\\r\\n&nbsp;<br>\\r\\n&nbsp;1. Gitaris dan Vokalis – Band Hoolahoop<br>\\r\\n&nbsp;2. Marketing and Content Creator –\\r\\nCollars Barber </p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p>&nbsp;</p><p><br></p>', 'Pijar Mahir', 105, 'paid', 'false', 'false', 'available', 'course/7.-Dasar pembuatan desain iklan.jpg', '2022-12-15 07:42:13', '2022-12-15 07:42:13'),
(4, 1, 'Kartu Prakerja', 'Pembelajaran Mandiri', 'Merancang Usaha Kuliner Menjadi Kedai Makanan', '367 menit', 650000, 5, 128, '<p><span><span><span><span><span><span><span><b>Deskripsi Pelatihan<br></b></span></span></span></span></span></span></span><span style=\\\"font-size: 0.9375rem;\\\"><span><span><span>Pelatihan ini akan mengajarkan tentang salah satu jenis usaha bisnis kuliner diperuntukkan kepada peserta yang memiliki rencana berwirausaha. Pelatihan ini akan focus pada kedai makanan dengan menu utama ayam goreng crispy dan beberapa makanan lain serta minuman yang bervariasi. Menurut KBLI 56103 (Kedai Makanan), jenis usaha ini&nbsp;</span></span></span></span><span style=\\\"font-size: 0.9375rem;\\\">mencakup usaha jasa pangan yang menjual dan menyajikan makanan siap dikonsumsi yang didahului dengan proses pembuatan ditempat tetap yang dapat dipindah-pindahkan atau dibongkar pasang. Pada umumnya bahwa dalam membuka kedai ini akan memberikan peluang yang cerah, dikarenakan kebutuhan akan pangan yaitu makanan siap konsumsi selalu meningkat sampai saat ini. Berbisnis kuliner akan memberikan keuntungan yang besar terutama di era digital ini.<br></span><span style=\\\"font-size: 0.9375rem;\\\">Melalui pelatihan ini peserta akan diajarkan bagaimana membangun konsep diri serta mindset dalam memulai berwirausaha, persiapan aspek permodalan, perkembangan dan perencanaan usaha sesuai metode Business Model Canvas hingga mampu melakukan perhitungan dan evaluasi pada produk usaha di kedai dengan benar.<br></span><span style=\\\"font-size: 0.9375rem;\\\">Kompetensi atau okupasi yang akan di jelaskan adalah strategi dari awal usaha yang akan memberikan hasil yang lebih baik hingga evaluasi dalam menjalani wirausaha kedai makanan. Kemudian akan menjelaskan bagaimana strategi pembelajaran dengan mindset wirausaha contohnya bagaimana mengatur sumber daya keuangan hingga mempersiapkan peralatan lainnya. Maka sebagai wirausaha harus dapat membangun diri dengan sikap yang positif untuk menghadapi tantangan-tantangan yang ada dalam wirausaha kuliner ini.<br></span><span style=\\\"font-size: 0.9375rem;\\\">Berdasarkan keadaan dan peluang yang ada, sebagai wirausaha akan memanfaatkan perkembangan era digital selain membuka kedai secara offline mampu membuka bisnis kuliner secara online dengan bekerjasama marketplace seperti go food dan grab food. Urgensi dari usaha kedai makanan adalah usaha jasa pangan yang menyajikan makanan siap dikonsumsi yang melalui proses&nbsp;pembuatan di tempat tetap dan harus memiliki strategi usaha untuk kedai makanan bisa terus berkembang. Dalam berwirausaha melalui kedai makananan tidak memandang latar belakang pendidikan tetapi dengan pengetahuan yang dimiliki dalam wirausaha semua akan berjalan dengan baik.<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Tujuan Umum Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Peserta dapat membuat perencanaan dan perancangan usaha kedai makanan sesuai permintaan pasar dengan minimal sebanyak 4 produk secara benar<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Tujuan Khusus Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Peserta dapat mempelajari dalam mempersiapkan aspek modal dalam berwirausaha<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Peserta dapat memahami tahapan perkembangan usaha dan perencanaan usaha<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Peserta mampu mempersiapkan menu, tempat, peralatan dan bahan baku yang diperlukan dalam Kedai<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Peserta mampu membuat jalur distribusi online dan offline<br></span><span style=\\\"font-size: 0.9375rem;\\\">5. Peserta mampu melakukan monitoring dan evaluasi pada kedai<br></span><span style=\\\"font-size: 0.9375rem;\\\">6. Peserta dapat membangun konsep diri serta mindset<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Aspek Kompetensi:&nbsp;Pengetahuan&nbsp;(Knowledge)<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Peserta dapat mempelajari dalam mempersiapkan aspek modal dalam berwirausaha<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Peserta dapat memahami tahapan perkembangan usaha dan perencanaan usaha<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Aspek Kompetensi: Keterampilan (Skill)<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Peserta mampu mempersiapkan menu, tempat, peralatan dan bahan baku yang diperlukan dalam Kedai<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Peserta mampu membuat jalur distribusi online dan offline<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Peserta mampu melakukan monitoring dan evaluasi pada kedai<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Aspek Kompetensi:&nbsp;Sikap (Attitude)<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Peserta dapat membangun konsep diri serta mindset dalam memulai berwirausaha<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><b>Kelompok Sasaran<br></b></span><span style=\\\"font-size: 0.9375rem;\\\">1. Pendidikan tingkat SMA hingga Sarjana<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Memiliki pengetahuan tentang wirausaha<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Seseorang yang ingin memulai usaha<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Memiliki gadget dengan aplikasi Gojek dan Grab<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Durasi Per Sesi<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 1: Mindset Tepat Memulai Wirausaha 49 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 2: Mempersiapkan Aspek Permodalan 20 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 3: Tahapan Perkembangan Usaha dan Perencanaan Usaha 110 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 4: Mempersiapkan Menu, Tempat, Peralatan, dan Bahan Baku 48 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 5: Mempersiapkan Menu yang ditawarkan serta Kedai yang Lebih Besar 90 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 6: Membuat Jalur Distribusi Online dan Offline 20 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 7: Monitoring dan Evaluasi 30 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Total Durasi<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">367 menit<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Kapasitas Peserta<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Unlimited<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Jadwal Mingguan Konsultasi dengan Tenaga Pelatih<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Hari Senin Jam 15.00 WIB durasi 1 jam.<br></span><span style=\\\"font-size: 0.9375rem;\\\">Deskripsi konsultasi:<br></span><span style=\\\"font-size: 0.9375rem;\\\">Sesi Konsultasi dengan Fasilitator (Wendy Isnandar) untuk membahas diskusi tanya jawab mengenai pelatihan Merancang Usaha Kuliner Menjadi Kedai Makanan setiap hari Senin pukul 15:00 WIB durasi 1 jam.<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Level Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Basic / Tingkat Dasar<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Metode Pembelajaran<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Self paced learning : Metode ajar yang digunakan adalah ceramah interaktif roleplay dan bahan bacaan dengan penugasan praktek<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Metode Evaluasi<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Pre Test<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Post Test<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Formative Test<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Tugas Praktik<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Jenis/Klasifikasi Sertifikat<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Sertifikat Penyelesaian, Sertifikat Kompetensi Lulus<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Profil Pengajar<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Wendy Isnandar<br></span><span style=\\\"font-size: 0.9375rem;\\\">Memiliki latar belakang Pendidikan terakhir yaitu Pascasarjana di London Metropolitan University dengan memperoleh gelar Master of Science (MSc) in International Banking &amp; Finance. Beliau memiliki pengalaman selama 20 tahun di dunia Perbankan dan Investasi, berkarir di Bank Mandiri dan pernah menduduki Jabatan tertinggi di Perusahaan selama 5 Tahun sebagai Direksi di PT. Mandiri Manajemen Investasi yaitu anak Perusahaan Bank BUMN PT. Bank Mandiri (Persero) Tbk. Sejak Tahun 2015 Wendy Isnandar serius Berwirausaha dan saat ini dengan Pengalaman yang Wendy Isnandar miliki beliau sukses dibeberapa bidang Bisnis yaitu Konveksi dengan Brand (De Cantiqu Hijab®, PH Hijab®) lalu Kuliner (Wakwaw fried chicken®, Wekaka food corner®, Ulam Tirta Resto &amp; Rest Area Yogyakarta®), dan Akomodasi (Rumah Prima®, PT. Sinergi Alam Indonesia)<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Panduan Redeem Voucher<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Log in ke&nbsp;</span><a href=\\\"https://prakerja.karier.mu/\\\" style=\\\"background-color: rgb(255, 255, 255); font-size: 0.9375rem;\\\">https://prakerja.karier.mu/</a><br><span style=\\\"font-size: 0.9375rem;\\\">2. Klik \\\"tukarkan kode voucher\\\" atau masuk ke&nbsp;</span><a href=\\\"https://www.prakerja.karier.mu/tukar-voucher\\\" style=\\\"background-color: rgb(255, 255, 255); font-size: 0.9375rem;\\\">https://www.prakerja.karier.mu/tukar-voucher</a><br><span style=\\\"font-size: 0.9375rem;\\\">3. Masukkan kode voucher pada kolom yang tersedia&nbsp;<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Klik “Tukar Kode Voucher\\\"&nbsp;<br></span><span style=\\\"font-size: 0.9375rem;\\\">5. Klik “Mulai Belajar” dan program yang dibeli dapat dilihat juga pada menu “Programmu”<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Kontak Lembaga Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">WhatsApp: +6282262116553</span></p>', 'JFC Plus', 137, 'paid', 'false', 'false', 'available', 'course/Power-Point.png', '2022-12-15 07:50:27', '2022-12-15 07:50:27'),
(5, 1, 'Kartu Prakerja', 'Pembelajaran Mandiri', 'Membuat Aneka Roti Milo bagi Pembuat Roti', '360 menit', 500000, 5, 3062, '<p></p><p><b></b></p><p><b>Deskripsi Pelatihan</b></p>\\r\\n\\r\\n<p>Pelatihan ini akan\\r\\nmelatih peserta untuk&nbsp;<span>menguasai kompetensi dalam membuat aneka&nbsp;</span><span>roti milo. Peserta akan dilatih untuk\\r\\nmemiliki&nbsp;</span><span>pengetahuan, ketrampilan dan sikap dalam&nbsp;</span><span>proses memilih dan menilai kualitas bahan,&nbsp;</span><span>mengkombinasikan bahan untuk membuat&nbsp;</span><span>adonan, menggunakan peralatan, langkah-</span><span>langkah membuat berbagai jenis roti milo\\r\\ndan&nbsp;</span><span>menjaga sanitasi kebersihan agar adonan\\r\\ndan&nbsp;</span><span>roti tidak terkontaminasi.&nbsp;</span></p>\\r\\n\\r\\n<p><span>Milo\\r\\nadalah salah satu jenis bahan makanan&nbsp;<span>favorit di Indonesia,\\r\\nberbagai kreasi dengan</span><span>bahan milo selalu diminati oleh\\r\\nmasyarakat&nbsp;</span><span>Indonesia.&nbsp;</span><span>Campuran roti dan milo menghasilkan&nbsp;</span><span>kombinasi makanan yang lembut dan manis&nbsp;</span><span>sesuai kesukaan masyarakat. Kemampuan\\r\\nuntuk&nbsp;</span><span>membuat berbagai aneka roti milo akan&nbsp;</span><span>menjadikan seorang pembuat roti memiliki&nbsp;</span><span>kompetensi yang relevan dan sesuai dengan&nbsp;</span><span>kebutuhan pasar saat ini.</span><span>&nbsp;</span></span></p><p><span>\\r\\n<!--[if !supportLineBreakNewLine]--><br>\\r\\n<!--[endif]--></span></p>\\r\\n\\r\\n\\r\\n\\r\\n<p><b>Tujuan\\r\\nUmum Pelatihan</b></p>\\r\\n\\r\\n<p>Peserta pelatihan\\r\\nmemiliki kemampuan sebagai&nbsp;<span>pembuat roti yang memiliki\\r\\nkompetensi dalam&nbsp;</span><span>membuat aneka roti milo\\r\\nmenggunakan&nbsp;</span><span>peralatan dan bahan yang sesuai minimal 2\\r\\nkali</span></p><p><span>\\r\\n<!--[if !supportLineBreakNewLine]--><br>\\r\\n<!--[endif]--></span></p>\\r\\n\\r\\n\\r\\n\\r\\n<p><b>Tujuan\\r\\nKhusus Pelatihan</b></p>\\r\\n\\r\\n<p>1. Peserta mengetahui\\r\\ndan mampu&nbsp;<span>mengidentifikasi serta memilih bahan-bahan&nbsp;</span><span>untuk pembuatan roti</span></p>\\r\\n\\r\\n<p>2. Peserta mengetahui\\r\\ndan mampu&nbsp;<span>menggunakan peralatan untuk membuat roti&nbsp;</span><span>milo</span></p>\\r\\n\\r\\n<p>3. Peserta mengetahui\\r\\ndan mampu&nbsp;<span>mempraktekkan langkah-langkah dalam&nbsp;</span><span>pembuatan berbagai jenis roti milo</span></p>\\r\\n\\r\\n<p>4. Peserta mengetahui\\r\\ndan mampu menjaga&nbsp;<span>standar kebersihan dalam proses pembuatan\\r\\nroti&nbsp;</span><span>milo</span></p>\\r\\n\\r\\n<p>5. Peserta memiliki\\r\\nketelitian, kecermatan,&nbsp;<span>kehati-hatian dan selalu taat\\r\\nazas dalam proses&nbsp;</span><span>pembuatan roti milo</span></p>\\r\\n\\r\\n<p><span><br>\\r\\n<!--[endif]--></span></p>\\r\\n\\r\\n\\r\\n\\r\\n<p><b>Aspek\\r\\nKompetensi:&nbsp;Pengetahuan&nbsp;(Knowledge)</b></p>\\r\\n\\r\\n<p>1. Pengetahuan dasar\\r\\ntentang bahan baku dan&nbsp;<span>peralatan dalam pembuatan roti</span></p>\\r\\n\\r\\n<p><span>&nbsp;</span></p>\\r\\n\\r\\n<p><b>Aspek\\r\\nKompetensi:&nbsp;Keterampilan (Skill)</b></p>\\r\\n\\r\\n<p>1. Mengoperasikan\\r\\nPeralatan untuk Membuat&nbsp;<span>Rot</span><span>i</span></p>\\r\\n\\r\\n<p>2. Mampu menjaga\\r\\nstandar kebersihan dalam&nbsp;<span>proses pembuatan roti</span></p>\\r\\n\\r\\n<p><span>3.\\r\\nMampu membuat berbagai jenis roti milo</span></p>\\r\\n\\r\\n<p><span>&nbsp;</span></p>\\r\\n\\r\\n<p><b>Aspek\\r\\nKompetensi:&nbsp;Sikap (Attitude)</b></p>\\r\\n\\r\\n<p>1. Teliti&nbsp;</p>\\r\\n\\r\\n<p>2. Cermat dan hati-hati</p>\\r\\n\\r\\n<p><span>3.\\r\\nTaat azas&nbsp;</span></p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Kelompok\\r\\nSasaran</b></p>\\r\\n\\r\\n<p>1. Pendidikan minimal\\r\\nSMA</p>\\r\\n\\r\\n<p>2. Memiliki timbangan,\\r\\noven, dan mixer</p>\\r\\n\\r\\n<p>3. Memiliki telepon\\r\\nseluler yang memiliki kuota&nbsp;data atau akses internet</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Durasi\\r\\nPer Sesi</b></p>\\r\\n\\r\\n<p>Sesi 1: Pengetahuan\\r\\ndasar tentang&nbsp;bahan baku dan peralatan dalam&nbsp;pembuatan roti 238 menit</p>\\r\\n\\r\\n<p>Sesi\\r\\n2:&nbsp;Mengoperasikan Peralatan&nbsp;<span>untuk Membuat Roti</span><span>&nbsp;10 menit</span></p>\\r\\n\\r\\n<p>Sesi 3:&nbsp;Menjaga\\r\\nStandar Kebersihan&nbsp;<span>dalam Proses Pembuatan Roti</span><span>&nbsp;19 menit</span></p>\\r\\n\\r\\n<p>Sesi 4:&nbsp;Membuat\\r\\nBerbagai Jenis&nbsp;<span>Roti Milo</span><span>&nbsp;105 menit</span></p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Total\\r\\nDurasi</b></p>\\r\\n\\r\\n<p>360 menit</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Kapasitas\\r\\nPeserta</b></p>\\r\\n\\r\\n<p>Unlimited</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Level\\r\\nPelatihan</b></p>\\r\\n\\r\\n<p>Basic</p><p><br></p><p></p><p><b>Metode Pembelajaran</b></p>\\r\\n\\r\\n<p>Self paced learning : Metode ajar yang digunakan\\r\\nadalah ceramah interaktif roleplay dan bahan bacaan dengan penugasan praktek</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Metode Evaluasi</b></p>\\r\\n\\r\\n<p>1. Pre Test<br>\\r\\n2. Post Test<br>\\r\\n3. Formative Test<br>\\r\\n4. Tugas Praktik</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Jenis/Klasifikasi Sertifikat</b></p>\\r\\n\\r\\n<p>Sertifikat Penyelesaian, Sertifikat Kompetensi\\r\\nLulus</p><p></p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Profil\\r\\nPengajar</b></p>\\r\\n\\r\\n<p>Chef Indra Gunawan</p>\\r\\n\\r\\n<p><span>Lulusan Jurusan Tata boga, Sekolah Tinggi&nbsp;<span>Pariwisata, Bandung. Memiliki keahlian di\\r\\nbidang&nbsp;</span><span>Pastry dan Bakery selama 20 tahun. Saat\\r\\nini&nbsp;</span><span>menjabat sebagai Executive Pastry Chef</span></span></p><p><span>\\r\\n<!--[if !supportLineBreakNewLine]--><br>\\r\\n<!--[endif]--></span></p>\\r\\n\\r\\n\\r\\n\\r\\n<p><span><b>Jadwal\\r\\nMingguan Konsultasi denan Tenaga Pelatih</b></span></p>\\r\\n\\r\\n<p>Selasa jam 18.30 -19.30\\r\\nbersama chef indra g<span>unawan</span></p>\\r\\n\\r\\n<p><span>&nbsp;</span></p>\\r\\n\\r\\n<p><b>Panduan\\r\\nRedeem Voucher</b></p>\\r\\n\\r\\n<p>1. Di website Pijar\\r\\nMahir (<a href=\\\"https://pijarmahir.id/\\\">https://pijarmahir.id/</a>), klik menu profil (nama\\r\\nanda) pada pojok kanan atas kemudian klik menu Voucher Saya dan klik Salin Kode\\r\\n(atau catat kode voucher secara manual)</p>\\r\\n\\r\\n<p>2. Kunjungi website&nbsp;<a href=\\\"https://bakingworld.id/\\\">https://bakingworld.id/</a>&nbsp;&nbsp;</p>\\r\\n\\r\\n<p>3. Registrasi di Bakingworld.id</p>\\r\\n\\r\\n<p>4. Masukan kode voucher di kolom Kode Voucher</p>\\r\\n\\r\\n<p>5. Klik check “Kode Voucher”</p>\\r\\n\\r\\n<p>6. Klik “Dapatkan Voucher“</p>\\r\\n\\r\\n<p>7. Kursus sudah bisa kamu pelajari</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p><b>Kontak Lembaga\\r\\nPelatihan</b></p>\\r\\n\\r\\n<p></p><p>Customer Service (Whatsapp Only) : 082113787028<br></p><p>Email : Support@bakingworld.id</p><p>Live chat: Website bakingworld.id</p><br><p>&nbsp;</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p>&nbsp;</p><br><p></p>', 'Baking World', 3440, 'paid', 'false', 'false', 'available', 'course/Membuat-Aneka-Roti-Milo-bagi-Pembuat-Roti-3', '2022-12-15 07:50:27', '2022-12-15 07:50:27');
INSERT INTO `course` (`id`, `category_id`, `category_name`, `coursetype`, `fullname`, `duration`, `price`, `rating`, `totalrater`, `summary`, `teacher`, `enrolledusers`, `tag`, `whislisted`, `owned`, `classStatus`, `thumbnail`, `created_at`, `updated_at`) VALUES
(6, 1, 'Kartu Prakerja', 'Pembelajaran Mandiri', 'Membuat Desain dengan Adobe Illustrator untuk Graphic Designer (Desainer Multimedia)', '645 Menit', 700000, 5, 203, '<p><b>Deskripsi Pelatihan<br></b><span style=\\\"font-size: 0.9375rem;\\\">Sebuah hasil gambar olah digital dan desain&nbsp;di era modern sudah sering digunakan untuk&nbsp;banyak kebutuhan di bidang manapun.&nbsp;Tentunya, kemampuan dalam membuat&nbsp;gambar digital dan menggunakan perangkat&nbsp;lunak ini semakin dicari.&nbsp;</span><span style=\\\"font-size: 0.9375rem;\\\">Di kelas ini kamu akan mempelajari hal dasar&nbsp;dalam menggunakan perangkat lunak Adobe&nbsp;Illustrator untuk membuat sebuah gambar&nbsp;maupun desain. Materi yang disampaikan&nbsp;dimulai dari mempelajari tools yang ada&nbsp;pada toolbar Adobe Illustrator beserta&nbsp;fungsinya. Seperti, menggunakan pen tool&nbsp;untuk membuat path dan tracing gambar,&nbsp;pemakaian tools kuas untuk memberikan&nbsp;warna pada gambar atau desain. Lalu&nbsp;dengan menggunakan tools tersebut, akan&nbsp;diajarkan bagaimana bereksplorasi untuk&nbsp;membuat sebuah ilustrasi gambar. Tidak&nbsp;hanya mempelajari tools dan bentuk&nbsp;sederhana, di kelas ini kamu akan&nbsp;mempelajari bagaimana bekerja dengan&nbsp;warna hingga membuat sebuah gradasi&nbsp;untuk gambar dan desain.&nbsp;</span><span style=\\\"font-size: 0.9375rem;\\\">Selain gambar dan sebuah desain, kamu&nbsp;dapat membuat eksplorasi tipografi. Seperti&nbsp;membuat teks mengikuti path, mendistorsi&nbsp;bentuk teks, hingga membuat gambar&nbsp;digabungkan dengan teks. Lalu, di kelas ini&nbsp;juga kamu diajarkan mengenai materi&nbsp;pembuatan objek 3D, seperti membuat bola&nbsp;dan bangun ruang dengan eksplorasi&nbsp;lainnya. Kelas ini ditutup dengan materi&nbsp;pembuatan eksplorasi line art, yaitu seni&nbsp;menggunakan goresan garis hingga menjadi&nbsp;sebuah objek dengan beberapa efek&nbsp;eksplorasi lainnya.<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Tujuan Umum Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Peserta mampu memproduksi karya desain&nbsp;menggunakan perangkat lunak Adobe&nbsp;Illustrator.<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Tujuan Khusus Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Mampu menjelaskan tools yang terdapat&nbsp;pada Adobe Illustrator<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Mampu menerapkan tools untuk membuat&nbsp;seni desain dengan bereksplorasi dalam&nbsp;menggunakan komponen warna, tipografi,&nbsp;pattern, blend tool, opacity mask dan objek&nbsp;kreasi 3D<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Mengetahui prinsip dasar design<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Mengenal elemen desain (line, shape,&nbsp;form, texture, contrast, space, tone, colour,&nbsp;etc)<br></span><span style=\\\"font-size: 0.9375rem;\\\">5. Mengetahui prinsip desain (harmony,&nbsp;balance, rhythm, contrast, depth, etc)<br></span><span style=\\\"font-size: 0.9375rem;\\\">6. Memahami aspek penting tipografi<br></span><span style=\\\"font-size: 0.9375rem;\\\">7. Mengaplikasikan prinsip dan elemen&nbsp;desain pada hasil karya<br></span><span style=\\\"font-size: 0.9375rem;\\\">8. Menggambar pada unsur garis, bidang,&nbsp;dan warna<br></span><span style=\\\"font-size: 0.9375rem;\\\">9. Mengoperasikan perangkat lunak desain<br></span><span style=\\\"font-size: 0.9375rem;\\\">10. Membuat produk design dengan&nbsp;menerapkan Tipografi<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Aspek Kompetensi: Pengetahuan (Knowledge)<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Mengetahui prinsip dasar design<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Mengenal elemen desain (line, shape,&nbsp;form, texture, contrast, space, tone, colour,&nbsp;etc)<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Mengetahui prinsip desain (harmony,&nbsp;balance, rhythm, contrast, depth, etc)<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Memahami aspek penting tipografi<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Aspek Kompetensi: Keterampilan (Skill)<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Mengaplikasikan prinsip dan elemen&nbsp;desain pada hasil karya<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Menggambar pada unsur garis, bidang,&nbsp;dan warna<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Mengoperasikan perangkat lunak desain<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Membuat produk design dengan&nbsp;menerapkan Tipografi<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Aspek Kompetensi: Sikap (Attitude)<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">1. Teliti dan cekatan dalam menerapkan&nbsp;komunikasi dalam konsep desain<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Teliti dan cekatan dalam mengoperasikan&nbsp;perangkat lunak<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Responsif terhadap mencari kesepakatan&nbsp;di antara pihak yang terkait proses produksi<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Kelompok Sasaran<br></b></span></span></p><p>1. Minimal pendidikan SMP/sederajat</p><p>2. Pelajar</p><p>3. Mahasiswa</p><p>4. Pekerja</p><p>5. Masyarakat umum yang membutuhkan sertifikasi software Adobe</p><p>6. Memiliki komputer/laptop dengan perangkat Adobe Illustrator</p><p><span style=\\\"font-size: 0.9375rem;\\\"></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Durasi Per Sesi<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 1. Pengenalan Tools pada Adobe Illustrator (04:08 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 2. Selection Tool (03:24 menit</span><span style=\\\"font-size: 0.9375rem;\\\">)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 3. Isolation Mode (07:41 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 4. Lasso Tool (03:31 menit</span><span style=\\\"font-size: 0.9375rem;\\\">)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 5. Magic Wand Tool (11:12 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 6. Selection Command (06:17 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 7. Layers Panel (05:36 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 8. Bentuk Sederhana (21:58 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 9. Transformasi Objek (41:16 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 10. Perataan Objek &amp; Pathfinder (10:55 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 11. Pathfinder (17:48 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 12. Pengenalan Penggunaan Warna dan Brush (03:01 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 13. Memilih Warna (30:25 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 14. Membuat Warna Gradasi (40:15 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 15. Pengaplikasian Pen Tool (18:00 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 16. Memodifikasi Path pada Objek (44:38 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 17. Memahami Default Brush (12:50 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 18. Pembuatan Scatter Brush dan Penerapannya (28:52 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 19. Pembuatan Art Brush dan Penerapannya (35:22 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 20. Pembuatan Pattern Brush dan Penerapannya (36:34 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 21. Pengenalan Tipografi pada Adobe Illustrator (03:28 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 22. Teks Judul &amp; Paragraf (14:25 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 23. Teks Mengikuti Path (08:59 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 24. Mendistorsi Teks (05:08 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 25. Mengubah Teks Menjadi Path (19:26 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 26. Pembuatan Outline pada Teks (10:53 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 27. Mempelajari Text Wrap (02:54 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 28. Gambar dalam Teks (04:54 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 29. Mempelajari Cara Membuat Pattern (23:59 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 30. Menggunakan Panel Blend Tool (13:13 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 31. Mengedit Objek dengan Opacity Mask (18:02 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 32. Mempelajari Extrude &amp; Bevel (11:06 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 33. Mempelajari Map Art (12:51 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 34. Mempelajari Revolve (10:47 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 35. Mempelajari Pembuatan Line Art (58:40 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 36. Membuat Konsep dan Production Brief dalam Desain (10:00 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\">Bab 37. Ringkasan Belajar Adobe Illustrator (59:00 menit)<br></span><span style=\\\"font-size: 0.9375rem;\\\"><span><b><br>Total Durasi<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">645 Menit<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><b>Kapasitas Peserta<br></b></span><span style=\\\"font-size: 0.9375rem;\\\">Unlimited<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Profil Pengajar<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Edi Sarwono<br></span><span style=\\\"font-size: 0.9375rem;\\\">Edi Sarwono merupakan&nbsp;seorang pengajar digital&nbsp;illustration di Sekolah Tinggi&nbsp;Media Komunikasi Trisakti&nbsp;dan Sekolah Tinggi Desain&nbsp;Interstudi. Edi sudah&nbsp;menerbitkan buku berjudul&nbsp;Adobe Illustrator Great&nbsp;Tutorial: Cara Praktis Belajar&nbsp;Adobe Illustrator dengan&nbsp;Cepat, Tepat, dan Jelas. Kali&nbsp;Ini Edi akan mengajarkan&nbsp;mengenai digital illustrator di&nbsp;Skill Academy<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><b>Jadwal Mingguan&nbsp;</b></span><b style=\\\"font-size: 0.9375rem;\\\">Konsultasi dengan&nbsp;</b><span style=\\\"font-size: 0.9375rem;\\\"><b>Tenaga Pelatih<br></b></span><span style=\\\"font-size: 0.9375rem;\\\">Tiap Jumat, jam 16.00-17.00 WIB<br></span><span style=\\\"font-size: 0.9375rem;\\\"><span><br><span><b>Level Pelatihan<br></b></span></span></span><span style=\\\"font-size: 0.9375rem;\\\">Basic / Tingkat Dasar</span></p><p><span style=\\\"font-size: 0.9375rem;\\\"><span><span><b>Metode Pembelajaran<br></b></span><span>Self Paced Learning: Metode ajar yang digunakan adalah menggunakan kombinasi antara ceramah interaktif, peragaan (demonstration), video animasi dan putar video.<br></span><span><span><br><b>Metode Evaluasi<br></b></span></span></span><span>1. Pre Test<br></span><span>2. Post Test<br></span><span>3. Formative Test<br></span><span>4. Tugas Praktik<br></span><span><span><b><br>Jenis/Klasifikasi Sertifikat<br></b><span>Sertifikat Penyelesaian, Sertifikat Kompetensi Lulus</span></span></span><br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><b>Panduan Redeem Voucher<br></b></span><span style=\\\"font-size: 0.9375rem;\\\">1. Kunjungi website <a href=\\\"http://www.skillacademy.com\\\">www.skillacademy.com</a> atau download Aplikasi Skill Academy di Play Store<br></span><span style=\\\"font-size: 0.9375rem;\\\">2. Pilih “Masuk” apabila sebelumnya sudah mendaftar akun Skill Academy atau pilih “Daftar” jika&nbsp;sebelumnya Anda belum pernah mendaftar akun Skill Academy<br></span><span style=\\\"font-size: 0.9375rem;\\\">3. Klik \\\"Tukarkan\\\" pada bagian penukaran voucher di homepage atau halaman prakerja<br></span><span style=\\\"font-size: 0.9375rem;\\\">4. Masukkan kode voucher yang sudah Anda dapatkan dari Pijar Mahir lalu klik \\\"Gunakan Voucher\\\"<br></span><span style=\\\"font-size: 0.9375rem;\\\">5. Setelah penukaran berhasil silakan klik \\\"Lihat Kelas\\\" atau cek pada bagian “Kelas Saya” untuk&nbsp;mengikuti kelasnya<br></span><span style=\\\"font-size: 0.9375rem;\\\">6. Selamat Anda dapat langsung mulai belajar dan mengikuti pelatihan di Skill Academy<br></span><span style=\\\"font-size: 0.9375rem;\\\"><br><span><b>Kontak Lembaga Pelatihan<br></b></span></span><span style=\\\"font-size: 0.9375rem;\\\">Email : info@skillacademy.com<br></span><span style=\\\"font-size: 0.9375rem;\\\">Telp : 021-4000-8000</span></p><br>', 'Skill Academy', 447, 'paid', 'false', 'false', 'available', 'course/Power-Point.png', '2022-12-15 07:56:01', '2022-12-15 07:56:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `flash_sale`
--

CREATE TABLE `flash_sale` (
  `id` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `price` int(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `rating` double NOT NULL,
  `totalRater` int(25) NOT NULL,
  `teacher` varchar(25) NOT NULL,
  `percentage` int(25) NOT NULL,
  `priceAfter` int(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `flash_sale`
--

INSERT INTO `flash_sale` (`id`, `course_Id`, `price`, `fullname`, `thumbnail`, `rating`, `totalRater`, `teacher`, `percentage`, `priceAfter`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 400000, 'Tips Jago MC Pemula', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/1.-Tips_Jago_MC_untuk_Pemula.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671529432559', 5, 2, 'Pijar Mahir', 97, 12000, 4, '0000-00-00 00:00:00', '2022-12-20 16:52:21'),
(2, 2, 450000, 'UX Research dengan Metode Heuristic Evaluation', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/Thumbnail--Heuristic_Evaluation.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671529432303', 4.4, 12, 'Pijar Mahir', 97, 12000, 4, '0000-00-00 00:00:00', '2022-12-20 16:53:35'),
(3, 3, 350000, '13 Langkah Jadi Freelancer', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/5.-13_langkah_menjadi_freelancer.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671529432832', 4.8, 8, 'Pijar Mahir', 96, 12000, 3, '0000-00-00 00:00:00', '2022-12-20 16:53:51'),
(4, 3, 350000, 'Dasar Pembuatan Desain Iklan', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/7.-Dasar_pembuatan_desain_iklan.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671529432554', 4.8, 25, 'Pijar Mahir', 96, 12000, 3, '0000-00-00 00:00:00', '2022-12-20 16:54:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartu_prakerja`
--

CREATE TABLE `kartu_prakerja` (
  `id` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `price` int(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `rating` double NOT NULL,
  `totalRater` int(25) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kartu_prakerja`
--

INSERT INTO `kartu_prakerja` (`id`, `course_Id`, `price`, `fullname`, `thumbnail`, `rating`, `totalRater`, `teacher`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 500000, 'Membuat Film Pendek Bagi Calon Sutradara', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/PDP-VOKRAF-SFP-_Pijar-mahir-343x179_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368669', 5, 3820, 'Sertifikasiku -', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 6, 500000, 'Menyusun Konten Blog dengan Teknik SEO (Search Engine Optimization) bagi Calon Seniman Digital', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/PDP-VOKRAF-SEO-_Pijar-mahir-343x179_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368085', 4.8, 6, 'Vokraf .', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 5, 349000, 'Membuat Video Promosi & Infografis di After Effect bagi Animator', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/thumbnail-343x179_2-14.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368671', 4.3, 16, 'LKP Karisma Academy', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 5, 600000, 'Belajar Mengelola Usaha Ternak Unggas untuk Calon Pengusaha Peternakan', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/PM-PRA-CAK-118.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368590', 4.8, 16, 'LKP Karisma Academy', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 5, 500000, 'Belajar Bahasa Inggris untuk Berkomunikasi Bagi Pegawai Perkantoran Umum', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/Strategi-Belajar_Bahasa_Inggris_-_343x179pxl.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368785', 4.6, 520, 'MyEduSolve -', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 3, 600000, 'BDesain Presentasi Powerpoint Untuk Menunjang Karir Desainer Grafis (Webinar)', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/343x179-Belajar_Mendesain_Presentasi_Dengan_PowerPoint_Untuk_Menunjang_Karir_Sebagai_Desainer_Grafis__Webinar_.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530367962', 4.7, 62, 'Xpertrainer .', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 3, 350000, 'Pelatihan Belajar Komunikasi Dasar Dalam Bahasa Jepang Untuk Menjadi Tenaga Perkantoran Umum', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/PM-PRA-CRI-038.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368776', 4.7, 137, 'Cariilmu -', 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 4, 550000, 'Menjadi Javascript Engineer menggunakan Javascript dan Node.js bagi Developer IT dan Programmer Web', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/Belajar-Full_Stack_Web_Developer_menggunakan_Javascript_dan_Node.js_bagi_Developer_IT_dan_Programmer_Web.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368228\r\n', 4.6, 59, 'CourseNet -', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 4, 500000, 'Membuat Kreasi Mahar Pernikahan bagi Wirausaha Industri Kerajinan', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/KartuPrakerja/PM-PRA-PRC-002.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530368799', 4.8, 163, 'PRICE Course', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahir_prakerja`
--

CREATE TABLE `mahir_prakerja` (
  `id` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `price` int(25) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `rating` double NOT NULL,
  `totalRater` int(25) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahir_prakerja`
--

INSERT INTO `mahir_prakerja` (`id`, `course_Id`, `price`, `fullname`, `thumbnail`, `rating`, `totalRater`, `teacher`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 2, 650000, 'Merancang Usaha Kuliner Menjadi Kedai Makanana', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/update-PM-PRA-JFC-009.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671530624212\r\n', 5, 128, 'JFC Plus', 1, '0000-00-00 00:00:00', '2022-12-20 17:26:02'),
(2, 4, 500000, 'Membuat Aneka Roti Milo bagi Pembuat Roti', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/Membuat-Aneka-Roti-Milo-bagi-Pembuat-Roti-343x179.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530623390\r\n', 4.7, 3062, 'Baking World', 1, '0000-00-00 00:00:00', '2022-12-20 17:26:27'),
(3, 3, 500000, 'Mempelajari Metode Bimbingan Karir untuk Menjadi Penasihat Karir', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/update-PM-PRA-JFC-012.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671530624174', 4.4, 13, 'JFC Plu', 5, '0000-00-00 00:00:00', '2022-12-20 17:26:44'),
(4, 5, 400000, 'Belajar Menerapkan Teknik Food Photography untuk Fotografer Pemula', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/PM-PRA-CAK-084.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671532078807', 4.7, 344, 'Cakap -', 3, '0000-00-00 00:00:00', '2022-12-20 17:28:17'),
(5, 5, 487000, 'Belajar Membuat Aneka Masakan Nusantara Bagi Juru Masak', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/Thumbnail-Pelatihan_Belajar_Membuat_Aneka_Masakan_Nusantara_Bagi_Juru_Masak.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530624104', 4.7, 369, 'Cariilmu -', 7, '0000-00-00 00:00:00', '2022-12-20 17:28:33'),
(6, 5, 399000, 'Belajar Strategi Pemasaran Instagram for Business untuk Menjadi Spesialis Periklanank', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/Thumbnail-Instagram_Marketing.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530623903', 4.8, 3820, 'sertifikasiku', 4, '0000-00-00 00:00:00', '2022-12-20 17:28:50'),
(7, 5, 300000, 'Mengembangkan Konten Video di Platform Daring bagi Seniman Digital', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/PDP-VOKRAF-Mengembangkan-Konten_Video_di_Platform_Daring_bagi_Seniman_Digital_Pijar-mahir-343x179_.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671530623507', 4.7, 1438, 'Vokraf .', 3, '0000-00-00 00:00:00', '2022-12-20 17:29:40'),
(8, 5, 700000, 'Membuat Desain dengan Adobe Illustrator untuk Graphic Designer (Desainer Multimedia)', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/Pijar-Mahir_Adobe_Illustrator_untuk_Desainer.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671530623560', 4.7, 192, 'Skill Academy', 3, '0000-00-00 00:00:00', '2022-12-20 17:29:58'),
(9, 4, 400000, 'Belajar Merias Wajah Pengantin dengan Konsep Tradisional Adat Sunda Indonesia Bagi Penata Rias', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/MahirPrakerja/Thumbnail-Pijar_Pelatihan_Belajar_Merias_Wajah_Pengantin_dengan_Konsep_Tradisional_Adat_Sunda_Indonesia_bagi_Penata_Rias_new.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530624246', 4.8, 149, 'Cariilmu -', 3, '0000-00-00 00:00:00', '2022-12-20 17:30:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pilihan_terbaik`
--

CREATE TABLE `pilihan_terbaik` (
  `id` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `price` int(25) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `rating` double NOT NULL,
  `totalRater` int(25) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pilihan_terbaik`
--

INSERT INTO `pilihan_terbaik` (`id`, `course_Id`, `price`, `fullname`, `thumbnail`, `rating`, `totalRater`, `teacher`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 5, 349000, 'Membuat Video Promosi & Infografis di After Effect bagi Animator', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/thumbnail-343x179_2-14.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530899958', 4, 16, 'LKP Karisma Academy', 2, '0000-00-00 00:00:00', '2022-12-20 17:31:17'),
(2, 5, 400000, 'Belajar Merias Wajah Pengantin dengan Konsep Tradisional Adat Sunda Indonesia Bagi Penata Rias', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/Thumbnail-Pijar_Pelatihan_Belajar_Merias_Wajah_Pengantin_dengan_Konsep_Tradisional_Adat_Sunda_Indonesia_bagi_Penata_Rias_new.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530900238', 4.8, 149, 'Cariilmu -', 5, '0000-00-00 00:00:00', '2022-12-20 17:31:34'),
(3, 4, 300000, 'Membuat Desain Banner dan Kaos Distro di CorelDraw bagi Perancang Grafis', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/Desain-a.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530900362', 4.8, 277, 'LPPK Wahana Tama Indonesia', 3, '0000-00-00 00:00:00', '2022-12-20 17:31:55'),
(4, 3, 500000, 'Belajar Merancang Strategi Kreatif Periklanan untuk Digital Marketer', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/343x179-digital_marketer.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530899694', 4.7, 188, 'Cakap -', 4, '0000-00-00 00:00:00', '2022-12-20 17:32:39'),
(5, 3, 399000, 'Belajar Strategi Pemasaran Facebook Ads untuk Menjadi Spesialis Periklanan', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/PM-PRA-MES-057.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530899704', 4.7, 1007, 'Sertifikasiku -', 4, '0000-00-00 00:00:00', '2022-12-20 17:33:04'),
(6, 4, 500000, 'Membuat Aneka Asinan dan Manisan Bagi Juru Masak', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/343x179-Membuat_Aneka_Asinan_dan_Manisan_Bagi_Juru_Masak.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530900399', 4.8, 820, 'Baking World', 7, '0000-00-00 00:00:00', '2022-12-20 17:33:25'),
(7, 5, 579000, 'Fullstack Web Developer Complete Bundle ', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/PM-PRA-COU-067.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530900594', 5, 2, 'CourseNet -', 3, '0000-00-00 00:00:00', '2022-12-20 17:33:50'),
(8, 5, 500000, 'Melayani Kebutuhan dan Keluhan Pelanggan dengan Prima untuk Calon Frontliner', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/update-PM-PRA-JFC-018.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671530900397', 4.6, 29, 'JFC Plus', 1, '0000-00-00 00:00:00', '2022-12-20 17:34:23'),
(9, 6, 350000, 'Strategi Mempersiapkan Pembelajaran Online Bagi Guru', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/PilihanTerbaik/Thumbnail-Facebook_Marketing.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671530900454', 4.8, 213, 'MyEduSolve -', 3, '0000-00-00 00:00:00', '2022-12-20 17:34:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rating` double NOT NULL,
  `user_Id` int(11) NOT NULL,
  `isPrakerja` varchar(50) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rating`
--

INSERT INTO `rating` (`id`, `course_Id`, `comment`, `rating`, `user_Id`, `isPrakerja`, `fullname`, `created_at`, `updated_at`) VALUES
(1, 1, 'Terima kasih pijar mahir', 5, 19, 'false', 'Muhammad Hanif Mutaqqin', '0000-00-00 00:00:00', '2022-12-19 15:50:15'),
(2, 2, 'Bagus Sekali', 5, 22, 'false', 'Alexis Burgman', '2022-12-15 08:06:15', '2022-12-19 15:50:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `talenta_digital`
--

CREATE TABLE `talenta_digital` (
  `id` int(11) NOT NULL,
  `course_Id` int(11) NOT NULL,
  `price` int(25) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `rating` double NOT NULL,
  `totalRater` int(25) NOT NULL,
  `teacher` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `talenta_digital`
--

INSERT INTO `talenta_digital` (`id`, `course_Id`, `price`, `fullname`, `thumbnail`, `rating`, `totalRater`, `teacher`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 4, 700000, 'Membuat Desain dengan Adobe Illustrator untuk Graphic Designer (Desainer Multimedia)', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/TalentaDigital/Pijar-Mahir_Adobe_Illustrator_untuk_Desainer.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671531273639', 5, 192, 'Skill Academy', 2, '0000-00-00 00:00:00', '2022-12-20 17:36:01'),
(2, 4, 300000, 'Prinsip UX (User Experience)', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/TalentaDigital/ux1.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531273378', 5, 2, 'Ir. Bengris', 3, '0000-00-00 00:00:00', '2022-12-20 17:36:39'),
(3, 4, 700000, 'Membuat Desain dengan Adobe Illustrator untuk Graphic Designer (Desainer Multimedia)l', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/TalentaDigital/Pijar-Mahir_Adobe_Illustrator_untuk_Desainer.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671531273639', 4.7, 192, 'Skill Academy', 3, '0000-00-00 00:00:00', '2022-12-20 17:36:12'),
(4, 4, 0, 'Design Sprint', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/TalentaDigital/sprint.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671531273503', 4.7, 477, 'Pathya Madhyastha', 3, '0000-00-00 00:00:00', '2022-12-20 17:37:07'),
(5, 4, 0, 'Agile Dan Scrum', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/TalentaDigital/agile.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531272852', 4.6, 377, 'Aldila Karina', 3, '0000-00-00 00:00:00', '2022-12-20 17:37:30'),
(6, 5, 0, 'Lean Startup', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/TalentaDigital/Thumbnail-Mengurangi_Resiko_Usaha_Gagal_Dengan_Lean_Start_Up.png?ik-sdk-version=javascript-1.4.3&updatedAt=1671531272865', 4.7, 254, 'Pijar Mahir', 3, '0000-00-00 00:00:00', '2022-12-20 17:37:50'),
(7, 5, 0, 'User Experience', 'https://ik.imagekit.io/qaiwv3ovda/pijarmahir/TalentaDigital/ux1.jpg?ik-sdk-version=javascript-1.4.3&updatedAt=1671531273378', 4.6, 137, 'Pijar Mahir', 3, '0000-00-00 00:00:00', '2022-12-20 17:36:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `birthdate` varchar(25) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `no_tlp`, `birthdate`, `gender`, `created_at`, `updated_at`) VALUES
(19, 'Ryomi Tsukuda', 'ryo0012', 'ryoda@gmail.com', '081244326642', '1976-06-16', 'pria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'dodi', 'dodi123', 'test@gmail.com', '081xxxxxxxxx', '1997-01-08', 'pria', '2022-12-15 04:06:58', '2022-12-15 04:06:58'),
(23, 'Budi Rashad', 'budi110', 'budirash@gmail.com', '081244326642', '1976-06-16', 'pria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'admin', 'admin123', 'admin@gmail.com', '08124432687', '1976-08-18', 'pria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Budi Rashad', 'budi110', 'budirash@gmail.com', '081244326642', '1976-06-16', 'pria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Budi Rashrdd', 'budi110', 'budirashy7@gmail.com', '081244326642', '1976-06-16', 'pria', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Budi Rashrdd', 'budi110', 'budirashy7@gmail.com', '081244326642', '1976-06-16', 'pria', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `best_seller`
--
ALTER TABLE `best_seller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorybest` (`category_id`),
  ADD KEY `course_Id` (`course_Id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_category` (`category_id`);

--
-- Indeks untuk tabel `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_courseflash` (`course_Id`),
  ADD KEY `fk_categoryfkash` (`category_id`);

--
-- Indeks untuk tabel `kartu_prakerja`
--
ALTER TABLE `kartu_prakerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_course1` (`course_Id`),
  ADD KEY `fk_category1` (`category_id`);

--
-- Indeks untuk tabel `mahir_prakerja`
--
ALTER TABLE `mahir_prakerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorymahir` (`category_id`),
  ADD KEY `fk_coursesmahir` (`course_Id`);

--
-- Indeks untuk tabel `pilihan_terbaik`
--
ALTER TABLE `pilihan_terbaik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorypilihan` (`category_id`),
  ADD KEY `fk_coursespilihan` (`course_Id`);

--
-- Indeks untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_course` (`course_Id`),
  ADD KEY `fk_user` (`user_Id`);

--
-- Indeks untuk tabel `talenta_digital`
--
ALTER TABLE `talenta_digital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categorytalent` (`category_id`),
  ADD KEY `fk_coursestalent` (`course_Id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `best_seller`
--
ALTER TABLE `best_seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `collection`
--
ALTER TABLE `collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kartu_prakerja`
--
ALTER TABLE `kartu_prakerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `mahir_prakerja`
--
ALTER TABLE `mahir_prakerja`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pilihan_terbaik`
--
ALTER TABLE `pilihan_terbaik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `talenta_digital`
--
ALTER TABLE `talenta_digital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `best_seller`
--
ALTER TABLE `best_seller`
  ADD CONSTRAINT `best_seller_ibfk_1` FOREIGN KEY (`course_Id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_categorybest` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD CONSTRAINT `fk_categoryfkash` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_courseflash` FOREIGN KEY (`course_Id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kartu_prakerja`
--
ALTER TABLE `kartu_prakerja`
  ADD CONSTRAINT `fk_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_course1` FOREIGN KEY (`course_Id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `mahir_prakerja`
--
ALTER TABLE `mahir_prakerja`
  ADD CONSTRAINT `fk_categorymahir` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_coursesmahir` FOREIGN KEY (`course_Id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pilihan_terbaik`
--
ALTER TABLE `pilihan_terbaik`
  ADD CONSTRAINT `fk_categorypilihan` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_coursespilihan` FOREIGN KEY (`course_Id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `fk_course` FOREIGN KEY (`course_Id`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_Id`) REFERENCES `user` (`id`);

--
-- Ketidakleluasaan untuk tabel `talenta_digital`
--
ALTER TABLE `talenta_digital`
  ADD CONSTRAINT `fk_categorytalent` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_coursestalent` FOREIGN KEY (`course_Id`) REFERENCES `course` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
