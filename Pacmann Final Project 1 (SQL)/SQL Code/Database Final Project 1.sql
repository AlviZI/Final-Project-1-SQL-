PGDMP         
                {            Final Project 1    15.3    15.3 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16768    Final Project 1    DATABASE     �   CREATE DATABASE "Final Project 1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 !   DROP DATABASE "Final Project 1";
                postgres    false            �            1259    16769    car_product    TABLE     �   CREATE TABLE public.car_product (
    product_id integer NOT NULL,
    brand character varying NOT NULL,
    model character varying NOT NULL,
    body_type character varying NOT NULL,
    year date NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.car_product;
       public         heap    postgres    false            �            1259    16776    city    TABLE     �   CREATE TABLE public.city (
    kota_id integer NOT NULL,
    nama_kota character varying NOT NULL,
    latitude numeric NOT NULL,
    longitude numeric NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �          0    16769    car_product 
   TABLE DATA           W   COPY public.car_product (product_id, brand, model, body_type, year, price) FROM stdin;
    public          postgres    false    214   V
       �          0    16776    city 
   TABLE DATA           G   COPY public.city (kota_id, nama_kota, latitude, longitude) FROM stdin;
    public          postgres    false    215   s
       i           2606    16775    car_product car_product_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT car_product_pkey PRIMARY KEY (product_id);
 F   ALTER TABLE ONLY public.car_product DROP CONSTRAINT car_product_pkey;
       public            postgres    false    214            k           2606    16782    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (kota_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    215            �      x������ � �      �      x������ � �     