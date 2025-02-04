PGDMP                       }            postgres    16.4    16.3                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    5    postgres    DATABASE     �   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    4867                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false                       0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            �            1259    16574    channels    TABLE     7  CREATE TABLE public.channels (
    rand_id character varying(255),
    cr_rand_id character varying(255),
    username character varying(255),
    name character varying(255),
    bio text,
    poster text,
    image text,
    status boolean,
    cr timestamp with time zone,
    up timestamp with time zone
);
    DROP TABLE public.channels;
       public         heap    postgres    false            �            1259    16569    comments    TABLE       CREATE TABLE public.comments (
    rand_id character varying(255),
    body text,
    parent_id integer,
    publish_status boolean,
    video_id character varying(255),
    cr_rand_id character varying(255),
    cr timestamp with time zone,
    up timestamp with time zone
);
    DROP TABLE public.comments;
       public         heap    postgres    false            �            1259    16564 	   playlists    TABLE     &  CREATE TABLE public.playlists (
    rand_id character varying(255),
    title character varying(255),
    channel_id character varying(255),
    description text,
    publish_date timestamp with time zone,
    status boolean,
    cr timestamp with time zone,
    up timestamp with time zone
);
    DROP TABLE public.playlists;
       public         heap    postgres    false            �            1259    16559 	   reactions    TABLE     �   CREATE TABLE public.reactions (
    rand_id character varying(255),
    user_id character varying(255),
    status boolean,
    cr timestamp with time zone,
    up timestamp with time zone,
    reaction_type boolean
);
    DROP TABLE public.reactions;
       public         heap    postgres    false            �            1259    16554    subscriptions    TABLE     �   CREATE TABLE public.subscriptions (
    rand_id character varying(255),
    user_rand_id character varying(255),
    channel_id character varying(255),
    status boolean,
    cr timestamp with time zone,
    up timestamp with time zone
);
 !   DROP TABLE public.subscriptions;
       public         heap    postgres    false            �            1259    16549    users    TABLE     9  CREATE TABLE public.users (
    rand_id character varying(255),
    name character varying(255),
    image text,
    mobile text,
    email character varying(255),
    password text,
    verified_at timestamp with time zone,
    status boolean,
    cr timestamp with time zone,
    up timestamp with time zone
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16544    videos    TABLE       CREATE TABLE public.videos (
    rand_id character varying(255),
    cr_rand_id character varying(255),
    title character varying(255),
    description text,
    channel_id character varying(255),
    transcode_progress integer,
    storage_disk character varying(255),
    video_path character varying(255)[],
    thumbnail_path text,
    views_count integer,
    publish_date timestamp with time zone,
    playlist_id character varying(255),
    status boolean,
    cr timestamp with time zone,
    up timestamp with time zone
);
    DROP TABLE public.videos;
       public         heap    postgres    false            �          0    16574    channels 
   TABLE DATA           k   COPY public.channels (rand_id, cr_rand_id, username, name, bio, poster, image, status, cr, up) FROM stdin;
    public          postgres    false    222   �       �          0    16569    comments 
   TABLE DATA           j   COPY public.comments (rand_id, body, parent_id, publish_status, video_id, cr_rand_id, cr, up) FROM stdin;
    public          postgres    false    221   
       �          0    16564 	   playlists 
   TABLE DATA           j   COPY public.playlists (rand_id, title, channel_id, description, publish_date, status, cr, up) FROM stdin;
    public          postgres    false    220   �       �          0    16559 	   reactions 
   TABLE DATA           T   COPY public.reactions (rand_id, user_id, status, cr, up, reaction_type) FROM stdin;
    public          postgres    false    219           �          0    16554    subscriptions 
   TABLE DATA           Z   COPY public.subscriptions (rand_id, user_rand_id, channel_id, status, cr, up) FROM stdin;
    public          postgres    false    218   �        �          0    16549    users 
   TABLE DATA           k   COPY public.users (rand_id, name, image, mobile, email, password, verified_at, status, cr, up) FROM stdin;
    public          postgres    false    217   �!       �          0    16544    videos 
   TABLE DATA           �   COPY public.videos (rand_id, cr_rand_id, title, description, channel_id, transcode_progress, storage_disk, video_path, thumbnail_path, views_count, publish_date, playlist_id, status, cr, up) FROM stdin;
    public          postgres    false    216   A#       �   L  x�}��o�0�g篸��ȯ��Z��J�Zi�����`f����w'�i�ߋ������(f�E�EUv�c��������F6%�
a���A�w6Z��p�Zm���o[2Y���X%�U_E��y���/��VR���2J(aB�-��_�ذ���}�T񞕣�B�΂A![�P]7�k�}d&#3��L?afg�y`Ι3|����{�3���o��ny#u�<���=᭓w�h���(�_f���&>�A����hZ�ك�ҍR�_t�=�S���Ɲ,�hbq��iKzfɂ%c�tZ[�[v?p�W���]ߎ^�dKǩp��+W@ɂzvPx$f#1�Ю�$q�a���`�8I'#�/9�	<�ꎠ�D�9r�3i7���Ե�HZ\ �&I�MrFZҒY!�X"n�Ӑ����s����M?l
_!l�[)N��([^���d=�ld+Vp[щQ�8���6���?l=rV#g�q��Ӝ4{�YΚ՝�B���#|��x�ըt.1�:��g=z�ۓē���Ӌ��C���h<jvK~��w� �Vt�� |��'R��W��������l6�c��      �   �  x�u��n� F��)n�U"�����H���*�l�zL3�$ӧ3v��d�H��~�3|�w�i���F�A��ӄ�ݒ�?đ��)ed�h.oNyyC�������(�Is���Ɋ��j wJ{���N�ç�9^��*䛐G�*)�n��Ќ�$���C�#&��yD������_��7�� �u�����^��񒥞e����oല(���T�R����.j^�GiG����UF�6��4�����x�P/m�����(���&Yn��0�*Uk�c�:�uI�y�{��0��3vN�0�ڌu�eI#ە������ﮗV"�I7��¬}/m�7Wy�ţ��s���^(8���0r8����q�S��ڈ�'MyT�f�v�'B9�����?L�pS�j`��ؔ�aQ)�o�,� �a�      �   O  x�}�K��0��ί�{�&��m������^3+���ǿ��,a��3�?3v����-�����,��3�Z\��<�Q��)��G��<��m~O�X�����|��F�(���?c3��!֍�4|�LJ"�ٻu:�?(U�-ULT�j��+k��!C���u�̓��G��&_ ��OF�Ĵ�8e['N��U	�n�S�)D#/%Ұ���v�D^BԷS3��2"�+r
<��R&+ޣL�Oq+�Ry���[Є���p�G4�A��{F��+��_|����Q�%=����7��(���7�){G<�+�oqy���p@,�jkځW'�1����#��A�ٗF��g�a[{��-ڌ�F�<S���D��[���j��?^���q櫸�3g�4����r�ֵiV&;"ojvKڇ�6ԴcS���r�l>H��"j�֢*���:4Y��`/�P�Y���/�c�铺O"l&u�@�n��S�>2-�[])	o���,�9�K�:|���MFP�I�n:Mjy������ZA�Vz'�G����l'��F��J�"��Җ�v��a���0KO�c�{��}�L&� 4"��      �   �   x�u�;�0�ᙜ�{E�W�,]�hz�j�`�S�����y���l�p�rC����DN���Ǥ9$���ɺ#��*��MDVs5�!���n�(�}NQ����9�"�C����̊��r�sl�(��+a�����f�F9br������B      �   �   x�u��� ���x
�f����=�'��g��_V���B	�/��~�þ=^Ǽ?��= `!�PO9/��o��n�vP�
��*���P�	E�j�BK�R,�_a�>�(U�*���V��P�RH>pRjj2��0�|��,��(�}`S�	��a ��_��N�u5�@��^RJ�~�      �   �  x���Ks�0E��"�N5/�j�۩ݴ3ݸ�� j��o��FIhgX07w�3� �R�M��Dc��!��m9�v�ȶ���U�M2��eW�bg�]���Q�?�P�7�ڰeyP�B��b^c�/Dؐ�!�W��@u:�!֙}�O'��f�0R3��%U�㝩�MK@G���e�T���D�R�*��unJ6-�:t�N�`y�x��`��>Y�Q�^�S���a����3%uj��Cx�2�>���E��fs0��t9f�#x,D�A�$Me�#[���B�o��<[2�}�`�O�П�yJ���l�객8D��%v�g���l6��Ty7�/&�A�[��>s����?��(�$��>�d������������<�4O0��F����/~�[6� L����/��N;A� ���      �     x�}�]o�0���_���-��w���m��.��"��m��m��i�}6q��ͤH�ks�s�;VEQZI��~���U[*�k�8\�<�gJ���R�"���y�y�$�XE�5(�f�8�@��[���y#�Ǖ��&�nԶݯj�v��f�W#P�ҫ(�?��8����@�3�P
|���$Cd�PdA��:R���I^Z*���uV�6�M�W�xc��1��iE�5�	FC�ƙG�\R4���[R>��,J���/���5WkM]W�t4�U\0���W9��2�Y^yb#v�8�fb�X�'�*�L�U�+����fG�P�␝��ˍ^�3�#q��C��� &.�V�a�>�!�1�j�{r�<�'�UP*"�.�w��Ъ�7������3"�^�\���Q=Eߤi�4i
��cN]�t��4h��2��JJ���5����h���l*%�£�<���i�Sa�KG�{
�p�<M���(�G<��g��(J��
*M���5�2�y���(���Cy�:���T�g�NgA�s��G^�醵*t�X�+�u����~�=�C�)�_59�.�}?�ɐu���%�'�9�sa��]QQS�]��Q�1��js�\���4vI�S���og���M}�Ƞc�0�{腋^L�]�̎�#���}2��Q��P�|fk��^Y�l��6�}�;Q;�
]�L�Q;}8��4s���%�[��n��a�s4�D�V�\���{���?�g��?�3��     