-- Data Tabel
SELECT * FROM buyer;
SELECT * FROM car_product;
SELECT * FROM city;
SELECT * FROM seller;

-- LANGKAH 4
-- Case 1
SELECT *
FROM car_product
WHERE YEAR >= 2015;

-- Case 3
SELECT nama_seller,brand,year,domisili
FROM seller
JOIN car_product
ON seller.seller_id = car_product.product_id
WHERE nama_seller LIKE '%Novi%';

-- Case 4
SELECT *
FROM car_product
WHERE brand LIKE 'Toyota';

-- LANGKAH 5
-- Case 1
SELECT brand, COUNT(*) as count
FROM car_product
GROUP BY brand
HAVING COUNT(*) > 1 
ORDER BY count DESC;

-- Case 2
SELECT city.nama_kota, ROUND(AVG(car_product.price), 0) AS rata_harga
FROM car_product
JOIN city ON car_product.product_id = city.kota_id
GROUP BY city.nama_kota;