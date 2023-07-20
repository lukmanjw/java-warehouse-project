## Aplikasi Management Gudang

Aplikasi ini dibuat untuk memenuhi tugas akhir dari mata kuliah Pemrograman Visual menggunakan ***Java*** dan ***MySQL*** mysql sebagai databasenya.

Menu yang terdapat dalam aplikasi ini adalah :
- Daftar Produk 
- Daftar Client 
- Daftar Vendor
- Users 
- Transaksi ( Barang masuk & Barang Keluar )


## User Role

  1. Administrator
  2. Employee
  
  [Administrator dapat melakukan perubahan kesemua menu dan users]
  [Users dapat melakukan penambahan produk dan melakukan transaksi barang masuk & keluar]

## How to download and run the software

#### JDK or JRE version 8.0.2.

1. Download and unzip the ZIP folder.
2. Import file SQL menggunakan phpmyadmin [ File berada di dalam folder SQL/ap_warehouse.sql ].
3. Setelah melakukan import SQL ubah credential.xml file sesuai dengan user dan password anda.
4. Default credentials untuk MySQL database adalah:
    - Username: root
    - Password: root ( atau kosongkan password )
  
    Apabila ada perbedaan username and password untuk mengkoneksikannya, ikuti langkah berikut:
    1. Masuk kedalam folder `lib` di folder yang telah diextract tadi.
    2. Buka file XML `DBCredentials.xml`.
    3. Rubah dan sesuaikan dengan username dan passwordnya.
        ```xml
          <properties>
          <comment>Credentials for the database.</comment>
            <entry key="username">root</entry>
            <entry key="password">root</entry>
          </properties>
        ```
6. Apabila sudah berhasil login dan ada beberapa problem yang harus diresolve anda bisa melakukan import library dan pluggin yang berada pada folder `lib`.
7. Login Administrator dengan menggunakan Username: `root` and Password: `root`.

## Work-in-Progress

Project ini belum sepenuhnya selesai dan masih dalam tahap perkembangan. 

# Disclaimer

Project ini menggunakan template yang sudah ada digithub sebelumnya.
