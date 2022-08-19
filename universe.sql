--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    galaxy_type character varying(30),
    age integer,
    has_life boolean,
    distance_from_earth numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    age integer,
    has_life boolean,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    planet_type character varying(30),
    age integer,
    has_life boolean,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: rock; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rock (
    rock_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    age integer,
    distance_from_earth numeric
);


ALTER TABLE public.rock OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rock_rock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rock_rock_id_seq OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rock_rock_id_seq OWNED BY public.rock.rock_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    description text,
    name character varying(30) NOT NULL,
    age integer,
    has_life boolean,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rock rock_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock ALTER COLUMN rock_id SET DEFAULT nextval('public.rock_rock_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'I am first galaxy', 'g1', 'big1', 18, false, 18000);
INSERT INTO public.galaxy VALUES (2, 'I am first galaxy', 'g2', 'big2', 28, true, 28000);
INSERT INTO public.galaxy VALUES (3, 'I am first galaxy', 'g3', 'big3', 38, false, 38000);
INSERT INTO public.galaxy VALUES (4, 'I am first galaxy', 'g4', 'big4', 48, false, 48000);
INSERT INTO public.galaxy VALUES (5, 'I am first galaxy', 'g5', 'big5', 58, false, 58000);
INSERT INTO public.galaxy VALUES (6, 'I am first galaxy', 'g6', 'big6', 68, true, 68000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'i am moon 1', 'm1', 3, false, 5, 1);
INSERT INTO public.moon VALUES (2, 'i am moon 2', 'm2', 3, false, 5, 1);
INSERT INTO public.moon VALUES (3, 'i am moon 3', 'm3', 3, false, 5, 2);
INSERT INTO public.moon VALUES (4, 'i am moon 4', 'm4', 3, false, 5, 2);
INSERT INTO public.moon VALUES (5, 'i am moon 5', 'm5', 3, false, 5, 3);
INSERT INTO public.moon VALUES (6, 'i am moon 6', 'm6', 3, false, 5, 3);
INSERT INTO public.moon VALUES (7, 'i am moon 7', 'm7', 3, false, 5, 4);
INSERT INTO public.moon VALUES (8, 'i am moon 8', 'm8', 3, false, 5, 4);
INSERT INTO public.moon VALUES (9, 'i am moon 9', 'm9', 3, false, 5, 5);
INSERT INTO public.moon VALUES (10, 'i am moon 10', 'm10', 3, false, 5, 5);
INSERT INTO public.moon VALUES (11, 'i am moon 11', 'm11', 3, false, 5, 6);
INSERT INTO public.moon VALUES (12, 'i am moon 12', 'm12', 3, false, 5, 6);
INSERT INTO public.moon VALUES (13, 'i am moon 13', 'm13', 3, false, 5, 7);
INSERT INTO public.moon VALUES (14, 'i am moon 14', 'm14', 3, false, 5, 7);
INSERT INTO public.moon VALUES (15, 'i am moon 15', 'm15', 3, false, 5, 8);
INSERT INTO public.moon VALUES (16, 'i am moon 16', 'm16', 3, false, 5, 8);
INSERT INTO public.moon VALUES (17, 'i am moon 17', 'm17', 3, false, 5, 9);
INSERT INTO public.moon VALUES (18, 'i am moon 18', 'm18', 3, false, 5, 9);
INSERT INTO public.moon VALUES (19, 'i am moon 19', 'm19', 3, false, 5, 10);
INSERT INTO public.moon VALUES (20, 'i am moon 20', 'm20', 3, false, 5, 10);
INSERT INTO public.moon VALUES (21, 'i am moon 21', 'm21', 3, false, 5, 11);
INSERT INTO public.moon VALUES (22, 'i am moon 22', 'm22', 3, false, 5, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'this is 1 planet', 'p1', 'big_p', 1, false, 1, 1);
INSERT INTO public.planet VALUES (2, 'this is 2 planet', 'p2', 'big_p', 1, false, 1, 1);
INSERT INTO public.planet VALUES (3, 'this is 3 planet', 'p3', 'big_p', 1, false, 1.2, 1);
INSERT INTO public.planet VALUES (4, 'this is 4 planet', 'p4', 'big_p', 1, false, 1.4, 1);
INSERT INTO public.planet VALUES (5, 'this is 5 planet', 'p5', 'small_p', 1, true, 5, 2);
INSERT INTO public.planet VALUES (6, 'this is 6 planet', 'p6', 'small_p', 3, true, 3, 2);
INSERT INTO public.planet VALUES (7, 'this is 7 planet', 'p7', 'small_p', 3, true, 3, 2);
INSERT INTO public.planet VALUES (8, 'this is 8 planet', 'p8', 'small_p', 3, true, 3, 2);
INSERT INTO public.planet VALUES (9, 'this is 9 planet', 'p9', 'small_p', 3, false, 3, 2);
INSERT INTO public.planet VALUES (10, 'this is 10 planet', 'p10', 'small_p', 3, false, 3, 2);
INSERT INTO public.planet VALUES (11, 'this is 11 planet', 'p11', 'small_p', 3, false, 5, 3);
INSERT INTO public.planet VALUES (12, 'this is 12 planet', 'p12', 'small_p', 3, false, 5, 3);
INSERT INTO public.planet VALUES (13, 'this is 13 planet', 'p13', 'small_p', 3, false, 5, 3);
INSERT INTO public.planet VALUES (14, 'this is 14 planet', 'p14', 'small_p', 3, false, 5, 4);
INSERT INTO public.planet VALUES (15, 'this is 15 planet', 'p15', 'small_p', 3, false, 5, 4);
INSERT INTO public.planet VALUES (16, 'this is 16 planet', 'p16', 'small_p', 3, false, 5, 4);
INSERT INTO public.planet VALUES (17, 'this is 17 planet', 'p17', 'small_p', 3, false, 5, 4);
INSERT INTO public.planet VALUES (18, 'this is 18 planet', 'p18', 'small_p', 3, false, 5, 5);
INSERT INTO public.planet VALUES (19, 'this is 19 planet', 'p19', 'small_p', 3, true, 5, 6);
INSERT INTO public.planet VALUES (20, 'this is 20 planet', 'p20', 'big_p', 3, false, 5, 6);


--
-- Data for Name: rock; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rock VALUES (1, 'i am rock 1', 'r1', 5, 5);
INSERT INTO public.rock VALUES (2, 'i am rock 2', 'r2', 5, 7);
INSERT INTO public.rock VALUES (3, 'i am rock 3', 'r3', 5, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'i am first star', 's1', 1, false, 1000, 1);
INSERT INTO public.star VALUES (2, 'i am second star', 's2', 2, true, 1000, 2);
INSERT INTO public.star VALUES (3, 'i am 3 star', '32', 3, false, 3000, 3);
INSERT INTO public.star VALUES (4, 'i am 4 star', '4', 4, false, 4000, 4);
INSERT INTO public.star VALUES (5, 'i am 5 star', '5', 5, false, 5000, 5);
INSERT INTO public.star VALUES (6, 'i am 6 star', '6', 6, true, 6000, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: rock_rock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rock_rock_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rock rock_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT rock_name_key UNIQUE (name);


--
-- Name: rock rock_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT rock_pkey PRIMARY KEY (rock_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

