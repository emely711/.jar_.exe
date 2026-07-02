--
-- PostgreSQL database dump
--

\restrict mA9jC8PEcw7493DY522050SepLhWQfk5zvtQpN6cfMbFa3x4lkuaWzCwRg7bL7S

-- Dumped from database version 18.3
-- Dumped by pg_dump version 18.3

-- Started on 2026-07-02 15:41:04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 220 (class 1259 OID 17785)
-- Name: animales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.animales (
    id integer NOT NULL,
    nombre character varying(100),
    tipo character varying(100),
    edad integer,
    peso numeric(10,2),
    sexo character varying(200)
);


ALTER TABLE public.animales OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17784)
-- Name: animales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.animales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.animales_id_seq OWNER TO postgres;

--
-- TOC entry 5013 (class 0 OID 0)
-- Dependencies: 219
-- Name: animales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.animales_id_seq OWNED BY public.animales.id;


--
-- TOC entry 4856 (class 2604 OID 17788)
-- Name: animales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animales ALTER COLUMN id SET DEFAULT nextval('public.animales_id_seq'::regclass);


--
-- TOC entry 5007 (class 0 OID 17785)
-- Dependencies: 220
-- Data for Name: animales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.animales (id, nombre, tipo, edad, peso, sexo) FROM stdin;
1	toby	perro	5	15.00	macho
2	pedro	gato	2	10.00	macho
3	luna	gato	2	8.00	hembra
4	abby	gato	1	2.00	hembra
\.


--
-- TOC entry 5014 (class 0 OID 0)
-- Dependencies: 219
-- Name: animales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.animales_id_seq', 4, true);


--
-- TOC entry 4858 (class 2606 OID 17791)
-- Name: animales animales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.animales
    ADD CONSTRAINT animales_pkey PRIMARY KEY (id);


-- Completed on 2026-07-02 15:41:05

--
-- PostgreSQL database dump complete
--

\unrestrict mA9jC8PEcw7493DY522050SepLhWQfk5zvtQpN6cfMbFa3x4lkuaWzCwRg7bL7S

