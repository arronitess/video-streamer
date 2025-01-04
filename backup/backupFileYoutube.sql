PGDMP                       |            Youtube    16.2    16.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16756    Youtube    DATABASE     �   CREATE DATABASE "Youtube" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "Youtube";
                postgres    false            O           1247    16838    policy    TYPE     F   CREATE TYPE public.policy AS ENUM (
    'agreed',
    'not agreed'
);
    DROP TYPE public.policy;
       public          postgres    false            R           1247    16844    publish_status    TYPE     W   CREATE TYPE public.publish_status AS ENUM (
    'done',
    'denied',
    'pending'
);
 !   DROP TYPE public.publish_status;
       public          postgres    false            L           1247    16830    status    TYPE     A   CREATE TYPE public.status AS ENUM (
    '0',
    '1',
    '3'
);
    DROP TYPE public.status;
       public          postgres    false            �            1259    16864    channels    TABLE     �  CREATE TABLE public.channels (
    rand_id character varying(255) NOT NULL,
    cr_rand_id character varying(255) NOT NULL,
    status public.status,
    owner character varying(255)[],
    admin character varying(255)[],
    editor character varying(255)[],
    type character varying(255),
    cr timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    up timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    meta jsonb
);
    DROP TABLE public.channels;
       public         heap    postgres    false    844            �            1259    16883    comments    TABLE     m  CREATE TABLE public.comments (
    rand_id character varying(255) NOT NULL,
    video_id character varying(255),
    cr_rand_id character varying(255) NOT NULL,
    status public.status,
    publish_status public.publish_status,
    cr timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    up timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    meta jsonb
);
    DROP TABLE public.comments;
       public         heap    postgres    false    850    844            �            1259    16892 	   reactions    TABLE     )  CREATE TABLE public.reactions (
    rand_id character varying(255) NOT NULL,
    video_id character varying(255),
    cr_rand_id character varying(255) NOT NULL,
    reaction_type character varying(50),
    cr timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    up timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    meta jsonb,
    CONSTRAINT reactions_reaction_type_check CHECK (((reaction_type)::text = ANY ((ARRAY['like'::character varying, 'dislike'::character varying, 'love'::character varying, 'angry'::character varying])::text[])))
);
    DROP TABLE public.reactions;
       public         heap    postgres    false            �            1259    16851    users    TABLE     q  CREATE TABLE public.users (
    rand_id character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    user_name character varying(255) NOT NULL,
    password text NOT NULL,
    verified_at timestamp with time zone,
    cr timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    up timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    meta jsonb
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16873    videos    TABLE     -  CREATE TABLE public.videos (
    rand_id character varying(255) NOT NULL,
    channel_id character varying(255)[],
    cr_rand_id character varying(255) NOT NULL,
    title character varying(255),
    status public.status,
    agree_policy public.policy,
    views_count integer DEFAULT 0,
    creators jsonb,
    type character varying(255),
    path character varying(255)[],
    publish_date timestamp with time zone,
    cr timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    up timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    meta jsonb
);
    DROP TABLE public.videos;
       public         heap    postgres    false    847    844                      0    16864    channels 
   TABLE DATA           i   COPY public.channels (rand_id, cr_rand_id, status, owner, admin, editor, type, cr, up, meta) FROM stdin;
    public          postgres    false    216   d                 0    16883    comments 
   TABLE DATA           g   COPY public.comments (rand_id, video_id, cr_rand_id, status, publish_status, cr, up, meta) FROM stdin;
    public          postgres    false    218   �                 0    16892 	   reactions 
   TABLE DATA           _   COPY public.reactions (rand_id, video_id, cr_rand_id, reaction_type, cr, up, meta) FROM stdin;
    public          postgres    false    219   �                 0    16851    users 
   TABLE DATA           _   COPY public.users (rand_id, email, user_name, password, verified_at, cr, up, meta) FROM stdin;
    public          postgres    false    215   �                 0    16873    videos 
   TABLE DATA           �   COPY public.videos (rand_id, channel_id, cr_rand_id, title, status, agree_policy, views_count, creators, type, path, publish_date, cr, up, meta) FROM stdin;
    public          postgres    false    217   �       {           2606    16872    channels channels_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (rand_id);
 @   ALTER TABLE ONLY public.channels DROP CONSTRAINT channels_pkey;
       public            postgres    false    216                       2606    16891    comments comments_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (rand_id);
 @   ALTER TABLE ONLY public.comments DROP CONSTRAINT comments_pkey;
       public            postgres    false    218            �           2606    16901    reactions reactions_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT reactions_pkey PRIMARY KEY (rand_id);
 B   ALTER TABLE ONLY public.reactions DROP CONSTRAINT reactions_pkey;
       public            postgres    false    219            u           2606    16861    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public            postgres    false    215            w           2606    16859    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (rand_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    215            y           2606    16863    users users_user_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT users_user_name_key;
       public            postgres    false    215            }           2606    16882    videos videos_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.videos
    ADD CONSTRAINT videos_pkey PRIMARY KEY (rand_id);
 <   ALTER TABLE ONLY public.videos DROP CONSTRAINT videos_pkey;
       public            postgres    false    217                  x������ � �            x������ � �            x������ � �            x������ � �            x������ � �     