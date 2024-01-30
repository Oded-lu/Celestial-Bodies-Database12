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
    name character varying(20) NOT NULL,
    has_life boolean,
    has_water boolean,
    diameter numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    more_info text
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
-- Name: mars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.mars (
    mars_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    has_water boolean,
    diameter numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    more_info text
);


ALTER TABLE public.mars OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.mars_mars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mars_mars_id_seq OWNER TO freecodecamp;

--
-- Name: mars_mars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.mars_mars_id_seq OWNED BY public.mars.mars_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    has_water boolean,
    diameter numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    more_info text,
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
    name character varying(20) NOT NULL,
    has_life boolean,
    has_water boolean,
    diameter numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    more_info text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_start_id_seq OWNER TO freecodecamp;

--
-- Name: planet_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_start_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    has_water boolean,
    diameter numeric,
    distance_from_earth integer,
    distance_from_sun integer,
    more_info text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_start_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_start_id_seq OWNER TO freecodecamp;

--
-- Name: star_start_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_start_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: mars mars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars ALTER COLUMN mars_id SET DEFAULT nextval('public.mars_mars_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_start_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_start_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, true, 100000, 0, 26000, 'The Humans Galaxy');
INSERT INTO public.galaxy VALUES (2, 'LMC', false, false, 14000, 158000, 163000, 'The Satellite Galaxy');
INSERT INTO public.galaxy VALUES (3, 'Andromeda', false, false, 220000, 2500000, 152000, 'Andromeda Galaxy');
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', false, false, 37000, 11500000, 11700000, 'AKA M82');
INSERT INTO public.galaxy VALUES (5, 'PinWheel Galaxy', false, false, 170000, 20870000, 20896000, 'AKA M101');
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', false, false, 50000, 29500000, 29526000, 'M104');


--
-- Data for Name: mars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.mars VALUES (1, 'mars1', false, false, 84, 242, 23204, 'in Milky Way Galaxy');
INSERT INTO public.mars VALUES (2, 'mars2', false, false, 4, 150, 130000, 'in Milky Way Galaxy');
INSERT INTO public.mars VALUES (3, 'mars3', false, false, 5, 129, 12005, 'in Cigar Galaxy');
INSERT INTO public.mars VALUES (4, 'mars4', false, false, 18, 71, 120, 'in PinWheel Galaxy');
INSERT INTO public.mars VALUES (5, 'mars5', false, false, 52, 135, 1812, 'in Sombrero Galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', false, false, 84, 242, 23204, 'in Milky Way Galaxy', 1);
INSERT INTO public.moon VALUES (2, 'moon2', false, false, 4, 150, 130000, 'in Milky Way Galaxy', 1);
INSERT INTO public.moon VALUES (3, 'moon3', false, false, 5, 129, 12005, 'in Cigar Galaxy', 1);
INSERT INTO public.moon VALUES (4, 'moon4', false, false, 18, 71, 120, 'in PinWheel Galaxy', 1);
INSERT INTO public.moon VALUES (5, 'moon5', false, false, 52, 135, 1812, 'in Sombrero Galaxy', 2);
INSERT INTO public.moon VALUES (6, 'moon6', false, false, 62, 72, 7241, 'in LMC galaxy', 2);
INSERT INTO public.moon VALUES (7, 'moon7', false, false, 4, 150, 130000, 'in Milky Way Galaxy', 2);
INSERT INTO public.moon VALUES (8, 'moon8', false, false, 5, 129, 12005, 'in Cigar Galaxy', 2);
INSERT INTO public.moon VALUES (9, 'moon9', false, false, 18, 71, 120, 'in PinWheel Galaxy', 2);
INSERT INTO public.moon VALUES (10, 'moon10', false, false, 52, 135, 1812, 'in Sombrero Galaxy', 2);
INSERT INTO public.moon VALUES (11, 'moon11', false, false, 62, 72, 7241, 'in LMC galaxy', 3);
INSERT INTO public.moon VALUES (12, 'moon12', false, false, 4, 150, 130000, 'in Milky Way Galaxy', 3);
INSERT INTO public.moon VALUES (13, 'moon13', false, false, 5, 129, 12005, 'in Cigar Galaxy', 3);
INSERT INTO public.moon VALUES (14, 'moon14', false, false, 18, 71, 120, 'in PinWheel Galaxy', 4);
INSERT INTO public.moon VALUES (15, 'moon15', false, false, 52, 135, 1812, 'in Sombrero Galaxy', 4);
INSERT INTO public.moon VALUES (16, 'moon16', false, false, 62, 72, 7241, 'in LMC galaxy', 4);
INSERT INTO public.moon VALUES (17, 'moon17', false, false, 4, 150, 130000, 'in Milky Way Galaxy', 5);
INSERT INTO public.moon VALUES (18, 'moon18', false, false, 5, 129, 12005, 'in Cigar Galaxy', 5);
INSERT INTO public.moon VALUES (19, 'moon19', false, false, 18, 71, 120, 'in PinWheel Galaxy', 5);
INSERT INTO public.moon VALUES (20, 'moon20', false, false, 52, 135, 1812, 'in Sombrero Galaxy', 6);
INSERT INTO public.moon VALUES (21, 'moon21', false, false, 62, 72, 7241, 'in LMC galaxy', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, true, 80, 201, 26201, 'in Milky Way Galaxy', 1);
INSERT INTO public.planet VALUES (2, 'Kepler-90h', false, false, 4, 150, 130000, 'in Milky Way Galaxy', 1);
INSERT INTO public.planet VALUES (3, 'Kepler-90g', false, false, 5, 129, 12005, 'in Milky Way Galaxy', 1);
INSERT INTO public.planet VALUES (4, 'PA-99-NA', false, false, 1, 11, 1210, 'in Andromeda Galaxy', 2);
INSERT INTO public.planet VALUES (5, 'PB-99-NA', false, false, 5, 115, 1212, 'in Andromeda Galaxy', 2);
INSERT INTO public.planet VALUES (6, 'PP33', false, false, 6, 7, 7841, 'in LMC galaxy', 2);
INSERT INTO public.planet VALUES (7, 'Earth-1', true, true, 81, 241, 23201, 'in Milky Way Galaxy', 3);
INSERT INTO public.planet VALUES (8, 'Kepler-50h', false, false, 4, 150, 130000, 'in Milky Way Galaxy', 3);
INSERT INTO public.planet VALUES (9, 'KTT', false, false, 5, 129, 12005, 'in Cigar Galaxy', 4);
INSERT INTO public.planet VALUES (10, 'BRT', false, false, 18, 71, 120, 'in PinWheel Galaxy', 4);
INSERT INTO public.planet VALUES (11, 'PRT-56-RTR', false, false, 52, 135, 1812, 'in Sombrero Galaxy', 4);
INSERT INTO public.planet VALUES (12, 'PP33-POPA', false, false, 62, 72, 7241, 'in LMC galaxy', 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, false, 100000, 0, 26000, 'Sun is in the  Milky Way  Galaxy', 1);
INSERT INTO public.star VALUES (2, 'Sirius A', false, false, 1.7, 9, 32000, 'Sirius A is in the  Milky Way  Galaxy', 1);
INSERT INTO public.star VALUES (3, 'Mirach', false, false, 86, 200, 26200, 'in Andromeda Galaxy', 3);
INSERT INTO public.star VALUES (4, 'Alpheraz', false, false, 2.7, 97, 110000, 'in Andromeda Galaxy', 3);
INSERT INTO public.star VALUES (5, 'Anan', false, false, 3, 100, 12000, 'in PinWheel Galaxy', 5);
INSERT INTO public.star VALUES (6, 'Nevi', false, false, 5, 110, 12100, 'in Sombrero Galaxy', 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: mars_mars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.mars_mars_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_start_id_seq', 1, false);


--
-- Name: star_start_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_start_id_seq', 4, true);


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
-- Name: mars mars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_name_key UNIQUE (name);


--
-- Name: mars mars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.mars
    ADD CONSTRAINT mars_pkey PRIMARY KEY (mars_id);


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

