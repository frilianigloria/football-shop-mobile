Jawaban dari Pertanyaan-pertanyaan Tugas Individu

<details>
<Summary><b> Tugas 7 </b></Summary>

1. Widget Tree pada Flutter adalah struktur hierarki yang menggambarkan bagaimana widget ditata dan saling berhubungan di dalam sebuah UI aplikasi. Flutter membangun tampilan dengan cara menempatkan widget-widget dalam bentuk pohon (tree), dimana setiap widget memiliki posisi tertentu dalam urutan hierarki tersebut. 
Pada widget tree, setiap widget bisa menjadi parent yang berisi 1 atau lebih child widget dan juga bisa menjadi child dari widget lain.
Parent: Widget yang membungkus atau mengandung widget lain.
Child : Widget yang berada di dalam widget lain.
Hubungan:
    * Parent menentukan tata letak (layout) untuk child. Child mengikuti aturan (constraints) dari parent.
    * Parent mengontrol tampilan, child menyediakan konten.
    * Child tidak dapat mengontrol parent.


2. 
    | Widget | Fungsi |
    |--------|--------|
    | MyApp | Root widgetr yang membungkus aplikasi dengan MaterialApp dan mengatur tema global. |
    | MyHomePage | Membangun seluruh tampilan halaman (home). |
    | InfoCard | Untuk menampilkan data dalam Card (nama, NPM, kelas). |
    | ItemCard | Untuk menampilkan satu tombol menu di dalam GridView. |
    | MaterialApp | Widget pembungkus utama yang menyediakan fungsionalitas dasar material design, seperti navigasi dan tema. |
    | Scaffold | Menyediakan struktur halaman standar, seperti appBar dan body. |
    | AppBar | Bagian judul yang muncul di bagian atas Scaffold, berisi Text judul. |
    | SingleChildScrollView | Membungkus konten body agar halaman bisa di scroll jika kontennya melebihi tinggi layar. |
    | Padding | Memberikan jarak (ruang kosong) di sekeliling widget anaknya (dalam kasus ini, memberi padding pada seluruh konten Column di dalam body). |
    | Column | Menyusun widget-widget anaknya secara vertikal. |
    | Row | Menyusun widget-widget anaknya secara horizontal. |
    | Expanded | Digunakan di dalam Row agar setiap InfoCard bisa 'mengisi' ruang horizontal yang tersedia secara merata. |
    | SizedBox | Digunakan untuk membuat kotak kosong dengan ukuran tetap, berfungsi sebagai pemberi spasi (jarak) antar widget.
    | Text | Untuk menampilkan teks/tulisan di layar. |
    | GridView.count | Menyusun widget-widget (ItemCard) dalam sebuah grid. |
    | Card | Menampilkan konten dalam sebuah kotak bergaya Material Design. |
    | Material | Menyediakan 'kanvas' Material Design. Digunakan untuk memberi warna latar dan bentuk pada tombol grid |
    | InkWell | Membuat widget anaknya menjadi interaktif. |
    | Container | Untuk memberikan padding di dalam Card. |
    | Center | Memposisikan widget anaknya agar berada di tengah-tengah Container. |
    | Icon | Menampilkan sebuah ikon grafis. |


3. MaterialApp adalah widget utama yang menyediakan fondasi dan konfigurasi dasar aplikasi Flutter berbasis Material Design. MaterialApp sering digunakan sebagai widget root karena ia menyediakan fitur-fitur penting (seperti Tema dan Navigasi) yang perlu diakses oleh semua widget lain di aplikasi.


4. StatelessWidget : Tidak bisa berubah. UI-nya 'tercetak' sekali dan tidak bisa mengubah dirinya sendiri. Bersifat static dan immutable.
StatefulWidget : Bisa berubah. Ia memiliki 'state' (data internal) yang bisa diubah kapan saja. dan UI-nya bisa digambar ulang (rebuild) untuk menampilkan perubahan tersebut.

    Kita gunakan StatelessWidget jika:
    * Widget hanya perlu menampilkan data yang diterimanya dari parent
    * UI nya tidak akan pernah berubah selama lifecycle widget tersebut.
    * Widget tersebut adalah murni presentasi tanpa interaksi yang mengubah data internal.

    Kita gunakan StatefulWidget jika:
    * Perlu mengubah UI berdasarkan interaksi pengguna.
    * Perlu melacak data yang berubah seiring waktu.
    * Perlu mengelola status internal.
    * Mengambil data dari internet dan perlu menampilkan loading spinner terlebih dahulu, baru kemudian menampilkan datanya.

    Secara singkat, gunakan StatelessWidget saat kita ingin UI tidak berubah dan data tetap. Sedangkan, gunakan StatefulWidget saat kita ingin UI diperbarui setiap ada perubahan (input user, timer, data, dan lainnya).


