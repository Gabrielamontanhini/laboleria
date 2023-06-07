--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cakes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cakes (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    price numeric NOT NULL,
    image text NOT NULL,
    description character varying(400) NOT NULL
);


--
-- Name: cakes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cakes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cakes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cakes_id_seq OWNED BY public.cakes.id;


--
-- Name: clients; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying(80) NOT NULL,
    address character varying(400),
    phone character varying(13)
);


--
-- Name: clients_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;


--
-- Name: orders; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.orders (
    id integer NOT NULL,
    "clientId" integer NOT NULL,
    "cakeId" integer NOT NULL,
    quantity integer NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "totalPrice" numeric NOT NULL
);


--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: cakes id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cakes ALTER COLUMN id SET DEFAULT nextval('public.cakes_id_seq'::regclass);


--
-- Name: clients id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Data for Name: cakes; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cakes VALUES (1, 'Bolo Dois Amores', 30, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiNSPh55w_E4_yl0VWkHxlYt7m2PsZGZgkig&usqp=CAU', 'Pão de ló branco recheado com mousse de chocolate meio amargo, ganache de chocolate branco e crocante, coberto com raspas de chocolate.');
INSERT INTO public.cakes VALUES (2, 'Bolo de Beijinho', 32, 'https://i.pinimg.com/originals/f2/c1/24/f2c1240b33698ef6de0877e9e7660adc.jpg', 'Um bolo para quem realmente gosta de coco, afinal, tem como tem tudo. Desde a massa, recheio e cobertura. Uma celebração ao coco pelo coco!');
INSERT INTO public.cakes VALUES (5, 'Bolo de Chocolate da Matilda', 40, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgBJ01nQ8U0lCYjQpzcNOVVGhh_q0F33HX5r3Z7f1SvkKSf6NFfo1SpQDTThzUPPtdHpo&usqp=CAU', 'Se você já viu "Matilda", com certeza ficou babando naquele delicioso bolo que transborda chocolate e é uma delícia!');
INSERT INTO public.cakes VALUES (6, 'Bolo de M&Ms', 45, 'https://pt.petitchef.com/imgupl/recipe/gravity-cake-bolo-gravidade--453158p701955.jpg', 'Um delicioso bolo com massa de pão de ló e M&Ms');
INSERT INTO public.cakes VALUES (7, 'Bolo de Macarons', 65, 'https://i.pinimg.com/originals/e6/bf/6e/e6bf6e218b2394df3ee0544397b77183.jpg', 'Esse bolo é feito inspirado em Macarons, com a massa macia, gosto sutil, derrete na boca e é decorado com os próprios!');
INSERT INTO public.cakes VALUES (8, 'Bolo de Fubá', 20, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6QJihl8fIQwcGNyvhrd3fyw82AiYHKsZilw&usqp=CAU', 'Delicioso Bolo de Fubá, com toque caseiro');


--
-- Data for Name: clients; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.clients VALUES (1, 'Gabi', 'Servidão Muffin, Casa 18', '48988377358');
INSERT INTO public.clients VALUES (2, 'Perrinha', 'Rua dos Gatos, número 10', '48999887766');
INSERT INTO public.clients VALUES (3, 'Cremosa', 'Rua dos Gatos, número 10', '48999887766');


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.orders VALUES (1, 1, 1, 1, '2023-06-03 15:12:07.45943', 30);
INSERT INTO public.orders VALUES (2, 1, 2, 1, '2023-06-07 14:23:31.341796', 32);
INSERT INTO public.orders VALUES (3, 1, 7, 1, '2023-06-07 14:29:28.212473', 65);


--
-- Name: cakes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cakes_id_seq', 8, true);


--
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.clients_id_seq', 3, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.orders_id_seq', 3, true);


--
-- Name: cakes cakes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cakes
    ADD CONSTRAINT cakes_pkey PRIMARY KEY (id);


--
-- Name: clients clients_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: orders orders_cakeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_cakeId_fkey" FOREIGN KEY ("cakeId") REFERENCES public.cakes(id);


--
-- Name: orders orders_clientId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES public.clients(id);


--
-- PostgreSQL database dump complete
--

