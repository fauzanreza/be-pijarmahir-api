# Project Title

This Project is used to create mockup API

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

* Download XAMPP
* Open phpmyadmin
* Make new database with name "mockup"
* import all sql file into mockup database

### Installing
```
npm install --legacy-peer-deps
```
```
npm start
```

### User API Hint Link
* Get All User Data : 
```
http://localhost:9000/api/v1/user/  (GET)
```

* Get One User Data : 
```
http://localhost:9000/api/v1/user/:id  (GET)
```

* Post User Data: 
```
http://localhost:9000/api/v1/user/  (POST)
```
user data model example:
```
{
        "username":"Budi Rashad",
        "password":"budi110",
        "email":"budirash@gmail.com",
        "no_tlp":"081244326642",
        "birthdate":"1976-06-16",
        "gender":"pria"
}
```

* Update User Data : 
```
http://localhost:9000/api/v1/user/:id  (PATCH)
```

### Category API Hint Link
* Get All Category Data : 
```
http://localhost:9000/api/v1/category/ (GET)
```

* Get One Category Data : 
```
http://localhost:9000/api/v1/category/:id  (GET)
```

* Post Category Data: 
```
http://localhost:9000/api/v1/category/ (POST)
```
category data model example:
```
{
        "categoryname":"Pengembangan Diri",
        "description":"Untuk belajar cara mengembangkan diri agar lebih baik"
}
```

* Update Category Data : 
```
http://localhost:9000/api/v1/category/:id  (PATCH)
```
### Collection API Hint Link
* Get All Collection Data : 
```
http://localhost:9000/api/v1/collection/ (GET)
```

* Get One Collection Data : 
```
http://localhost:9000/api/v1/collection/:id  (GET)
```

* Post Collection Data: 
```
http://localhost:9000/api/v1/collection/ (POST)
```
collection data model example:
```
{
        "name": "Flash Sale",
        "type": "sale",
        "numOrder": 2
}
```

* Update Collection Data : 
```
http://localhost:9000/api/v1/collection/:id  (PATCH)
```
### Kartu Prakerja API Hint Link
* Get All Kartu Prakerja Data : 
```
http://localhost:9000/api/v1/collection/kartu_prakerja/ (GET)
```

* Get One Kartu Prakerja Data : 
```
http://localhost:9000/api/v1/collection/kartu_prakerja/:id  (GET)
```

* Post Kartu Prakerja Data: 
```
http://localhost:9000/api/v1/collection/kartu_prakerja/ (POST)
```
kartu prakerja data model example:
```
{
        "course_Id": 5,
        "price": 349000,
        "fullname":"Membuat Video Promosi & Infografis di After Effect bagi Animator",
        "thumbnail":"course/PDP-VOKRAF-SFP-(Pijar-mahir-343x179).png",
        "rating": 4.8,
        "totalRater": 15,
        "teacher":"Cakap",
        "category_id": 2
}
```

* Update Kartu Prakerja Data : 
```
http://localhost:9000/api/v1/collection/kartu_prakerja/:id  (PATCH)
```
### Flash Sale API Hint Link
* Get All Flash Sale Data : 
```
http://localhost:9000/api/v1/collection/flash_sale/ (GET)
```

* Get One Flash Sale Data : 
```
http://localhost:9000/api/v1/collection/flash_sale/:id  (GET)
```

* Post Flash Sale Data: 
```
http://localhost:9000/api/v1/collection/flash_sale/ (POST)
```
flash sale data model example:
```
{
        "course_Id": 1,
        "price": 400000,
        "fullname":"Tips Jago MC Pemula",
        "thumbnail":"course/1.-Tips Jago MC untuk Pemula.jpg",
        "rating": 5,
        "totalRater": 2,
        "teacher":"Pijar Mahir",
        "percentage": 97,
        "priceAfter": 12000,
        "category_id": 4
}
```

