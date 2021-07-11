CREATE DATABASE TOKO_BUKU;

USE TOKO_BUKU;

CREATE TABLE admin (
id_admin int NOT NULL,
username varchar(100) NOT NULL,
password varchar(100) NOT NULL,
nama_lengkap varchar(100) NOT NULL,
);

INSERT INTO admin (id_admin, username, password, nama_lengkap) VALUES
(19112711, 'bagus', '1234', 'Bagus Rizky'),
(00000000, 'admin', 'admin', 'admin');

CREATE TABLE buku (
  id_buku int NOT NULL,
  judul_buku varchar(100) NOT NULL,
  jumlah int NOT NULL,
  satuan varchar(50) NOT NULL,
  harga int NOT NULL
);

INSERT INTO buku(id_buku, judul_buku, jumlah, harga) VALUES
(1, 'Fisika', 500,  51000),
(2, 'Matematika', 1000, 88000),
(3, 'Kimia', 500, 6500),
(4, 'Biologi', 200, 34000),
(5, 'Penjaskes', 200, 85000);

CREATE TABLE pelanggan (
  id_pelanggan int NOT NULL,
  nama_pelanggan varchar(100) NOT NULL,
alamat varchar(100) NOT NULL,
  nomor_telepon varchar(25) NOT NULL);

INSERT INTO pelanggan(id_pelanggan, nama_pelanggan, alamat, nomor_telepon) VALUES
(1, 'Agnes Monica', 'Bandung Barat', 08881),
(2, 'Raditya Dika', 'Sulawesi Tengah' , 0883838),
(3, 'Riski Astuti', 'Kalimantan Utara', 0883433);

CREATE TABLE pembelian (
  id_pembelian int NOT NULL,
  id_pelanggan int NOT NULL,
  tanggal_pembelian date NOT NULL,
  total_pembelian int NOT NULL
);

INSERT INTO pembelian (id_pembelian, id_pelanggan, tanggal_pembelian, total_pembelian) VALUES
(1, 1, 2020-05-26, 50000),
(2, 2, 2020-05-12, 15000),
(3, 3, 2020-05-07, 20000);
