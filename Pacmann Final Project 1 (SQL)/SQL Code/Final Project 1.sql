--------------------------------------------------- Membuat Tabel ---------------------------------------------------------------------
CREATE TABLE car_product (
  product_id INTEGER NOT NULL PRIMARY KEY,
  brand VARCHAR NOT NULL,
  model VARCHAR NOT NULL,
  body_type VARCHAR NOT NULL,
  year DATE NOT NULL,
  price INTEGER NOT NULL
);

CREATE TABLE city (
  kota_id INTEGER NOT NULL PRIMARY KEY,
  nama_kota VARCHAR NOT NULL,
  latitude DECIMAL NOT NULL,
  longitude DECIMAL NOT NULL
);

------ Import
COPY car_product 
FROM 'C:\Users\lenovo\Documents\GitHub\Final-Project-1-SQL-\Pacmann Final Project 1 (SQL)\Dummy Data\car_product.csv' 
DELIMITER ',' CSV HEADER;