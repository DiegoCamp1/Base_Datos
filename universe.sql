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
-- Name: asteroides; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroides (
    asteroides_id integer NOT NULL,
    size integer NOT NULL,
    speed integer,
    name character varying(30)
);


ALTER TABLE public.asteroides OWNER TO freecodecamp;

--
-- Name: asteroides_asteroides_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroides_asteroides_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroides_asteroides_id_seq OWNER TO freecodecamp;

--
-- Name: asteroides_asteroides_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroides_asteroides_id_seq OWNED BY public.asteroides.asteroides_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    type text,
    life boolean
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
    diameter integer,
    life boolean,
    age date,
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
    distance numeric(10,2),
    indicator boolean,
    age text,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter numeric(10,2),
    indicator boolean,
    age text,
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
-- Name: asteroides asteroides_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroides ALTER COLUMN asteroides_id SET DEFAULT nextval('public.asteroides_asteroides_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroides; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroides VALUES (14, 7, 10, 'loco');
INSERT INTO public.asteroides VALUES (15, 8, 10, 'lola');
INSERT INTO public.asteroides VALUES (16, 9, 11, 'cc');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 13600, 'spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13510, 'spiral', true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8100, 'spiral', false);
INSERT INTO public.galaxy VALUES (4, 'Centaurus A', 10700, 'elliptical', true);
INSERT INTO public.galaxy VALUES (5, 'Messier 87', 10800, 'elliptical', false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 8400, 'spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon1', 3474, true, '2021-04-04', 1);
INSERT INTO public.moon VALUES (2, 'Moon2', 3672, false, '2021-04-04', 1);
INSERT INTO public.moon VALUES (3, 'Moon3', 2500, true, '2021-04-04', 2);
INSERT INTO public.moon VALUES (4, 'Moon4', 3122, true, '2021-04-04', 2);
INSERT INTO public.moon VALUES (5, 'Moon5', 5262, false, '2021-04-04', 3);
INSERT INTO public.moon VALUES (6, 'Moon6', 4059, true, '2021-04-04', 3);
INSERT INTO public.moon VALUES (7, 'Moon7', 2735, false, '2021-04-04', 4);
INSERT INTO public.moon VALUES (8, 'Moon8', 3246, true, '2021-04-04', 4);
INSERT INTO public.moon VALUES (9, 'Moon9', 2528, false, '2021-04-04', 5);
INSERT INTO public.moon VALUES (10, 'Moon10', 3874, true, '2021-04-04', 5);
INSERT INTO public.moon VALUES (11, 'Moon11', 4822, false, '2021-04-04', 6);
INSERT INTO public.moon VALUES (12, 'Moon12', 3945, true, '2021-04-04', 6);
INSERT INTO public.moon VALUES (13, 'Moon13', 3321, false, '2021-04-04', 7);
INSERT INTO public.moon VALUES (14, 'Moon14', 2948, true, '2021-04-04', 7);
INSERT INTO public.moon VALUES (15, 'Moon15', 2567, false, '2021-04-04', 8);
INSERT INTO public.moon VALUES (16, 'Moon16', 3712, true, '2021-04-04', 8);
INSERT INTO public.moon VALUES (17, 'Moon17', 3011, false, '2021-04-04', 9);
INSERT INTO public.moon VALUES (18, 'Moon18', 4422, true, '2021-04-04', 9);
INSERT INTO public.moon VALUES (19, 'Moon19', 3947, false, '2021-04-04', 10);
INSERT INTO public.moon VALUES (20, 'Moon20', 3678, true, '2021-04-04', 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.39, true, '4.6 billion years', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.72, false, '4.5 billion years', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, true, '4.5 billion years', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1.52, true, '4.6 billion years', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5.20, false, '4.6 billion years', 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 9.58, true, '4.5 billion years', 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 19.20, true, '4.5 billion years', 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 30.05, false, '4.5 billion years', 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 39.48, true, '4.6 billion years', 3);
INSERT INTO public.planet VALUES (10, 'Proxima b', 4.24, false, '4.5 billion years', 4);
INSERT INTO public.planet VALUES (11, 'Kepler-186f', 500.00, true, '4.5 billion years', 5);
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1d', 39.00, true, '4.5 billion years', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', 15.25, true, '5 billion years', 1);
INSERT INTO public.star VALUES (2, 'Star2', 20.50, false, '8 billion years', 1);
INSERT INTO public.star VALUES (3, 'Star3', 10.75, true, '3 billion years', 2);
INSERT INTO public.star VALUES (4, 'Star4', 30.10, true, '7 billion years', 2);
INSERT INTO public.star VALUES (5, 'Star5', 25.90, false, '10 billion years', 3);
INSERT INTO public.star VALUES (6, 'Star6', 18.30, true, '4 billion years', 3);


--
-- Name: asteroides_asteroides_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroides_asteroides_id_seq', 16, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy age; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT age UNIQUE (age);


--
-- Name: asteroides asteroides_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroides
    ADD CONSTRAINT asteroides_pkey PRIMARY KEY (asteroides_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star nam_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT nam_unique UNIQUE (name);


--
-- Name: moon name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: asteroides size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroides
    ADD CONSTRAINT size UNIQUE (size);


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

