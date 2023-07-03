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

CREATE TABLE public.user
(
    user_id integer NOT NULL,
    nama character varying COLLATE pg_catalog."default" NOT NULL,
    kontak character varying COLLATE pg_catalog."default" NOT NULL,
    domisili character varying COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT user_pkey PRIMARY KEY (user_id)
);

---------------------------------------------- Langkah 3 ------------------------------------------------------
SELECT * FROM car_product;

SELECT *
FROM car_product
WHERE year >= 2015;

SELECT *
FROM car_product
WHERE year <= 2015 AND brand ILIKE '%Chevrolet%'
ORDER BY price ASC
LIMIT 2;

SELECT *
FROM car_product  cp
JOIN city c ON cp.city_id = c.kota_id
WHERE cp.year <= 2015
  AND c.kota_id = 12 
ORDER BY SQRT(POWER(cp.latitude - c.latitude, 2) + POWER(cp.longitude - c.longitude, 2))
LIMIT 1;