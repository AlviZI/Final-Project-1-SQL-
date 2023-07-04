--------------------------------------------------- Membuat Tabel ---------------------------------------------------------------------
CREATE TABLE public.car_product
(
    product_id integer NOT NULL,
    brand character varying NOT NULL,
    model character varying NOT NULL,
    body_type character varying NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL,
    PRIMARY KEY (product_id),
    CONSTRAINT product_id UNIQUE (product_id)
);

CREATE TABLE public.city 
(
  kota_id integer NOT NULL,
  nama_kota character varying COLLATE pg_catalog."default" NOT NULL,
  latitude character varying COLLATE pg_catalog."default" NOT NULL,
  longitude character varying COLLATE pg_catalog."default" NOT NULL,
  CONSTRAINT city_pkey PRIMARY KEY (kota_id),
  CONSTRAINT city_kota_id_key UNIQUE (kota_id)
);

CREATE TABLE public.buyer
(
    user_id integer NOT NULL,
    nama character varying COLLATE pg_catalog."default" NOT NULL,
    kontak character varying COLLATE pg_catalog."default" NOT NULL,
    domisili character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (user_id)
);

CREATE TABLE public.seller
(
    seller_id integer NOT NULL,
    nama_seller character varying NOT NULL,
    kontak character varying NOT NULL,
    domisili character varying NOT NULL,
    PRIMARY KEY (seller_id)
);

---------------------------------------------- Langkah 4 ------------------------------------------------------
SELECT * FROM car_product;
SELECT * FROM seller;
SELECT * FROM user;

-- Case 1
SELECT *
FROM car_product
WHERE year >= 2015;

-- Case 3
SELECT nama_seller,brand,domisili
FROM seller
JOIN car_product
ON seller.seller_id = car_product.product_id
WHERE nama_seller LIKE '%Novi%';

-- Case 4
SELECT *
FROM car_product
WHERE year <= 2015 AND brand ILIKE '%Chevrolet%'
ORDER BY price ASC
LIMIT 2;

SELECT *
FROM seller
JOIN buyer
ON ;

------------------------------------------------------- Langkah 5 ----------------------------------------------------------
-- Case 2
SELECT city.nama_kota, ROUND(AVG(car_product.price), 0) AS rata_harga
FROM car_product
JOIN city ON car_product.product_id = city.kota_id
GROUP BY city.nama_kota;

