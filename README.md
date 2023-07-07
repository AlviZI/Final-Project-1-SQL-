# Final-Project 1 SQL

Pada Pacmann Final Project 1 membuat data penjualan mobil, ada beberapa langkah yg saya kerjakan diantaranya:

Langkah Pertama
- Membuat dummy data dengan menggunkan python library faker yang berisi data mobil, kota, pembeli dan penjual
- Mebuat database Final Project dan tabel car_product, city, seller, dan buyer
- Menentukan ERD tiap tabel

Langkah Kedua
- Mencari data mobil keluaran diatas 2015
- Mencari data mobil keluaran 2015 kebawah dengan seller bernama "Novi"
- Mencari data mobil brand "Toyota"
- Melihat jumlah brand mobil yang tersedia dengan urutan rangking paling banyak
- Membandingkan harga mobil berdasarkan harga rata-rata per kota


#Langkah pertama

1. Membuat dummy data dengan menggunkan python library faker yang berisi data mobil, kota, pembeli dan penjual

   - Import Colab
   <img width="225" alt="image" src="https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/48c3dc13-f134-4ef6-80a9-d27c80d57be5">

   Kode `from google.colab import drive` digunakan untuk mengimpor modul `drive` dari pustaka `google.colab`. Kode `drive.mount('/content/drive')` digunakan untuk memasang Google Drive di Google Colab. Ini memungkinkan pengguna untuk mengakses file yang disimpan di akun Google Drive mereka dari dalam notebook Colab. Jalur di mana Google Drive akan dipasang adalah `/content/drive`. Ketika kode dijalankan, itu meminta pengguna untuk memberikan otorisasi Colab untuk mengakses akun Google Drive mereka. Setelah otorisasi selesai, Google Drive dipasang dan dapat diakses seperti sistem file biasa. Pengguna kemudian dapat membaca, menulis, dan memanipulasi file yang disimpan di akun Google Drive mereka dari dalam notebook Colab.

   - Install Library Faker
   <img width="278" alt="image" src="https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/729a8863-c5af-4fc0-9703-1fc9439c4c1d">

   Kode `pip install Faker` digunakan untuk menginstal pustaka Python bernama Faker. Faker adalah pustaka Python yang digunakan untuk menghasilkan data palsu seperti nama, alamat, nomor telepon, dan lain-lain. Pustaka ini berguna untuk menguji aplikasi atau alat yang memerlukan data palsu. Untuk menggunakan pustaka ini, Anda perlu mengimpor modul `faker` ke dalam kode Python Anda. Setelah itu, Anda dapat menggunakan fungsi-fungsi yang disediakan oleh pustaka ini untuk menghasilkan data palsu yang dibutuhkan. Untuk menginstal pustaka ini, Anda perlu menjalankan kode `pip install Faker` di lingkungan Python Anda, seperti Google Colab. Setelah itu, pustaka Faker akan terinstal dan siap digunakan.

   - Membuat Dummy data car_product
   <img width="832" alt="image" src="https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/18aed068-ad80-4dc0-a6cd-3de23d95a85b">

   Kode tersebut digunakan untuk membuat file CSV yang berisi data mobil palsu menggunakan pustaka Python seperti `csv`, `faker`, `faker_vehicle`, dan `tabulate`. Pertama, kode mengimpor modul `csv`, `Faker`, `VehicleProvider`, dan `tabulate`. Kemudian, kode membuat variabel `headers` yang berisi nama kolom untuk file CSV yang akan dibuat. Selanjutnya, kode membuat variabel `data` yang akan berisi data mobil palsu yang akan ditulis ke dalam file CSV. Data mobil palsu tersebut dibuat menggunakan fungsi-fungsi yang disediakan oleh pustaka `faker_vehicle`. Setelah itu, kode membuka file CSV dengan mode write dan menulis header dan data ke dalam file tersebut menggunakan modul `csv`. Terakhir, kode mencetak data mobil palsu yang telah dibuat dalam bentuk tabel menggunakan modul `tabulate`. Dengan demikian, kode tersebut menghasilkan file CSV yang berisi data mobil palsu dan mencetak data tersebut dalam bentuk tabel.


# Langkah Kedua

1. Mencari data mobil keluaran diatas 2015
   
   ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/0e63898d-9a81-425f-84b6-d3e685efeafe)

   Code tersebut merupakan sebuah perintah SQL untuk mengambil semua data dari tabel `car_product` dimana nilai kolom `YEAR` lebih besar atau sama dengan 2015. 

    `SELECT *` digunakan untuk memilih semua kolom dari tabel `car_product`. `FROM car_product` digunakan untuk menentukan tabel mana yang akan digunakan untuk mengambil data. `WHERE YEAR >= 2015` digunakan untuk menentukan kondisi dimana hanya data dengan nilai kolom `YEAR` lebih besar atau sama dengan 2015 yang akan diambil. 
    
    Dalam SQL, `SELECT` digunakan untuk memilih kolom yang ingin ditampilkan, `FROM` digunakan untuk menentukan tabel mana yang akan digunakan, dan `WHERE` digunakan untuk menentukan kondisi yang harus dipenuhi oleh data yang akan diambil.
   
   ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/2d2368db-6fd7-404d-afc0-fd84f76457d0)


 
