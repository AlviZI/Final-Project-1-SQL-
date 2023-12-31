PGDMP     -    $                {            Final Project 1    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24576    Final Project 1    DATABASE     �   CREATE DATABASE "Final Project 1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
 !   DROP DATABASE "Final Project 1";
                postgres    false            �            1259    24591    buyer    TABLE     �   CREATE TABLE public.buyer (
    user_id integer NOT NULL,
    nama character varying NOT NULL,
    kontak character varying NOT NULL,
    domisili character varying NOT NULL
);
    DROP TABLE public.buyer;
       public         heap    postgres    false            �            1259    24577    car_product    TABLE     �   CREATE TABLE public.car_product (
    product_id integer NOT NULL,
    brand character varying NOT NULL,
    model character varying NOT NULL,
    body_type character varying NOT NULL,
    year integer NOT NULL,
    price integer NOT NULL
);
    DROP TABLE public.car_product;
       public         heap    postgres    false            �            1259    24584    city    TABLE     �   CREATE TABLE public.city (
    kota_id integer NOT NULL,
    nama_kota character varying NOT NULL,
    latitude character varying NOT NULL,
    longitude character varying NOT NULL
);
    DROP TABLE public.city;
       public         heap    postgres    false            �            1259    24598    seller    TABLE     �   CREATE TABLE public.seller (
    seller_id integer NOT NULL,
    nama_seller character varying NOT NULL,
    kontak character varying NOT NULL,
    domisili character varying NOT NULL
);
    DROP TABLE public.seller;
       public         heap    postgres    false                      0    24591    buyer 
   TABLE DATA           @   COPY public.buyer (user_id, nama, kontak, domisili) FROM stdin;
    public          postgres    false    216   �                 0    24577    car_product 
   TABLE DATA           W   COPY public.car_product (product_id, brand, model, body_type, year, price) FROM stdin;
    public          postgres    false    214   �                 0    24584    city 
   TABLE DATA           G   COPY public.city (kota_id, nama_kota, latitude, longitude) FROM stdin;
    public          postgres    false    215   u       	          0    24598    seller 
   TABLE DATA           J   COPY public.seller (seller_id, nama_seller, kontak, domisili) FROM stdin;
    public          postgres    false    217   e       s           2606    24590    city city_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (kota_id);
 8   ALTER TABLE ONLY public.city DROP CONSTRAINT city_pkey;
       public            postgres    false    215            q           2606    24583    car_product product_id 
   CONSTRAINT     \   ALTER TABLE ONLY public.car_product
    ADD CONSTRAINT product_id PRIMARY KEY (product_id);
 @   ALTER TABLE ONLY public.car_product DROP CONSTRAINT product_id;
       public            postgres    false    214            w           2606    24604    seller seller_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.seller
    ADD CONSTRAINT seller_pkey PRIMARY KEY (seller_id);
 <   ALTER TABLE ONLY public.seller DROP CONSTRAINT seller_pkey;
       public            postgres    false    217            u           2606    24597    buyer user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.buyer
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 9   ALTER TABLE ONLY public.buyer DROP CONSTRAINT user_pkey;
       public            postgres    false    216               �  x��V�n#9<���G;%�M����i{l�=�n�j$�^B=`x�~"K�e��P��dfFFD�d������>��n�a�~����o��ʕ˽�
J�e9�q��2ž�c�n����v�}d"(.��A�-c��2�n���-G~3�q_Fz��v��2_ұ'
��y�n�&񟈒�H���s��s#�e�b��pҲ�qݧ��#_�f��]{z�B(ɝp�Q��մ��i�R�9��~��D�����J�pɽ	��Ʋ��5V�c��5�@��4�iw�S��6ר�=���nG|۔�c��*���M��GHJtIy
uɭ	�Z�멉)+�#��_c=��;~_���j���7���R�\;��CD~S��v��)��@p?��׹Նڷ�m&%�1��jG~[<,���!�ڄ�ȯ~�xW:����86������(���w����q�� -�s�w]�8\2@Y'�0�� Q_��ҰGt��D���;*�a<\���t��f���?�-Ul�M�O|w%p�
�8鸱�Ab}���7�0�-"���6V(n�v8������H��vL�Λ�ɝ��10�A���y����4v GM7�������hŞ���uȥ8�4����4N�1�5o��Ar��C�}\�˙����~��\Jp���\;h�IIvq�D��^�$d�ז;e5��8=$U0�a������݁t_��. *�����M{�
���[<2S�!�G�_X����0(�	�ʔa�cE��iM�ig�,�g���J(�̔V���ۙ����{��=�\xkυ;z���5D�����3�^Q���[�c���XM:3Đ(��B�TV�]�~�T8��W�U������V����P�ȅu(:�][)>$���K7'%pU��
gE2�3-pa�
�K�9�<JH�/�\��h�8e0���;�x��LY�s!M^�C�ϯ6�plH �lq�X?f`*�.=õ�и=و� �^
O~�)�a�)����

���l����fq������Ä�g2m�70�M'�#	R|�af	�{|���n��Gr}�e�%���G��E6d�6!sG)�b mr(\�4U��y�b�{�!Ӟ��c� 9��n�Ĥ�����}A�U�mbs�W�*���u��i%�?�Â]�~5�3���r��x�	���/d�J�( n�{�2>��LIҰ+��F�G�Mzgy0#덀����&3�}�_���Bj4�ܣTF;A�= �͗��'(�3=�������rpо�e���72���l���huB��J���R���+Uh�i�8��R�/�Gv�vn�}ܥ���3ǅ��B�Z#�ϩ.�p�~w�)�rgP��&uA1�p��P��0.� X�B�<�4�iT
��j(@�S3��#�>�j0ҹ���w�T�:O�Ǹ����47F�:���sW���e՜��xBDW�Fb��.���XžS*K�ڡ�"0?��	WBȥ�VHdWO-��a?Ϲ�W:���P;�I(Zf��d��W�O�ӼG���wT�h	g! �� �0��'�*mR�C�:+�w�<� �,�I�y����q���4P�*ڟh�)�O`/
g�[*�"�<�2`&�l�{�/����~b���p�U�D����ex!-�m� +r�:Ug@6�
Z��y櫲�F�쿋,��7�:�         �  x�mU�r�8]_}�? ��[�2qȤ+MOIu�F`hp,�����k��N�s��������U��0Ei�ܺ<����r�n�S&!�,��÷P׮�Q��0�9>�k�*i���X�0��W�Z�0ŉ����m����+�L��-\��h����
Ri�$j��Fk��[n��R�=���nQy�b��WI˝���(��U�Jb`�c���5U�MOGXn�!iOo��B��*� ��V��sʰ�s��V&%&�&�m�P�'�)'��y���׷���{��%є��fa�V�<�����0����"�� ��pu}�����
��ٺz�_�=������^�/@#ZK�烁O����%Ҕ��0��8���Ë[��`�ԖJ�a���5��P2b@X�;���x~��E^)�5� wxo�|�B��J�4Q��,��(���ʕh�Iz\2�N�����7�*9E�*�	 1A���|�̵U[�Ӭ�F��:9qd
L��c"��<�]N��J�܎_ '���v�)"��6ϭ���v)FX�bpu��b��lf�k�W�˵�t�]�j|���b�� g��2㿼m+��z��P��{�7E��)����B�mb�c$\g���VD��;�A�IV������%b�
����4�X"��,#���a�ؒ���-���c>��,D��u�<�S��t紋�;��{P�|����B����z옽�8�,)��ͧ���Z�к�?���R�4'"E0�������P�P$;`5e�B��:�$:�SEP�}��-��|���2��}�9�تu����q49V氹�ظ�V��;�����5���b�j|/��e3}=�O~
�TKJ䱪^3C{��4�o���Ǯ����i8�T0C���>�;6�RwR��baT.���]w֦xj�~�� _ʦ�ې��S�$�����eA#Ϻ��ǹ�_ŏ?!����         �  x����n[7��ç����q�e���0�.��`���teH�(��=T���.�����9�1ӷ�8��y��^�%HJfi^8	�z���_^�˺���q[�>���?_�۸�I.%Z1'�YJ(sRz�Μ�i�N��r�Z�;u�QzHM����X�^� �ܻ�Wb/��j���s�_N���vALɁ/E��D�޸X��r8�u?��fm�9|����^��X����� �1��S����������kϮf֜v�D�ԑ�]���Nk6�^�v��I₈��?Ȑ�}��51ӗm���Os�*�(�[k�8� �i��ي��Wf��n�+=���Q��fZ*�s�]{xK<E�o��v�qF�=K/���a��.���7H�4{D-�y�#J80�Q{�J��3>�7-�a˔ͣIG#A�0�q�1���X�,�0�5��m걌�T�gd�*h6�*���u���B*Y�\f1`��$I������z8�O�=��zf ҄��~ϓ��E��Ȝ��p��zϵp�A��a�
��r�Ήv<;����1t��l+A)�-� �
kx�o_���J����5��T���K�N$wg1�S��*�,A�h
����09���y�O�E��2��X>��5	�<@�I�tX�т��jI}��2Ɋ����7@*I\�72��ƵWDi3M*6PT��}2������?�q;��Á���5�qp� �*�<��Ã����ZD嚰� �p�?l��D�) w�D�I��9�c~;]@�1T�$p�~�����l�#SX"�x��~������8D0��R��=�\��2�y��!6(-8V0�c�����ߢ��&-�����4�H�^�C�i%+��6Pyx�y>��~lh\K��.�v�x9�5̒�����r��3��EAE��pt��{�w
�j/��p�rL Q��Dl�Q��y�Kx4ov�L}�s�b���N�x�L��p]�������2ai�ʎ���/B��f�P>��SJ�B��      	   a  x��Vˎ�F<�b�^$#��q\?ⵝ5��&F�\F-�J$C���SCQ�0� @�zz����)�*�c���i�}̉�b%}ŃST(Ǥr����]�+In�vs��cL��;�k�UV+r��ݮ�!�J��yA�15���1��!����^P���)�1���c������M��C�����j�5.�O( �V��k��_b��B�����Wd��>�S�/�-��"��6)��8L���-�*0�8'�ܵC<t�#����U���36��꜠R[M>uC���&��2
��>f���h��<�Y\.����P7�N�ئ_��b��3:d��Q��&�c<T�l���n��>���t���~�Y{���' ��T�}����&Tp�@�u��xN�0VΤ�LXUN�~l�����]��۸����E\Ɲb�9�����������������7�-Ǯ� '�0�q�^\��}�Ku���9�'qʁNSǍ%� 0Ǧ��/(<tǎpo�	�:�Y��J߆����-��t�1��W��0��e�yƥ��\�N���4d���qb���T�`V*O��!w�xwH@u��O��0n��O̟�b<�sH�2��.OJaJ1esA��*��{�Aow�ɩ=�@{΋D� K�	>m�.�\I���^��ئ��yt(_B�R1#x_C]�� ��Ǽ�e�ݢu�=g�f�8�Zzr[C�C]II���O�M6�i�i�%�Xf��M4n���?ty�U@�$��3@���/�X�S���pqa�,W��J��&~�_��7�+�QdWɢ���: ���0�|W�z<�}�7�t�/�
F�m<�^��55چ��N�w����O�{wV��wp$-�e���DxK�s�2 ���d������+H����;S��#��K��TJ�+8d.����#}(TrP���U��뇉 �����E]1g'�����F��j2�I�%�X���^R�p�٘U�%ܿH����qU��=�Ŭ֦ �t���]��y�Ӽ�S��0���z���`K`��jw�'�h�@^0��ve��J9��㪟�.pz�Y�Eph�ON{�Ǒ^���}���a0 �h&�.k���R�����.��)�)�F��Z��8kC	R��g9U��D�/i�l�E�Û��/hP�M�H�� �D0K�U!v�2w�2�n�
��į
0{0}��n7-�O]�8��p,(ì�~vL��V�פ����O�&�!p�=���*C>�(h�x�Nrb4��9�`�N�������}��n>�u��u�_,��RS.�px$T���V���h���|��\��e�?-h3���A�P�8��~p�/�N^Á�~NۿUU�/㚠     