* Update Flash Sale Data : 
```
http://localhost:9000/api/v1/collection/flash_sale/:id  (PATCH)
```
### Mahir Prakerja API Hint Link
* Get All Mahir Prakerja Data : 
```
http://localhost:9000/api/v1/collection/mahir_prakerja/ (GET)
```

* Get One Mahir Prakerja Data : 
```
http://localhost:9000/api/v1/collection/mahir_prakerja/:id  (GET)
```

* Post Mahir Prakerja Data: 
```
http://localhost:9000/api/v1/collection/mahir_prakerja/ (POST)
```
mahir prakerja data model example:
```
{
        "course_Id": 5,
        "price": 349000,
        "fullname":"Membuat Video Promosi & Infografis di After Effect bagi Animator",
        "thumbnail":"course/PDP-VOKRAF-SFP-(Pijar-mahir-343x179).png",
        "rating": 4.3,
        "totalRater": 16,
        "teacher":"LKP Karisma Academy",
        "category_id": 2
}
```

* Update Mahir Prakerja Data : 
```
http://localhost:9000/api/v1/collection/mahir_prakerja/:id  (PATCH)
```

### Best Seller API Hint Link
* Get All Best Seller Data : 
```
http://localhost:9000/api/v1/collection/best_seller/ (GET)
```

* Get One Best Seller Data : 
```
http://localhost:9000/api/v1/collection/best_seller/:id  (GET)
```

* Post Best Seller Data: 
```
http://localhost:9000/api/v1/collection/best_seller/ (POST)
```
best seller data model example:
```
{
        "course_Id": 5,
        "price": 349000,
        "fullname":"Membuat Video Promosi & Infografis di After Effect bagi Animator",
        "thumbnail":"course/PDP-VOKRAF-SFP-(Pijar-mahir-343x179).png",
        "rating": 4.3,
        "totalRater": 16,
        "teacher":"LKP Karisma Academy",
        "category_id": 2
}
```

* Update Best Seller Data : 
```
http://localhost:9000/api/v1/collection/best_seller/:id  (PATCH)
```

### Talenta Digital API Hint Link
* Get All Talenta Digital Data : 
```
http://localhost:9000/api/v1/collection/talenta_digital/ (GET)
```

* Get One Talenta Digital Data : 
```
http://localhost:9000/api/v1/collection/talenta_digital/:id  (GET)
```

* Post Talenta Digital Data: 
```
http://localhost:9000/api/v1/collection/talenta_digital/ (POST)
```
talenta digital data model example:
```
{
        "course_Id": 5,
        "price": 349000,
        "fullname":"Membuat Video Promosi & Infografis di After Effect bagi Animator",
        "thumbnail":"course/PDP-VOKRAF-SFP-(Pijar-mahir-343x179).png",
        "rating": 4.3,
        "totalRater": 16,
        "teacher":"LKP Karisma Academy",
        "category_id": 2
}
```

* Update Talenta Digital Data : 
```
http://localhost:9000/api/v1/collection/talenta_digital/:id  (PATCH)
```

### Pilihan Terbaik API Hint Link
* Get All Pilihan Terbaik Data : 
```
http://localhost:9000/api/v1/collection/pilihan_terbaik/ (GET)
```

* Get One Pilihan Terbaik Data : 
```
http://localhost:9000/api/v1/collection/pilihan_terbaik/:id  (GET)
```

* Post Pilihan Terbaik Data: 
```
http://localhost:9000/api/v1/collection/pilihan_terbaik/ (POST)
```
pilihan terbaik data model example:
```
{
        "course_Id": 5,
        "price": 349000,
        "fullname":"Membuat Video Promosi & Infografis di After Effect bagi Animator",
        "thumbnail":"course/PDP-VOKRAF-SFP-(Pijar-mahir-343x179).png",
        "rating": 4.3,
        "totalRater": 16,
        "teacher":"LKP Karisma Academy",
        "category_id": 2
}
```