2. Mencari data mobil keluaran 2015 kebawah dengan seller bernama Novi

   ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/3b502452-1028-4d81-9307-f13de1d59233)

     Code tersebut merupakan sebuah perintah SQL untuk mengambil data dari tabel `seller` dan `car_product` dengan kolom-kolom tertentu dimana nilai kolom `nama_seller` mengandung kata "Novi". 
    
    `SELECT nama_seller,brand,year,domisili` digunakan untuk memilih kolom-kolom tertentu dari tabel `seller` dan `car_product`. `FROM seller JOIN car_product ON seller.seller_id = car_product.product_id` digunakan untuk menggabungkan data dari tabel `seller` dan `car_product` berdasarkan kolom `seller_id` dan `product_id`. `WHERE nama_seller LIKE '%Novi%'` digunakan untuk menentukan kondisi dimana hanya data dengan nilai kolom `nama_seller` yang mengandung kata "Novi" yang akan diambil. 
    
    Dalam SQL, `SELECT` digunakan untuk memilih kolom yang ingin ditampilkan, `FROM` digunakan untuk menentukan tabel mana yang akan digunakan, `JOIN` digunakan untuk menggabungkan data dari dua tabel, dan `WHERE` digunakan untuk menentukan kondisi yang harus dipenuhi oleh data yang akan diambil.

   ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/5a3dcafd-2889-4edc-9e54-80b740cd348b)


   

4. Mencari data mobil brand "Toyota"

   ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/d3610874-0599-4532-aa94-e049b8a54108)

     Code tersebut merupakan perintah SQL untuk mengambil semua kolom dari tabel `car_product` dimana nilai kolom `brand` sama dengan 'Toyota'. 
    
    - `SELECT *` digunakan untuk memilih semua kolom dari tabel `car_product`.
    - `FROM car_product` digunakan untuk menentukan tabel mana yang akan digunakan untuk mengambil data.
    - `WHERE brand LIKE 'Toyota'` digunakan untuk menentukan kondisi dimana hanya data dengan nilai kolom `brand` yang sama dengan 'Toyota' yang akan diambil.
    
    Dalam SQL, `SELECT` digunakan untuk memilih kolom yang ingin ditampilkan, `FROM` digunakan untuk menentukan tabel mana yang akan digunakan, dan `WHERE` digunakan untuk menentukan kondisi yang harus dipenuhi oleh data yang akan diambil.
  
    ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/127f2341-19f6-4a83-9278-7e146a50984f)



5. Melihat jumlah brand mobil yang tersedia dengan urutan rangking paling banyak

   ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/d18223bb-55fa-4de3-a273-778bcb9feea3)

    Code tersebut merupakan perintah SQL untuk mengambil data dari tabel `car_product` dengan kolom `brand` dan jumlah baris yang dihitung sebagai `count`. Data tersebut dikelompokkan berdasarkan nilai kolom `brand`, hanya data dengan jumlah baris lebih dari 1 yang akan ditampilkan, dan diurutkan berdasarkan jumlah baris secara menurun.

    - `SELECT brand, COUNT(*) as count` digunakan untuk memilih kolom `brand` dan menghitung jumlah baris sebagai `count`.
    - `FROM car_product` digunakan untuk menentukan tabel `car_product` sebagai sumber data.
    - `GROUP BY brand` digunakan untuk mengelompokkan data berdasarkan nilai kolom `brand`.
    - `HAVING COUNT(*) > 1` digunakan untuk menentukan kondisi dimana hanya data dengan jumlah baris lebih dari 1 yang akan ditampilkan.
    - `ORDER BY count DESC` digunakan untuk mengurutkan data berdasarkan jumlah baris secara menurun.
    
    Dalam SQL, `SELECT` digunakan untuk memilih kolom yang ingin ditampilkan, `FROM` digunakan untuk menentukan tabel mana yang akan digunakan, `GROUP BY` digunakan untuk mengelompokkan data berdasarkan kolom tertentu, `HAVING` digunakan untuk menentukan kondisi setelah pengelompokan, dan `ORDER BY` digunakan untuk mengurutkan data berdasarkan kolom tertentu.

    ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/d49c3aa6-5c2e-407d-8f8e-7375858fba64)




6. Membandingkan harga mobil berdasarkan harga rata-rata per kota

   ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/84bd5d5d-2c44-4b72-ac0e-30fac12c74ae)

     Berikut adalah penjelasan dari code SQL berikut:
    - `SELECT city.nama_kota, ROUND(AVG(car_product.price), 0) AS rata_harga` digunakan untuk memilih kolom `nama_kota` dari tabel `city` dan rata-rata harga dari kolom `price` dari tabel `car_product`. Fungsi `ROUND` digunakan untuk membulatkan nilai rata-rata harga ke bilangan bulat terdekat. Alias `AS` digunakan untuk memberikan nama

    ![image](https://github.com/AlviZI/Final-Project-1-SQL-/assets/66658329/98c7e853-b33e-4404-92e8-ddaed4aae1c1)


   
