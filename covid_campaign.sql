PGDMP     "    #                x            covid_campaign    13.1    13.0 #    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    covid_campaign    DATABASE     Y   CREATE DATABASE covid_campaign WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE covid_campaign;
                postgres    false            �            1259    16968 	   candidate    TABLE     J   CREATE TABLE public.candidate (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.candidate;
       public         heap    postgres    false            �            1259    16966    candidate_id_seq    SEQUENCE     �   CREATE SEQUENCE public.candidate_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.candidate_id_seq;
       public          postgres    false    201            �           0    0    candidate_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.candidate_id_seq OWNED BY public.candidate.id;
          public          postgres    false    200            �            1259    16990    post_rally_covid_stats    TABLE     �   CREATE TABLE public.post_rally_covid_stats (
    id integer NOT NULL,
    post_rally_date date,
    post_rally_num_cases integer,
    post_rally_case_growth_rate numeric,
    post_rally_num_deaths integer
);
 *   DROP TABLE public.post_rally_covid_stats;
       public         heap    postgres    false            �            1259    16988    post_rally_covid_stats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_rally_covid_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.post_rally_covid_stats_id_seq;
       public          postgres    false    205            �           0    0    post_rally_covid_stats_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.post_rally_covid_stats_id_seq OWNED BY public.post_rally_covid_stats.id;
          public          postgres    false    204            �            1259    16979    pre_rally_covid_stats    TABLE     �   CREATE TABLE public.pre_rally_covid_stats (
    id integer NOT NULL,
    pre_rally_date date,
    pre_rally_num_cases integer,
    pre_rally_case_growth_rate numeric,
    pre_rally_num_deaths integer
);
 )   DROP TABLE public.pre_rally_covid_stats;
       public         heap    postgres    false            �            1259    16977    pre_rally_covid_stats_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pre_rally_covid_stats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.pre_rally_covid_stats_id_seq;
       public          postgres    false    203            �           0    0    pre_rally_covid_stats_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.pre_rally_covid_stats_id_seq OWNED BY public.pre_rally_covid_stats.id;
          public          postgres    false    202            �            1259    17001    rally    TABLE       CREATE TABLE public.rally (
    id integer NOT NULL,
    candidate_id integer,
    county_state text,
    date date,
    pre_rally_covid_stats_id integer,
    post_rally_covid_stats_id integer,
    case_growth_rate_change numeric,
    death_growth_rate_change numeric
);
    DROP TABLE public.rally;
       public         heap    postgres    false            �            1259    16999    rally_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rally_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rally_id_seq;
       public          postgres    false    207            �           0    0    rally_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rally_id_seq OWNED BY public.rally.id;
          public          postgres    false    206            C           2604    16971    candidate id    DEFAULT     l   ALTER TABLE ONLY public.candidate ALTER COLUMN id SET DEFAULT nextval('public.candidate_id_seq'::regclass);
 ;   ALTER TABLE public.candidate ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            E           2604    16993    post_rally_covid_stats id    DEFAULT     �   ALTER TABLE ONLY public.post_rally_covid_stats ALTER COLUMN id SET DEFAULT nextval('public.post_rally_covid_stats_id_seq'::regclass);
 H   ALTER TABLE public.post_rally_covid_stats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            D           2604    16982    pre_rally_covid_stats id    DEFAULT     �   ALTER TABLE ONLY public.pre_rally_covid_stats ALTER COLUMN id SET DEFAULT nextval('public.pre_rally_covid_stats_id_seq'::regclass);
 G   ALTER TABLE public.pre_rally_covid_stats ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            F           2604    17004    rally id    DEFAULT     d   ALTER TABLE ONLY public.rally ALTER COLUMN id SET DEFAULT nextval('public.rally_id_seq'::regclass);
 7   ALTER TABLE public.rally ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �          0    16968 	   candidate 
   TABLE DATA           -   COPY public.candidate (id, name) FROM stdin;
    public          postgres    false    201   �)       �          0    16990    post_rally_covid_stats 
   TABLE DATA           �   COPY public.post_rally_covid_stats (id, post_rally_date, post_rally_num_cases, post_rally_case_growth_rate, post_rally_num_deaths) FROM stdin;
    public          postgres    false    205   �)       �          0    16979    pre_rally_covid_stats 
   TABLE DATA           �   COPY public.pre_rally_covid_stats (id, pre_rally_date, pre_rally_num_cases, pre_rally_case_growth_rate, pre_rally_num_deaths) FROM stdin;
    public          postgres    false    203   I/       �          0    17001    rally 
   TABLE DATA           �   COPY public.rally (id, candidate_id, county_state, date, pre_rally_covid_stats_id, post_rally_covid_stats_id, case_growth_rate_change, death_growth_rate_change) FROM stdin;
    public          postgres    false    207   }4       �           0    0    candidate_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.candidate_id_seq', 2, true);
          public          postgres    false    200            �           0    0    post_rally_covid_stats_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.post_rally_covid_stats_id_seq', 107, true);
          public          postgres    false    204            �           0    0    pre_rally_covid_stats_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.pre_rally_covid_stats_id_seq', 107, true);
          public          postgres    false    202            �           0    0    rally_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.rally_id_seq', 107, true);
          public          postgres    false    206            H           2606    16976    candidate candidate_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.candidate
    ADD CONSTRAINT candidate_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.candidate DROP CONSTRAINT candidate_pkey;
       public            postgres    false    201            L           2606    16998 2   post_rally_covid_stats post_rally_covid_stats_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.post_rally_covid_stats
    ADD CONSTRAINT post_rally_covid_stats_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.post_rally_covid_stats DROP CONSTRAINT post_rally_covid_stats_pkey;
       public            postgres    false    205            J           2606    16987 0   pre_rally_covid_stats pre_rally_covid_stats_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.pre_rally_covid_stats
    ADD CONSTRAINT pre_rally_covid_stats_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.pre_rally_covid_stats DROP CONSTRAINT pre_rally_covid_stats_pkey;
       public            postgres    false    203            N           2606    17009    rally rally_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_pkey;
       public            postgres    false    207            O           2606    17010    rally rally_candidate_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_candidate_id_fkey FOREIGN KEY (candidate_id) REFERENCES public.candidate(id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_candidate_id_fkey;
       public          postgres    false    207    3144    201            Q           2606    17020 *   rally rally_post_rally_covid_stats_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_post_rally_covid_stats_id_fkey FOREIGN KEY (post_rally_covid_stats_id) REFERENCES public.post_rally_covid_stats(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_post_rally_covid_stats_id_fkey;
       public          postgres    false    205    3148    207            P           2606    17015 )   rally rally_pre_rally_covid_stats_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.rally
    ADD CONSTRAINT rally_pre_rally_covid_stats_id_fkey FOREIGN KEY (pre_rally_covid_stats_id) REFERENCES public.pre_rally_covid_stats(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.rally DROP CONSTRAINT rally_pre_rally_covid_stats_id_fkey;
       public          postgres    false    207    203    3146            �   (   x�3���OUp�LI��2�t��K�IQ)*�-������ ��      �   q  x��WMz`7[?ߥ��?ܥ�?G���v6��Lг���Ǔ�_�����JY��7ϴy��N5�sV2��_��?���DeG���寪�A�$�{H���XwK�s�G��� �Q�h�GF�#n�MK��O��F�~���z���MG��}2��g�x�U4�qPY�SJHd�`|�B���UM ��WWxvh
�q�|Z4u��xav�U/��"i��s}N6����2���\�#�di֠r	��+V�"��~q�q<#��f��P��/iZ�����g�B�:�ˍFf!��Ȧ.�@�M6�����&����D�طЉ߼X�A{k�,1[�Ei�Y�Aǧ�e-΃� ���X���q�? |���
��th��x	M�W����7�͑�/UD[���0	[/(Z��sȡ�54W����{��П �qH-1e<���y Sg�E!
�f��a$E�:���#t�� ��\]ʎ�`C��K�-z+�&��_�<L�a���r(m�:Zo���g���C)�J��*�H)�멇^h��w3�$���Cp,н˄P��9����Q
��h0<� � f��\���S} ���Yig�����?� Ē%�Y�vu �I�A�]C=��&ݰ�����Zۮ�d��^��	x�p��c51JmF��Я`�����W�0�dpߚ��o���s�6ܽ�E#�ɍ�qb�9Ɯ�2�,��ZF�Q�%1�����O�yO����e�����1���oA5,<Ls�5�5.�[4��\�/�k�����c�zr���y��	�`���t��2꾸Jd�j��4/R�g�:!&�;�s�ݛk4�ۉC��i����߀���9��98-������o��Ѓ���=6V�����ݐ��c�!lD#.
1�hf_=A�l�ߢw�����q+�Z�!w��[5�zp���`��0���~��=���%h���u�뙂������#�r�qq�Y��`a<"�8͟����Ç��\k���a�1�y#�q�{ ��W�<�Ro��7����R[C��r��r�CC��'�X���?"�=H��2�n�Dx�߀p������G���f�t�^8����VXhWYOX2W�g+�Q���:W�ʹ��Ew�-K�x�]��9�o�b?�V���H��(���׮�"z�Q����;f���C�Fٍ��^k�l1����K�ѫY,�7V0Q��M�]0�7�k��5��k�X���y�`�����[�d�}y^u����
�E��s �F�k��{t�g ��O�a�4�A��� 00�,ڜ��q8#������_@@؍(Tm�x�㤛���z;!֟�o	�����9��Su;c3���c����      �   $  x��W[r�8��)�M�e�����ܛ��G��2� �C�̟Y?2����c��U����Ir��RX�x`uD�ڰ���sŇH���<��j�g�����g�Ӌb�cpig�K0�МAy��xμ^��u�MS���,�N��n�;
������c=�;׃���?1��g�D����ě^��z2˕'���x���0vR�|������~�`ud{�	���-^ �h�� ����t#�g�h�#\H�׎�g�w!���w�h6�e�8�!���~^
s�Š��i�6^$E"g�[jI`�J&C���H�K�~3���Jr�ҕ���)$��$�8�y	�������q^�p-�����I6����B�7=�T�	渺��^�l>!�\��e&F��\uG�~�<MhY�o�M�*b���&��z2}��.R;cb,����~��p�ŝ6����N�_�&%I:Q`��l��hM�l.i�y~�t�8b���2g^�wy�r��d�Z��/˧��hN��]���b���8m�,��L��d3}ħG�e���-����W����d�i��g�-�����jN������mv��nt��r�	��^���(�vgC�d}"�X�}���}�0�h����l�H��|������߃��u9�9�w���8����RI�όԐ�66�`|ɍ�+[8�l�-B��@�%v�`]��6��5&y�f_���14r;��&����/x��x?���6"��Gib����
9��`$)l�)��0����B��t�N����4�� Ͷ�j�O�1"0#(6��.�R/+���"N@`*�q$h��G�A��]D�b3��C|1�>��#9�"�⮁gM��_�\�Z���Q�#�ݭ�Z�T��j^=��F�}�⅍�>�3��iCz�
^f ��^�
sޑ������4⊎_��聕F�e�U)�	���@s�Ң�3��zv��+�'L�soN-p��'+e߳T�˲�,�A���[���.Qz('��w�U������,b˿'��qP�؛}-��3)�w�����;6?��D+��k��<���Ø}m���AU� n���
0]�C���6�Z���)j15�X^�}����r��x���%\O���{{��]����1/�}�����kR+t����x�*ם!�b��3�w�&o89u=}oAk�b:u?�3~]wueH*>,f���s�؛������o> f|jL9э/6���V\�8��UI_	�#��W�myN �@]o��-����c/����N�0�D���E�J�?��_���      �   	  x��Y]o�H|����	������..���0h�g��%�����jra���D���3=�]�3х.>7�Sux����n�mwͶ0�)e^�෴>�\j�2�)�׻�������|����s�Xm������@nMV�w]~���Z,,~��t�z��S�>v��y�������wWUߵ����
���/��D�CPįU�y���V뛏m�7w'$���,˔5Gɩ�U�V����s�Z7��ъ�"���e.9�.}R�����>�rL�ː]P	��V�c�O�]	?���:"f���6u����+�u��Â;�c>�e��=�[V���ᾭv7ԏ�ѺhS�5�m�і/���-[Wm�?�Ykba�Q�Ai��oVݏ��}���m�v����*���J�`a�tVVt�W�z��n����oן�lZ3�)ǉS�'��7�oM��n�Ks1���qG��ށ��_v��k�Y� $c͐I4�H�T���j��.�+�+��zD�t���լ��n;�Ǵ!@txg�1y0�aP^6�u/Y}!�t.�%�i.�/9�fi?*������[$��b,X����0N���C��3_�M�B@���0Y��ђ��f�=u��ՠ��X2+�IA��n��g�=�m�r�r�Vk�aܽo��~]o�/x	�%�VKg�yY)�c��F��z�����Ci+h��|>a����]��,��'�A���~��x ��e?L>*_v�׺��}�`� %Ys,KiPO����4�k����a#o�ǀ5��W�	g��EXf/����hIʖ��պ��&[���Q�Ft[�*ES
��8�X�`���$�t�Y5���m)�H�#�t�	1�$�16��9�>�$+�Dp-��۞�F��T*'��]8V
�,%��n�fA�Jt��h�e��RE5HX�H@�Bi	\�$-�|����'���s��T��w�f73A�0�,��K��!*Wr��
#	��K'���W[�^��M=?j2� PI�����:�opq"����	<r(ء�����O�:���-�pKW����s�c��M����%$��v��T��K���C�=U�ݹ�	�D^���J�Q�.'�h&C�B�5�TԮ�]�p�;��B��#���rdY(�1��va#�O6�x}��)����f�����H&6,S�ē>�Җ'k�<��S=�#��;�;����V^�M�d����9�UFy�֗�AR�,�H2�ѥ�h��y�X��P�c��A���{��1�sZ,���C�\���}v��i�)��:`�ȫ��ff�Wp<[�r}Oչ>��jsq������P��T�M�LZ^2r�� +��C��Yy�ɿ���G�̒<_��8��&��T�7qn��������/��w��~�a
|�Ꙝ�[U0o�{�_v+�vS��%$9�h��\�W�D��}��s��%F��N�� �uX=\���	 ��v��)]1y��?�]��K[+��-����h�+�ّ	��R�����r�x>{�!�T^��w����L��H.���;���5ȁȀ���-Ȩ�U�=�	_�=�H0��U;�1ɛ��$a�����n����4�HldD����i��h������'ÍB�"��'[�q�_!Z�Sk-˙�S����ڢؾ�u�ĥn ы�C	ח���A��HɨȠ���ɉ^Gi�S:l����߇>�_���R���4���Wu�<��5��+�-���!N�$_��	�3���Ӝ��k�R)�u�X���:I-�6��Xү�'���>顿��3M�ˤ�y�0=�2����#�q�(���!F�%0	�JYȘ�J�g���2[���$��x/]qӢT)�v�8���G�nC�bAR$P�Qܭ�,p��҈�5n�&b���Fi��>��������|���Y�����L�%��&�̠�pط���>|h�k��.�)V��W����L��A)e�_��H2���p��;I�_�ȱ���iX�Tv�L﫧�j>V���g z!'�B�K��p�p{�ߡ>ދ��	,��\G��tf�[�绉:�@��|<��wOt��^3���HC�ۡ���׮F#��I$�!���柸�陠Gm�Qh��$���M�j�͓UХ�3f�X_��ќޝZ������hm| ]�q�4��Qi�/�_{�y�W-�wg!9Z��'�3i�AX�ʹ��Hr�e�Q�O2$���������ك�;�.G�����Bm���+�P�p9� ��/����o�y�.<h-���5� :����J��_� �     