* Update Pilihan Terbaik Data : 
```
http://localhost:9000/api/v1/collection/pilihan_terbaik/:id  (PATCH)
```

### Course API Hint Link
* Get All Course Data : 
```
http://localhost:9000/api/v1/course/ (GET)
```

* Get One Course Data : 
```
http://localhost:9000/api/v1/course/:id  (GET)
```

* Post Course Data: 
```
http://localhost:9000/api/v1/course/ (POST)
```
course data model example:
```
{
        "category_id": 1,
        "category_name":"kartu-prakerja",
        "coursetype":"Pembelajaran Mandiri",
        "fullname":"Membuat Film Pendek Bagi Calon Sutradara",
        "duration":"365 menit",
        "price": 500000,
        "rating": 5,
        "totalrater": 4,
        "summary":"<p></p><p><span><b>Deskripsi Pelatihan<br></b></span></p><p>Pelatihan ini ditujukan untuk calon sutradara agar mampu membuat film pendek yang baik. Industri film semakin berkembang seiring berjalannya waktu, salah satunya adalah produksi film pendek. Hal ini didukung dari munculnya banyak platform streaming video yang memberikan layar alternatif untuk menayangkan film-film pendek. Perkembangan ini juga terjadi karena adanya berbagai kompetisi produksi film pendek yang disponsori oleh berbagai pihak, dari pemerintah maupun swasta.&nbsp;<br></p><p>Hal ini menjadikan profesi sutradara sebagai peluang yang menjanjikan, karena tidak hanya dibutuhkan di industri perfilman, tetapi juga di industri lainnya, seperti periklanan. Selain itu, dengan mulai berkarya lewat film pendek, kesempatan untuk memproduksi film layar lebar akan terbuka lebar.</p><p></p><p>urgensi pelatihan ini muncul karena melihat banyaknya sutradara yang tidak memahami tata cara produksi film pendek karena tidak melewati pembelajaran formal tentang produksi film. Maka dari itu penting bagi calon sutradara untuk mempelajari tata cara produksi film pendek mulai dari tahap pra-produksi, produksi, hingga pasca-produksi agar tercipta sutradara film pendek yang berkompetensi di industri film.</p><p>Di pelatihan ini, peserta akan menguasai empat aspek kompetensi utama, yaitu:</p><p>menginterpretasi tahapan pembuatan film pendek, mendeskripsikan triangle above system, merencanakan pembuatan film pendek, dan mempelajari sikap profesional saat menjalani profesi sebagai sutradara film pendek.</p><p>Pelatihan ini merujuk pada kbji 2014 dengan kode 2654.03. Pelatihan ini memiliki sesi konsultasi yang dilaksanakan setiap hari Rabu, pukul 15.00 - 16.00 WIB bersama expert Brandon Hetarie, dengan kapasitas maksimum 1000 orang. Peserta dapat menyampaikan keluhan melalui email cs@vokraf.com ataupun melalui WhatsApp ke +62 812-8330-7269.<br></p><p><br></p><p></p><p><span><span><span><b>Tujuan Umum Pelatihan</b><br></span></span></span></p><p>Setelah mengikuti pelatihan, peserta dapat merencanakan pembuatan film pendek yang berkualitas dan mengenali peran sutradara sesuai dengan tahapan pembuatan film pendek yang baik, mulai dari pra-produksi, produksi sampai pasca-produksi dengan mengacu pada kompetensi yang tertera di KBJI 2014 dengan kode 2654.03.<br></p><p><br></p><p><span><span><span><b>Tujuan Khusus Pelatihan<br></b></span></span></span></p><p>1. Peserta mampu menyimpulkan peran sutradara dalam pembuatan film pendek;</p><p></p><p>2. Peserta mampu mengkonstruksi tahapan pembuatan film pendek: pra-produksi, produksi, dan pasca-produksi;</p><p>3, Peserta mampu merencanakan pembuatan film pendek;</p><p>4. Peserta mampu mempelajari peran sutradara.</p><p><br></p><p></p><p><b><span><span>Aspek Kompetensi:&nbsp;</span></span><span><span>Pengetahuan&nbsp;</span><span><span>(Knowledge)<br></span></span></span></b></p><p></p><p>1. Pengetahuan: Mengenali Profesi Sutradara<br></p><p>2. Pengetahuan: Mengenali Sejarah dan Perkembangan Film<br></p><p>3. Pengetahuan: Mengenali Perkembangan Film di Indonesia<br></p><p><br></p><p><span><span><b>Aspek Kompetensi: Keterampilan (Skill)</b></span></span></p><p><p><span><span>1.&nbsp;</span></span><span>Keterampilan : Menggunakan tools-tools dasar&nbsp;</span><span>pada software Photoshop</span></p><p><span>2.&nbsp;</span>Keterampilan : Menggunakan tools-tools dasar&nbsp;<span>pada software Illustrator</span></p><p><span><span>3.&nbsp;</span></span>Keterampilan : Membuat Logo dan Brand&nbsp;<span>Identity</span></p><p><br></p></p><p><span><span><b>Aspek Kompetensi:&nbsp;</b></span></span><span><span><b>Sikap (Attitude)</b></span></span></p><p><span><span><span><p style=\"\">1. Sikap: Menampilkan Sikap Koordinatif dan Manajerial dalam Menjadi Sutradara<br></p><p style=\"\">2. Sikap: Menunjukkan Sikap Peka Terhadap Seni sebagai Seorang Sutradara<br></p><p style=\"\">3. Sikap: Mempelajari Cara Menghadapi Kritik dan Review</p></span></span></span></p><p><br></p><p></p><p><span><b>Kelompok Sasaran</b></span></p><p>1. Pria dan wanita dengan rentang usia 18 - 35 tahun;</p><p>2. Pelatihan ini dapat diikuti oleh peserta yang tidak buta huruf;</p><p>3. Pelatihan dapat diikuti oleh peserta dengan jenjang pendidikan minimal SMA dan sederajat;</p><p>4. Tingkat kesulitan pelatihan ini adalah tingkat dasar;</p><p>5. Peserta yang ingin mempelajari pembuatan film pendek;</p><p>6. Peserta yang memiliki minat menjadi sutradara;</p><p>7. Peserta memiliki akses untuk menggunakan tools Microsoft Word untuk penulisan skrip;</p><p>8. Pelatihan ini dapat diikuti oleh peserta yang belum pernah membuat film pendek sebelumnya.</p><p><br></p><p><span><span><b>Durasi Per Sesi</b></span></span></p><p>Topik 1 : Membuat Film Pendek Bagi Calon Sutradara 123 menit<br></p><p>Topik 2 : Langkah-Langkah Pembuatan Film Pendek 162 menit<br></p><p>Topik 3 : Distribusi Film Pendek 80 menit<br></p><p><br></p><p><span><span><b>Total Durasi</b></span></span></p><p><span>365 Menit</span></p><p><span><br><b>Kapasitas Peserta</b></span></p><p><span>Unlimited</span></p><p><span><br><span><b>Level Pelatihan</b></span></span></p><p><span>Basic / Tingkat dasar</span></p><p><b><br></b></p><p><b>Metode Pembelajaran</b></p><p><span><span><span><span>Self paced learning : Metode ajar yang digunakan adalah ceramah interaktif roleplay dan bahan bacaan dengan penugasan praktek</span></span></span></span></p><p><span><span><span><span><span><br><b>Metode Evaluasi</b></span></span></span></span></span></p><p><span><span>1. Pre Test<br></span><span>2. Post Test<br></span><span>3. Formative Test<br></span><span>4. Tugas Praktik</span></span></p><p><span><span><span><br><b>Jenis/Klasifikasi Sertifikat</b></span></span></span></p><p><span><span>Sertifikat Penyelesaian, Sertifikat Kompetensi Lulus</span><br></span></p><p><span><span><b><br></b></span></span></p><p><span><span><b>Jadwal Mingguan Konsultasi dengan Pelatih</b></span></span></p><p>Rabu, 15.00 - 16.00 WIB<br></p><p><br></p><p><span><span><b>Profil Pengajar</b></span></span></p><p>Nama : Brandon Hetarie</p><p></p><p>Rangkuman Profil Tenaga Pelatih: Brandon Hetarie atau akrab dipanggil Brandon, adalah Creative Director di Cinemajestic Pictures sejak tahun 2019. Berkecimpung pada dunia Kreatif, sebagai Creative Director Brandon memiliki tanggung jawab atas proses kreatif dari penyusunan ide video, pembuatan deck presentasi kreatif, presentasi deck kreatif, menjadi sutradara dalam produksi video dan supervisi proses pasca-produksi.</p><p><br></p><p><b>Panduan Redeem Voucher Lembaga Vokraf</b></p><p></p><p>1. Di website Pijar Mahir (<a href=\"https://pijarmahir.id/\">https://pijarmahir.id/</a>), klik menu profil (nama anda) pada pojok kanan atas kemudian klik menu Voucher Saya dan klik Salin Kode (atau catat kode voucher secara manual)</p><p>2. Buka vokraf.com &nbsp;</p><p>3. Di tab paling atas terdapat tulisan “Anda Peserta Kartu Prakerja?” klik \"Tukar Voucher\"</p><p>4. Lanjutkan dengan Masuk (untuk yang sudah memiliki akun Vokraf) atau lanjutkan dengan Daftar dan mengisi formulir pendaftaran di form yang tersedia (untuk yang baru membuat akun Vokraf)</p><p>5. Masukkan Kode Voucher di kolom yang tersedia, lalu klik \"Tukar\"</p><p>6. Klik \"Beli Kelas\"</p><p>7. Klik \"Mulai Belajar\"</p><p>8. Pelatihanmu sudah bisa dimulai!</p><p>&nbsp;</p><p><b>Kontak Lembaga Vokraf</b></p><p>Email: cs@vokraf.com<b></b></p><p>+62 812-8330-7269 (cs Vokraf)</p><br><p></p>",
        "teacher":"Vokraf .",
        "enrolledusers": 9,
        "tag":"paid",
        "whislisted":"false",
        "owned":"false",
        "classStatus":"available",
        "thumbnail":"course/PDP-VOKRAF-SFP-(Pijar-mahir-343x179).png"
}
```

