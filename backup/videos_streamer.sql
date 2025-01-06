PGDMP      &    
             }            postgres    16.4    16.3                 0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
    reaction_type integer,
    user_id character varying(255),
    status boolean,
    cr timestamp with time zone,
    up timestamp with time zone
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
    public          postgres    false    221   �       �          0    16564 	   playlists 
   TABLE DATA           j   COPY public.playlists (rand_id, title, channel_id, description, publish_date, status, cr, up) FROM stdin;
    public          postgres    false    220   �       �          0    16559 	   reactions 
   TABLE DATA           T   COPY public.reactions (rand_id, reaction_type, user_id, status, cr, up) FROM stdin;
    public          postgres    false    219          �          0    16554    subscriptions 
   TABLE DATA           Z   COPY public.subscriptions (rand_id, user_rand_id, channel_id, status, cr, up) FROM stdin;
    public          postgres    false    218   "       �          0    16549    users 
   TABLE DATA           k   COPY public.users (rand_id, name, image, mobile, email, password, verified_at, status, cr, up) FROM stdin;
    public          postgres    false    217   ?       �          0    16544    videos 
   TABLE DATA           �   COPY public.videos (rand_id, cr_rand_id, title, description, channel_id, transcode_progress, storage_disk, video_path, thumbnail_path, views_count, publish_date, playlist_id, status, cr, up) FROM stdin;
    public          postgres    false    216   \       �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     