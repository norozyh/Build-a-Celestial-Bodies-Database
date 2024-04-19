--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    description text,
    diameter_ly integer
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
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_types character varying(30),
    description text,
    age_in_million_of_years integer,
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
    name character varying(30) NOT NULL,
    has_life boolean,
    star_types character varying(30),
    description text,
    age_in_million_of_years integer,
    star_id integer,
    distance_from_earth numeric(4,1)
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: plannet_plannet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.plannet_plannet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plannet_plannet_id_seq OWNER TO freecodecamp;

--
-- Name: plannet_plannet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.plannet_plannet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    galaxy_types character varying(30),
    description text,
    age_in_million_of_years integer,
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
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


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

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.plannet_plannet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'Earth', true);
INSERT INTO public.earth VALUES (2, 'Earth2', false);
INSERT INTO public.earth VALUES (3, 'Earth2', false);
INSERT INTO public.earth VALUES (4, 'Earth4', false);
INSERT INTO public.earth VALUES (5, 'Earth5', false);
INSERT INTO public.earth VALUES (6, 'Earth6', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 'We are here', 100000);
INSERT INTO public.galaxy VALUES (2, 'LMC', false, 'Satellite Galaxy', 14000);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', NULL, NULL, 220000);
INSERT INTO public.galaxy VALUES (4, 'Cigar Galaxy', NULL, NULL, 37000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', NULL, NULL, 170000);
INSERT INTO public.galaxy VALUES (6, 'Sombrebo Galaxy', NULL, NULL, 50000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Moon2', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (3, 'Moon3', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (4, 'Moon4', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (5, 'Moon5', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (6, 'Moon6', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (7, 'Moon7', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'Moon8', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (9, 'Moon9', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (10, 'Moon10', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (11, 'Moon11', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'Moon12', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (13, 'Moon13', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'Moon14', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (15, 'Moon15', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'Moon16', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (17, 'Moon17', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'Moon18', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (19, 'Moon19', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (20, 'Moon20', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Plannet1', false, NULL, 'cold', 100000, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Plannet2', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (3, 'Plannet3', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (4, 'Plannet4', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (5, 'Plannet5', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (6, 'Plannet6', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (7, 'Plannet7', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (8, 'Plannet8', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (9, 'Plannet9', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (10, 'Plannet10', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (11, 'Plannet11', NULL, NULL, NULL, 12, 1, 20.1);
INSERT INTO public.planet VALUES (12, 'Plannet12', NULL, NULL, NULL, 12, 1, 20.1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', false, NULL, 'hot', 10000, 1);
INSERT INTO public.star VALUES (2, 'Sun1', false, NULL, 'cold', 100000, 1);
INSERT INTO public.star VALUES (3, 'Sun2', NULL, NULL, NULL, 20000, 1);
INSERT INTO public.star VALUES (4, 'Sun3', NULL, NULL, NULL, 20000, 1);
INSERT INTO public.star VALUES (5, 'Sun4', NULL, NULL, NULL, 20000, 1);
INSERT INTO public.star VALUES (6, 'Sun5', NULL, NULL, NULL, 20000, 1);
INSERT INTO public.star VALUES (7, 'Sun6', NULL, NULL, NULL, 20000, 1);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: plannet_plannet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.plannet_plannet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: earth earth_earth_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_earth_id_key UNIQUE (earth_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet plannet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet plannet_plannet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_plannet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_plannet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_plannet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet plannet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT plannet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