* Update Course Data : 
```
http://localhost:9000/api/v1/course/:id  (PATCH)
```
### Rating API Hint Link
* Get All Rating Data : 
```
http://localhost:9000/api/v1/course/rating/ (GET)
```

* Get One Rating Data : 
```
http://localhost:9000/api/v1/course/rating/:id  (GET)
```

* Post Rating Data: 
```
http://localhost:9000/api/v1/course/rating/ (POST)
```
rating data model example:
```
{
        "course_Id": 1,
        "comment":"Terima kasih pijar mahir",
        "rating": 5,
        "user_Id": 1,
        "isPrakerja":"false",
        "fullname":"Muhammad Hanif Mutaqqin"
}
```

* Update Rating Data : 
```
http://localhost:9000/api/v1/course/rating/:id  (PATCH)
```
A step by step series of examples that tell you have to get a development env running

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo

## Running the tests

Explain how to run the automated tests for this system

### Break down into end to end tests

Explain what these tests test and why

```
Give an example
```

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used
* [Maven](https://maven.apache.org/) - Dependency Management
* [ROME](https://rometools.github.io/rome/) - Used to generate RSS Feeds

## Contributing

Please read [CONTRIBUTING.md](https://gist.github.com/PurpleBooth/b24679402957c63ec426) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Billie Thompson** - *Initial work* - [PurpleBooth](https://github.com/PurpleBooth)

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc