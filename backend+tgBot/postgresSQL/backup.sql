PGDMP         8                {            fsb_database    15.2    15.2 (    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    16398    fsb_database    DATABASE     �   CREATE DATABASE fsb_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE fsb_database;
                postgres    false            �            1259    16427    events    TABLE     �   CREATE TABLE public.events (
    id integer NOT NULL,
    name text,
    description text,
    photo text,
    "fullDescription" text,
    teams text,
    extension text,
    datestart integer,
    dateend integer,
    sponsors text,
    parent text
);
    DROP TABLE public.events;
       public         heap    postgres    false            �            1259    16426    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    219            (           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    218            �            1259    16446    parents    TABLE     H   CREATE TABLE public.parents (
    id integer NOT NULL,
    name text
);
    DROP TABLE public.parents;
       public         heap    postgres    false            �            1259    16445    parents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.parents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.parents_id_seq;
       public          postgres    false    223            )           0    0    parents_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.parents_id_seq OWNED BY public.parents.id;
          public          postgres    false    222            �            1259    16436    sponsors    TABLE     i   CREATE TABLE public.sponsors (
    id integer NOT NULL,
    name text,
    about text,
    photo text
);
    DROP TABLE public.sponsors;
       public         heap    postgres    false            �            1259    16435    sponsors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sponsors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sponsors_id_seq;
       public          postgres    false    221            *           0    0    sponsors_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sponsors_id_seq OWNED BY public.sponsors.id;
          public          postgres    false    220            �            1259    16418    teams    TABLE     �   CREATE TABLE public.teams (
    id integer NOT NULL,
    name text,
    description text,
    users text,
    events text,
    photo text
);
    DROP TABLE public.teams;
       public         heap    postgres    false            �            1259    16417    teams_id_seq    SEQUENCE     �   CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.teams_id_seq;
       public          postgres    false    217            +           0    0    teams_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;
          public          postgres    false    216            �            1259    16407    users    TABLE     7  CREATE TABLE public.users (
    id integer NOT NULL,
    login text,
    pwd text,
    date date,
    first_name text,
    last_name text,
    petronymic text,
    teams text,
    actions text,
    telegramid integer DEFAULT 0,
    role integer DEFAULT 0,
    rating text,
    sponspor text,
    parent text
);
    DROP TABLE public.users;
       public         heap    postgres    false            ,           0    0    COLUMN users.role    COMMENT     I   COMMENT ON COLUMN public.users.role IS '0 - user
1 - trainer
2 - admin';
          public          postgres    false    215            �            1259    16406    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    215            -           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    214            }           2604    16430 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219                       2604    16449 
   parents id    DEFAULT     h   ALTER TABLE ONLY public.parents ALTER COLUMN id SET DEFAULT nextval('public.parents_id_seq'::regclass);
 9   ALTER TABLE public.parents ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            ~           2604    16439    sponsors id    DEFAULT     j   ALTER TABLE ONLY public.sponsors ALTER COLUMN id SET DEFAULT nextval('public.sponsors_id_seq'::regclass);
 :   ALTER TABLE public.sponsors ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            |           2604    16421    teams id    DEFAULT     d   ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);
 7   ALTER TABLE public.teams ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            y           2604    16410    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    16427    events 
   TABLE DATA           �   COPY public.events (id, name, description, photo, "fullDescription", teams, extension, datestart, dateend, sponsors, parent) FROM stdin;
    public          postgres    false    219   \)       !          0    16446    parents 
   TABLE DATA           +   COPY public.parents (id, name) FROM stdin;
    public          postgres    false    223   �.                 0    16436    sponsors 
   TABLE DATA           :   COPY public.sponsors (id, name, about, photo) FROM stdin;
    public          postgres    false    221   j/                 0    16418    teams 
   TABLE DATA           L   COPY public.teams (id, name, description, users, events, photo) FROM stdin;
    public          postgres    false    217   �0                 0    16407    users 
   TABLE DATA           �   COPY public.users (id, login, pwd, date, first_name, last_name, petronymic, teams, actions, telegramid, role, rating, sponspor, parent) FROM stdin;
    public          postgres    false    215   �1       .           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 1, true);
          public          postgres    false    218            /           0    0    parents_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.parents_id_seq', 2, true);
          public          postgres    false    222            0           0    0    sponsors_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sponsors_id_seq', 1, true);
          public          postgres    false    220            1           0    0    teams_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.teams_id_seq', 1, true);
          public          postgres    false    216            2           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 3, true);
          public          postgres    false    214            �           2606    16434    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    219            �           2606    16453    parents parents_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.parents
    ADD CONSTRAINT parents_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.parents DROP CONSTRAINT parents_pkey;
       public            postgres    false    223            �           2606    16443    sponsors sponsors_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.sponsors
    ADD CONSTRAINT sponsors_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.sponsors DROP CONSTRAINT sponsors_pkey;
       public            postgres    false    221            �           2606    16425    teams teams_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.teams DROP CONSTRAINT teams_pkey;
       public            postgres    false    217            �           2606    16414    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215               P  x��W�NG�6O1��$Ǭ��+Ի�F�6k(JL�ZU�vBR�@U*�����7�f{�Hy��W����3���:j��w�1��9��|�M!#���IO�d"Bv�:�L�s���F5e��D51��-~{2�	��<��.�h��w2��;ځ��hG��X�h��\#���:��K����?ic(��4=s+�V-
OwvUG��E�%�04��W��+|8�1Ѱ���r�v��o�|�Ȯ�@/8dAZ��1��ȁ�� X�f�	јH_�Q��37�+���ϝOw��F~o��z����涳Q{ok�]���ݭ��`��n:���֝��F�e���ֺ�h��%��ڥ��.[�].;KKN�-.���b~��q�`e�h��d�^���_���`�񸊤W��_��T�Z�z�.��)���8�)�\!�H< �ײG��E�������-������A���
y.��O����|uL���  �y�O��	�	8�LAY��P���=�����	bC�.6t��'.� �N0����@ F�`S�t���B$�+��7E��0�T�ةO�!�1�B8b2�T���T��VOҺQ黴?di�]��8{Õ�9����CUa:�]@\�ι��'�1�SQLQ?ˊH�P���TD�T�^|w&����Լ+�[�����LL6�m�,����i+d�
?/G�:%O���b�ϧ���ӂv3�ę�F�^�tPլ��j��儍��̠toR�
��Oe�f[���1�H
i������-#s�m��ѽ��k��x�ޱu������&�P�`�����k��6,7�|>��1L>Z#L��)���� �>��z���bd�io��p��f�F?OM�����]�〱i%��ǤvĦ��0Jx��z��J�rܷ���񁈩2�	J4����g�����4A�t����CB��]��ɂ�9$-2���f�4��ycN��B���v��h�nM-���wKBO��C���So �]�w���jS�d�lE�<�:ccء��i����#r[ޅ9Q(	~�Zb�A)ꄲ�#�9#��Xڋ�,k��ڋol�P./kK��EJ�*?GK�F[�+O��_/���m���ka�@Ҹ#( H����w�4
~��2�ZXˬ�e
K˥�]�,�Vq�H��/��n�"
9��;�5�pĄ���(^�{���-���SȻ.��|͡v�Gl��L��|�١���^;bO��	��1�m�>+�,��k1K�6�g.�eN��8�K^G�i�/��۰B����	���b�V����э�_����ű�f������ �Ģ+      !   �   x�]O�1|��H	ꡘׇG���P`�A���16�P��c��:\1���z����,cF�޶PTLh��%��u&F\���ɺÙG�bzF����'���ϓP=����4��Q�;�!�͖����X���u&_�q��1�l�"�*Ӥ         �  x�EQKR�@\�S��|�Na�f
��H���@�ea��=!�)#h��{7�'Ydjޛ�~�:N����'e�N����2�8���q(��%�9�
�������^�;�t��>.r��=�MY�O�-����3^�_�>�p|5���v�5;��r��W{�gpU�+U�'c��|u�����h	��Ş`�� p�i��
�u�O�~���S�|X�Ojv��O�|m�l.����[!�k�Ȃ��-�����()���y�T��Ƶ�<`�@�����5�՞����O��C[��$���]i��mY��;f�������
B/)뱫��!G~�?�dE�UY�-Ui5^]�^�qd��Z�U�7���\��+��*s���i�O"Z.         u   x�-���  �P�+`E��R��f�x%sȦ)�|fF�~�����:����`,�~s1�X�*����`ոpN*����%�7����N�z�q�i��o5n�ig�j%ɏ�R~\�'U         ^   x�3�LL����J-����0�{/츰���| sӅ��]��ya�ņ�=�v\l�6�匎�476541531�4i��r��qqq �1&�     