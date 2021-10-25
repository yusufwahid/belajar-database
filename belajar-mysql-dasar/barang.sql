SHOW ENGINES;

SHOW TABLES;

CREATE TABLE barang(
	id INT,
    nama VARCHAR(100),
    harga INT,
    jumlah INT
)ENGINE = InnoDB;

DESCRIBE barang;

DESC barang;

SHOW CREATE TABLE barang;

ALTER TABLE barang
ADD COLUMN deskripsi TEXT;

ALTER TABLE barang
ADD COLUMN salah TEXT;

ALTER TABLE barang
DROP COLUMN salah;

ALTER TABLE barang
MODIFY nama VARCHAR(200) AFTER deskripsi;

ALTER TABLE barang
MODIFY nama VARCHAR(200) FIRST;