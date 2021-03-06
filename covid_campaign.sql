PGDMP         4                x            covid_campaign    13.1    13.0 #    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17502    covid_campaign    DATABASE     Y   CREATE DATABASE covid_campaign WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE covid_campaign;
                postgres    false            �            1259    17802 	   candidate    TABLE     J   CREATE TABLE public.candidate (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.candidate;
       public         heap    postgres    false            �            1259    17800    candidate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.candidate_id_seq;
       public          postgres    false    201            �           0    0    candidate_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.candidate_id_seq OWNED BY public.candidate.id;
          public          postgres    false    200            �            1259    17824    post_rally_covid_stats    TABLE     �   CREATE TABLE public.post_rally_covid_stats (
    id integer NOT NULL,
    post_rally_date date,
    post_rally_num_cases integer,
    post_rally_case_growth_rate numeric,
    post_rally_num_deaths integer
);
 *   DROP TABLE public.post_rally_covid_stats;
       public         heap    postgres    false            �            1259    17822    post_rally_covid_stats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_rally_covid_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.post_rally_covid_stats_id_seq;
       public          postgres    false    205            �           0    0    post_rally_covid_stats_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.post_rally_covid_stats_id_seq OWNED BY public.post_rally_covid_stats.id;
          public          postgres    false    204            �            1259    17813    pre_rally_covid_stats    TABLE     �   CREATE TABLE public.pre_rally_covid_stats (
    id integer NOT NULL,
    pre_rally_date date,
    pre_rally_num_cases integer,
    pre_rally_case_growth_rate numeric,
    pre_rally_num_deaths integer
);
 )   DROP TABLE public.pre_rally_covid_stats;
       public         heap    postgres    false            �            1259    17811    pre_rally_covid_stats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pre_rally_covid_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pre_rally_covid_stats_id_seq;
       public          postgres    false    203            �           0    0    pre_rally_covid_stats_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pre_rally_covid_stats_id_seq OWNED BY public.pre_rally_covid_stats.id;
          public          postgres    false    202            �            1259    17835    rally    TABLE       CREATE TABLE public.rally (
    id integer NOT NULL,
    candidate_id integer,
    county_state text,
    date date,
    pre_rally_covid_stats_id integer,
    post_rally_covid_stats_id integer,
    case_growth_rate_change numeric,
    death_growth_rate numeric
);
    DROP TABLE public.rally;
       public         heap    postgres    false            �            1259    17833    rally_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rally_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rally_id_seq;
       public          postgres    false    207            �           0    0    rally_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rally_id_seq OWNED BY public.rally.id;
          public          postgres    false    206            C           2604    17805    candidate id    DEFAULT     l   ALTER TABLE ONLY public.candidate ALTER COLUMN id SET DEFAULT nextval('public.candidate_id_seq'::regclass);
 ;   ALTER TABLE public.candidate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            E           2604    17827    post_rally_covid_stats id    DEFAULT     �   ALTER TABLE ONLY public.post_rally_covid_stats ALTER COLUMN id SET DEFAULT nextval('public.post_rally_covid_stats_id_seq'::regclass);
 H   ALTER TABLE public.post_rally_covid_stats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            D           2604    17816    pre_rally_covid_stats id    DEFAULT     �   ALTER TABLE ONLY public.pre_rally_covid_stats ALTER COLUMN id SET DEFAULT nextval('public.pre_rally_covid_stats_id_seq'::regclass);
 G   ALTER TABLE public.pre_rally_covid_stats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            F           2604    17838    rally id    DEFAULT     d   ALTER TABLE ONLY public.rally ALTER COLUMN id SET DEFAULT nextval('public.rally_id_seq'::regclass);
 7   ALTER TABLE public.rally ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �          0    17802 	   candidate 
   TABLE DATA           -   COPY public.candidate (id, name) FROM stdin;
    public          postgres    false    201   �)       �          0    17824    post_rally_covid_stats 
   TABLE DATA           �   COPY public.post_rally_covid_stats (id, post_rally_date, post_rally_num_cases, post_rally_case_growth_rate, post_rally_num_deaths) FROM stdin;
    public          postgres    false    205   �)       �          0    17813    pre_rally_covid_stats 
   TABLE DATA           �   COPY public.pre_rally_covid_stats (id, pre_rally_date, pre_rally_num_cases, pre_rally_case_growth_rate, pre_rally_num_deaths) FROM stdin;
    public          postgres    false    203   #/       �          0    17835    rally 
   TABLE DATA           �   COPY public.rally (id, candidate_id, county_state, date, pre_rally_covid_stats_id, post_rally_covid_stats_id, case_growth_rate_change, death_growth_rate) FROM stdin;
    public          postgres    false    207   ?4       �           0    0    candidate_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.candidate_id_seq', 2, true);
          public          postgres    false    200            �           0    0    post_rally_covid_stats_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.post_rally_covid_stats_id_seq', 105, true);
          public          postgres    false    204            �           0    0    pre_rally_covid_stats_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.pre_rally_covid_stats_id_seq', 105, true);
          public          postgres    false    202            �           0    0    rally_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rally_id_seq', 105, true);
          public          postgres    false    206            H           2606    17810    candidate candidate_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.candidate
    ADD CONSTRAINT candidate_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.candidate DROP CONSTRAINT candidate_pkey;
       public            postgres    false    201            L           2606    17832 2   post_rally_covid_stats post_rally_covid_stats_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.post_rally_covid_stats
    ADD CONSTRAINT post_rally_covid_stats_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.post_rally_covid_stats DROP CONSTRAINT post_rally_covid_stats_pkey;
       public            postgres    false    205            J           2606    17821 0   pre_rally_covid_stats pre_rally_covid_stats_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.pre_rally_covid_stats
    ADD CONSTRAINT pre_rally_covid_stats_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.pre_rally_covid_stats DROP CONSTRAINT pre_rally_covid_stats_pkey;
       public            postgres    false    203            N           2606    17843    rally rally_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_pkey;
       public            postgres    false    207            O           2606    17844    rally rally_candidate_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_candidate_id_fkey FOREIGN KEY (candidate_id) REFERENCES public.candidate(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_candidate_id_fkey;
       public          postgres    false    207    3144    201            Q           2606    17854 *   rally rally_post_rally_covid_stats_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_post_rally_covid_stats_id_fkey FOREIGN KEY (post_rally_covid_stats_id) REFERENCES public.post_rally_covid_stats(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_post_rally_covid_stats_id_fkey;
       public          postgres    false    205    3148    207            P           2606    17849 )   rally rally_pre_rally_covid_stats_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_pre_rally_covid_stats_id_fkey FOREIGN KEY (pre_rally_covid_stats_id) REFERENCES public.pre_rally_covid_stats(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_pre_rally_covid_stats_id_fkey;
       public          postgres    false    207    203    3146            �   (   x�3���OUp�LI��2�t��K�IQ)*�-������ ��      �   Y  x��WK�9[w�<����1����I��Fec!͏,Y������n}�/Y����'���Ku	��bOj��~\�k���ܔ�D��n`u��=�&�76��{���p��Vf�5 �~�ك���z���7��c�_���ލ�����s�(�7Ys�u�����6F"�|��t(�MXW<ܽ�8��\�5�(���X�2b��*b�^��g1��s?��~��~����pI�ǱN�����\���]���o^�wϨy�{�;����)^>���?͆d���qC�w�8�F#�TM�u��y����-|�4'��f�D>Qn�W�,߼�
�A�h�l1{�E�EI��1���V�?��j�,7 %� >�z���thA�e���>��ER7Z<�klU%D�.��0	{�lZLR��P=�K^��H�н���7�aDK,݀(�C�B?�ek�jTCjwIq�ΐ�H#���_�K%�L�4��z��ߊC�����H���F x�JG���[�/��Ω8�P
��I�
 �?�?��C/���U[�
�K��<Kt�6!>e�zG=���6� zX��-f���> h��Yg�����N b�RЬ�߸z| �6I�C�SC;��&ݰ�����ZǮ�u��������nb�ڝ��Яb�ľn�W9� v�@����8���q���q���"������sD+�!Y�w���dJ��OTw���������m�\���1��߂�<?x����h��q���a���|͚�vw���al����E�N\��������El�
Y�� �� z Ë��3p
[S�G���=�k4y��C��i^�Ո� n@�����\�yǳr��p�&�u����y@��iH��1Ȑ6"ʋB́w4����"����ި�h1��Ĩb^�^�d���9�!b�@}�r����#��iK��of�۫��qu������m	kʼ�~�	*g31������(��v�w���tV�:l�l�ȷ�1���������fI%w8-�~4�2��qh�A�4�QOkΠ*�"/ C�iɠ�`���=�|�ܑ7+��,��nFU��T��ށu�����.��;P��Ýu�.{~�����/�̇�mQ� �wQ�s-��H��λCv|<{F2��X^������~ǣ�M_�W�X�;n�bb�%��<�1@:o��J{� c�Z���������w�ނ�B��*C�V\�Ї�<����ƺ��^���� ������@8f(/� B���y���������w&�/D���݈F�v��I�wA��(ݖ��d�RȆ��ED�I��      �     x��W[r�8��)�M�e�����ܛ��Gj2�e
A��L�?�~d��S��3����#2����0�R���
��a!���2��Qxj���(�3�Ձ�!��_i��ņ����^�`��9���y�.��8��J��94Xj���ݨw@�Ł1.)�s�z�w�1b:G9��+����Ӊ7����d�+OV���=!%`�:������\���.����� ����[� \�ı:�5�u{�F8�0���G��0N��ά�B�q�0
�lr�"q�C$s#�����A�3���l�H�D�`�Ԓ���L�ru������f�᳕� �+	��SH4�I6q(�
^y7��8�8�Z6o	��U�l"!M��o.zd�� *�qu	Xƽ�|B<�ا�L�t��ꎤ��y(�в�� ��U����MLI�d�R�]�v��X"��5I�h/�~�;m&��󝮿�MJ�t��r��֋њ��\:�4����<q�f�eμ���x���6�`�!^�O;�ќls�.$q9���q�YqڦYV'��eH�f��O��ˀ�9[�� -��竅�6�φ[��-+�՜'���]I��.M)��r��.Z��</�QZ�Ά���D��������a��n�=2<��^�<���3,ms���J�r�s��f�#q"r=h����!�!�m<l2����W�p �'�2.[��ၸK���:_m+kL0�<̾���och�vjM���w�_�Z��~«�mD _)����i��ru�HR��+S��a�!�X�麝z	Wi
;�m��"��cD`FPl�a]�^�Vf%3E���T��H4�Ƒ�0��ﻈ��fԉ��b��}��Gr�E ��]ϚrS�:���&!u��\���5��.'l:偝9�N��8L ��{%+�qG*v
�zӄ+8~Q<C�+�x��R� WC˃��E�g����XS�"4��ތZ�P�'+c߳R�i_s����WC���c�(mQ�	i��g��*F%g8,�>����I�E�.rf_˷b5�D
~��a���r���8ъ!�Z�.��@����0F_[�rqFU'�3�juL�@� gq��GT�LO����5�W�a�M�g����Z��D�������1x�>Ȯ��b*�'�\��&�B'YI�G�)r�B(v�8�xn�ցcPS�`����x%�O�39��uWӅ�R���)�^O���b�|���~�-�Kb�n|��G���r�a�B��@X��:Z�e�s`' �z{�,i�oN���R~q�����+R��      �   �  x��X�n�H|fE~�����8���Ɠ`2@��-s%��$��ߪC�i�,!@�՗��uNS��i��z��4������l�Ma*S]U���h���!ۢ*�qF��ߛ�n�MWo�o�6����{�7m}Leë��9p�h�b���U�����≥KO[����������~ح�]�Cߵ�#V*_zc=xƇ�<x_�n��CS/V���~h�O8�)��
ɩ��ԋ~}w{�.V��>
F.�Tg#	�O*��~�4��#S�c~��`UvA%L�[��B�.ٺ*]��B��gd�U&�_7ö�M�R�"��8WY�m���(����]����y���M�� 6�f=���_w��p��Vk�b����_g��@n�]�?���C�w������DG���lx+!\�������k��'A@7����D	L�w�[�uۻ~��/��}�FP_iu%�{"����]4}WOr�46��T�)����~�7�zf� � (�M���z��z��7�}��ޙ��!�N�]��w� �w�H�\�%�����\�P�E�u�v�}��DϬ�@C�0��V� ���i����/��iIU�`�>Sv�R�F˩ݴ���_L��]
Х��K6)(#�7�%����<Q�)�~k����w]�\5���f	s�v��t��M�x���~X��{r������2t���Ǻ�!�zAi}�b1�����h�A)��De��F�����x�$
��tM��i�u{�⸜!h���ƙ:�`�YS����j��$3�1�h�O����D����_�g���%���C�V��ЂS�-ApC@�
�l�:a�̌���n�;G��W�ɓ`)����e41�1Lgvj�m�vt��/$����
�IR�������v�Q:9�r�t��2���~�5z@c!��G9YU`��2ӂ#�O�������^o'&Kf��,{4W9��\ň_$@�s���
���U�f���6�C"ݢ ��l&w�Qr�a�g�I�)�����
uT���I����6�)>�5+�oͺ���e,�q�Gs�^9j���?���%#xB�Y�8��䖔�E͟�C/�`��G���w��c*/T�8�b�:c���F:&����ާ�ӣ���ݤ�h����V�j*[O8*O���L:x�ץIяYD+�U�~��	#IV�Z�<��~�Syq��1���-����3��c	?�K�pn�ۇf��]�b�^�o̲ ؿ�Le�����}�xI,�ˣÊ�d�I��@X*m�*�mOK��V�zv���rYeݘ˰�$��>+PI�^�}i��Pe婊׏�����x+8q?;�jR�z�7FA`J�C�<A�5뱽�b�B7�v�4/}�MS��V��E��,�)��/�n[_�K@��3q��,�n��]3L� ՏI����$bB��Ì��H�	`KW�DMd�WAj���Ͱ��t��J1�U���7�H�8�Ck��\�O͙�D@+3n��］oW���a��'^m4)1���Y�n7G���B~T�T�S���]�3�
���M0��fT�خW��W��p8c���S�z�\o��^�Z��4�Ӊ�V�$G8���ŨHIM����~�	X��i�z�V�N��fI�0D����E��0��0�O�n��NMA��.���p\`�4�i���R�� '��hU?6��L���O�&V�3���� ���I���ڲ�URI�}K=�5����x{ ������h�htc.�A%�3DK�)/���Z�^�O�8��ɕv�i��&��ǸC/��2�F6��I
��e��v�h��e����LcŢ���r?Y4����yƀL�D�R��U��>�w�ܑŽ
m ~k�HYx��R=/z��Y&Z�����)��_�y��rp4�����|�C�!�:2������鮞V���qF�,ߠA��W���n��}s�#����J�C�Y)A���g>02<p;�c��`u�`��桃@;�G	y��Ir|�b�$��s�g2ǅ	����{�)p�4ʖ����mR�K�й�i�nx	x�\ۚ�f�]�'i��(5��;��:����:�%}��v�� 8�߁~�qsee7J-�ڧ�����)Cʼ��d��M�Z�s��\ܕ���C���JgƜ�u<u���J���F�^     