5. BuildContext adalah objek yang merepresentasikan posisi sebuah widget di dalam widget tree. BuildContext memberi tahu dimana widget berada dalam struktur aplikasi, akses ke parent widget, dan akses ke data yang diwariskan.
BuildContext penting karena diperlukan untuk mengakses data dari widget ancestor, diperlukan juga saat membangun UI, dan diperlukan untuk menentukan hubungan parent-child.
Dalam penggunaannya di method build, build selalu menerima BuildContext sebagai parameter.


6. Hot reload adalah fitur yang memungkinkan kita mengaplikasikan perubahan kode ke aplikasi yang sedang berjalan tanpa mengulang dari awal, sehingga perubahan UI langsung terlihat dan state aplikasi tidak hilang. Sedangkan hot restart, memuat ulang aplikasi dari awal (seperti fresh start), sehingga state aplikasi hilang dan variabel kembali ke kondisi awal.

</details>

***

<details>
<Summary><b> Tugas 8 </b></Summary>

1. Navigator.push() : menambahkan halaman baru ke dalam navigation stack. halaman sebelumnya tetap ada di bawahnya, sehingga user dapat kembali ke halaman sebelumnya.
Navigator.pushReplacement() : mengganti halaman saat ini dengan halaman baru. halaman sebelumnya akan di-remove dari stack, sehingga tidak bisa kembali ke halaman sebelumnya.
Dalam penggunaannya untuk Football Shop, push bisa digunakan jika user boleh kembali ke halaman sebelumnya, seperti untuk navigasi umum yang tetap membutuhkan history. Misalnya saat user berada di home page, kemudian user ke page detail product, user tetap bisa kembali ke home page. Sedangkan pushReplacement bisa digunakan jika user tidak diperlukan untuk kembali ke halam sebelumnya, seperti saat setelah login, user diarahkan ke home page dan tidak perlu ada tombol kembali ke halaman login.


2. Dalam aplikasi football shop saya, struktur halaman dibuat konsisten dengan memanfaatkan hierarki widget dari Flutter. Scaffold menjadi kerangka utama setiap halaman, menyediakan tempat untuk elemn penting seperti AppBar, Drawer, dan konten utama (body). AppBar digunakan untuk menampilkan judul halaman sehingga pengguna selalu tahu sedang berada di layar apa. Sementara itu, Drawer dijadikan menu navigasi yang sama di berbagai halaman, sehingga user dapat berpindah antar page dengan mudah. Dengan hierarki widget inim semua halaman memiliki tampilan dan navigasi yang seragam, mudah digunakan, serta rapi dan terorganisasi dengan baik.


3. Padding, SingleChildScrollView, dan ListView membantu membuat tampilan form lebih rapi dan responsif. 
Padding memberikan jarak antar elemen, sehingga tampilan lebih enak dilihat dan tidak tampak menumpuk. Contohnya setiap TextFormField digunakan Padding().
SingleChildScrollView memnungkinkan seluruh page di scroll jika content form tinggi, sehingga tidak terpotong ketika layar kecil atau saat keyboard muncul. Contohnya seluruh form dibungkus SingleChildScrollView di ProductFormPage, sehingga user tetap dapat mengisi semua kolom meski layar terbatas.
ListView berguna untuk menampilkan banyak elemen secara vertikal yang dapat di scroll otomatis tanpa overflow, membuat layout tetap fleksibel saat jumlah widget bertambah. Contohnya LeftDrawer menggunakan ListView untuk menampilkan item menu agar dapat discroll jika menunya bertambah.


4. Untuk menjaga identitas visual yang konsisten, aplikasi ini menyesuaikan warna tema melalui pengaturan ColorScheme pada ThemeData yang ada di main.dart, sehingga seluruh elemen interface menggunakan warna yang selaras.

</details>