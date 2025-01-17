PGDMP     	                
    z            tododuo-dev    10.22    10.22 6    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            /           1262    24827    tododuo-dev    DATABASE     �   CREATE DATABASE "tododuo-dev" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE "tododuo-dev";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            0           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            1           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    24828    days    TABLE     N   CREATE TABLE public.days (
    id integer NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.days;
       public         postgres    false    3            �            1259    24834    days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.days_id_seq;
       public       postgres    false    3    196            2           0    0    days_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.days_id_seq OWNED BY public.days.id;
            public       postgres    false    197            �            1259    24836    sessions    TABLE     q   CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.sessions;
       public         postgres    false    3            �            1259    24842    sessions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.sessions_id_seq;
       public       postgres    false    3    198            3           0    0    sessions_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;
            public       postgres    false    199            �            1259    24844 	   task_days    TABLE     v   CREATE TABLE public.task_days (
    id integer NOT NULL,
    task_id integer NOT NULL,
    day_id integer NOT NULL
);
    DROP TABLE public.task_days;
       public         postgres    false    3            �            1259    24847    task_days_day_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_days_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.task_days_day_id_seq;
       public       postgres    false    200    3            4           0    0    task_days_day_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.task_days_day_id_seq OWNED BY public.task_days.day_id;
            public       postgres    false    201            �            1259    24849    task_days_id_seq    SEQUENCE     �   CREATE SEQUENCE public.task_days_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.task_days_id_seq;
       public       postgres    false    200    3            5           0    0    task_days_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.task_days_id_seq OWNED BY public.task_days.id;
            public       postgres    false    202            �            1259    24851    tasks    TABLE     �   CREATE TABLE public.tasks (
    id integer NOT NULL,
    name text NOT NULL,
    description text,
    user_id integer NOT NULL
);
    DROP TABLE public.tasks;
       public         postgres    false    3            �            1259    24857    tasks_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.tasks_id_seq;
       public       postgres    false    203    3            6           0    0    tasks_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;
            public       postgres    false    204            �            1259    24859    users    TABLE     k   CREATE TABLE public.users (
    id integer NOT NULL,
    password text NOT NULL,
    name text NOT NULL
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    24865    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    205    3            7           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    206            �
           2604    24867    days id    DEFAULT     b   ALTER TABLE ONLY public.days ALTER COLUMN id SET DEFAULT nextval('public.days_id_seq'::regclass);
 6   ALTER TABLE public.days ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    24868    sessions id    DEFAULT     j   ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);
 :   ALTER TABLE public.sessions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    24869    task_days id    DEFAULT     l   ALTER TABLE ONLY public.task_days ALTER COLUMN id SET DEFAULT nextval('public.task_days_id_seq'::regclass);
 ;   ALTER TABLE public.task_days ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    200            �
           2604    24870    task_days day_id    DEFAULT     t   ALTER TABLE ONLY public.task_days ALTER COLUMN day_id SET DEFAULT nextval('public.task_days_day_id_seq'::regclass);
 ?   ALTER TABLE public.task_days ALTER COLUMN day_id DROP DEFAULT;
       public       postgres    false    201    200            �
           2604    24871    tasks id    DEFAULT     d   ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);
 7   ALTER TABLE public.tasks ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203            �
           2604    24872    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205                      0    24828    days 
   TABLE DATA               (   COPY public.days (id, name) FROM stdin;
    public       postgres    false    196   �5       !          0    24836    sessions 
   TABLE DATA               6   COPY public.sessions (id, token, user_id) FROM stdin;
    public       postgres    false    198   6       #          0    24844 	   task_days 
   TABLE DATA               8   COPY public.task_days (id, task_id, day_id) FROM stdin;
    public       postgres    false    200   ,6       &          0    24851    tasks 
   TABLE DATA               ?   COPY public.tasks (id, name, description, user_id) FROM stdin;
    public       postgres    false    203   I6       (          0    24859    users 
   TABLE DATA               3   COPY public.users (id, password, name) FROM stdin;
    public       postgres    false    205   f6       8           0    0    days_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.days_id_seq', 7, true);
            public       postgres    false    197            9           0    0    sessions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.sessions_id_seq', 6, true);
            public       postgres    false    199            :           0    0    task_days_day_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.task_days_day_id_seq', 1, false);
            public       postgres    false    201            ;           0    0    task_days_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.task_days_id_seq', 3, true);
            public       postgres    false    202            <           0    0    tasks_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.tasks_id_seq', 13, true);
            public       postgres    false    204            =           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 34, true);
            public       postgres    false    206            �
           2606    24874    days days_name_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_name_key UNIQUE (name);
 <   ALTER TABLE ONLY public.days DROP CONSTRAINT days_name_key;
       public         postgres    false    196            �
           2606    24876    days days_pk 
   CONSTRAINT     J   ALTER TABLE ONLY public.days
    ADD CONSTRAINT days_pk PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.days DROP CONSTRAINT days_pk;
       public         postgres    false    196            �
           2606    24878    sessions sessions_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_pk;
       public         postgres    false    198            �
           2606    24880    sessions sessions_token_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_token_key UNIQUE (token);
 E   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_token_key;
       public         postgres    false    198            �
           2606    24882    task_days task_days_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.task_days
    ADD CONSTRAINT task_days_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.task_days DROP CONSTRAINT task_days_pk;
       public         postgres    false    200            �
           2606    24884    tasks tasks_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_pk;
       public         postgres    false    203            �
           2606    24886    users users_name_key 
   CONSTRAINT     O   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);
 >   ALTER TABLE ONLY public.users DROP CONSTRAINT users_name_key;
       public         postgres    false    205            �
           2606    24888    users users_pk 
   CONSTRAINT     L   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pk;
       public         postgres    false    205            �
           2606    24889    sessions sessions_fk0    FK CONSTRAINT     t   ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_fk0 FOREIGN KEY (user_id) REFERENCES public.users(id);
 ?   ALTER TABLE ONLY public.sessions DROP CONSTRAINT sessions_fk0;
       public       postgres    false    198    205    2721            �
           2606    24894    task_days task_days_fk0    FK CONSTRAINT     v   ALTER TABLE ONLY public.task_days
    ADD CONSTRAINT task_days_fk0 FOREIGN KEY (task_id) REFERENCES public.tasks(id);
 A   ALTER TABLE ONLY public.task_days DROP CONSTRAINT task_days_fk0;
       public       postgres    false    200    203    2717            �
           2606    24899    task_days task_days_fk1    FK CONSTRAINT     t   ALTER TABLE ONLY public.task_days
    ADD CONSTRAINT task_days_fk1 FOREIGN KEY (day_id) REFERENCES public.days(id);
 A   ALTER TABLE ONLY public.task_days DROP CONSTRAINT task_days_fk1;
       public       postgres    false    200    196    2709            �
           2606    24904    tasks tasks_fk0    FK CONSTRAINT     n   ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_fk0 FOREIGN KEY (user_id) REFERENCES public.users(id);
 9   ALTER TABLE ONLY public.tasks DROP CONSTRAINT tasks_fk0;
       public       postgres    false    205    2721    203               I   x�3�t����K��2�NM/�KI�2�I-:�<�˄3�4��$�����2̀�*��9g��I�)�\1z\\\ V      !      x������ � �      #      x������ � �      &      x������ � �      (      x������ � �     