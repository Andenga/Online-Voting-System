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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    asteroids_id integer NOT NULL,
    name character varying(40) NOT NULL,
    radius integer,
    year_discovered integer,
    moon_id integer
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroid_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    apparent_magnitude numeric,
    distance_from_the_earth numeric,
    constellation text,
    is_visible boolean
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
    name character varying(40) NOT NULL,
    moon_radius integer,
    gravity numeric,
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
    name character varying(50) NOT NULL,
    planet_diamater numeric,
    has_rings boolean,
    is_visible boolean,
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
    name character varying(50) NOT NULL,
    galaxy_id integer,
    hd_records integer,
    distance_in_light_years integer,
    is_visible boolean
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (1, 'Ceres', 435657, 1997, 1);
INSERT INTO public.asteroids VALUES (2, 'Vesta', 8394, 1876, 2);
INSERT INTO public.asteroids VALUES (3, 'pALLAS', 4354, 1834, 3);
INSERT INTO public.asteroids VALUES (4, 'Juno', 2732982, 1734, 4);
INSERT INTO public.asteroids VALUES (5, 'Hygiea', 859384, 1595, 5);
INSERT INTO public.asteroids VALUES (6, 'Eros', 7349, 1321, 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', -6.5, 0, 'Sagittarius', true);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic cloud', 0.9, 160, 'Dorado/Mensa', true);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic cloud', 2.7, 200, 'Tucana', true);
INSERT INTO public.galaxy VALUES (4, 'Andromeda galaxy', 3.4, 2.5, 'Andromeda', false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum galaxy', 5.7, 2.9, 'Triangulum', true);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 6.84, 13.7, 'Centaurus', true);
INSERT INTO public.galaxy VALUES (7, 'Bode galaxy', 6.94, 12, 'Ursa Major', false);
INSERT INTO public.galaxy VALUES (8, 'Sculptor galaxy', 7.2, 8, 'Sculptor', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 284743, 74.4, 1);
INSERT INTO public.moon VALUES (2, 'Io', 674321, 87.2, 1);
INSERT INTO public.moon VALUES (3, 'Europa', 63847, 34.0, 1);
INSERT INTO public.moon VALUES (4, 'Ganymede', 647234, 23.9, 2);
INSERT INTO public.moon VALUES (5, 'Callisto', 57937, 93.7, 3);
INSERT INTO public.moon VALUES (6, 'Mimas', 784526, 64.9, 2);
INSERT INTO public.moon VALUES (7, 'Phobos', 758347, 83.8, 4);
INSERT INTO public.moon VALUES (8, 'Titan', 276377, 97.4, 5);
INSERT INTO public.moon VALUES (9, 'Hermipe', 83246, 45.9, 6);
INSERT INTO public.moon VALUES (10, 'Ananke', 34573, 34.9, 7);
INSERT INTO public.moon VALUES (11, 'Carme', 58374, 45.8, 8);
INSERT INTO public.moon VALUES (12, 'Locaste', 472934, 67.1, 9);
INSERT INTO public.moon VALUES (13, 'Arche', 753948, 61.0, 10);
INSERT INTO public.moon VALUES (14, 'Ailtne', 72349, 30.8, 11);
INSERT INTO public.moon VALUES (15, 'Kalyle', 74983, 45.7, 12);
INSERT INTO public.moon VALUES (16, 'Aoede', 47782, 30.2, 13);
INSERT INTO public.moon VALUES (17, 'Tethys', 72837, 60.6, 6);
INSERT INTO public.moon VALUES (18, 'Miranda', NULL, NULL, 3);
INSERT INTO public.moon VALUES (19, 'Himalia', NULL, 78.2, 10);
INSERT INTO public.moon VALUES (20, 'Elara', NULL, NULL, 11);
INSERT INTO public.moon VALUES (21, 'Chaldene', 428734, NULL, 8);
INSERT INTO public.moon VALUES (22, 'Titania', NULL, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 382764, false, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Jupiter', 7945678, false, true, 1);
INSERT INTO public.planet VALUES (3, 'Saturn', 567024, true, true, 2);
INSERT INTO public.planet VALUES (4, 'Mercury', 98426, false, false, 2);
INSERT INTO public.planet VALUES (5, 'Mars', 4082553, false, true, 2);
INSERT INTO public.planet VALUES (6, 'Venus', 46284783, false, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 68347, true, true, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 46234729, false, true, 2);
INSERT INTO public.planet VALUES (9, 'Pluto', 873284, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Ceres', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Umbriele', 763483, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Dione', 8743248, NULL, NULL, 2);
INSERT INTO public.planet VALUES (13, 'Ariel', 874334, NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Centauri', 1, 160122, 145, true);
INSERT INTO public.star VALUES (2, 'Sun', 1, 175191, 224, true);
INSERT INTO public.star VALUES (3, 'Alpha Doradus', 2, 29305, 178, true);
INSERT INTO public.star VALUES (4, 'Gamma Tunacae', 3, 211416, 199, false);
INSERT INTO public.star VALUES (5, 'Delta Andromedae', 4, 3627, 101, true);
INSERT INTO public.star VALUES (6, '14 Trianguli', 5, 15656, 391, false);
INSERT INTO public.star VALUES (7, 'Proxima', 6, 7609432, 786, true);
INSERT INTO public.star VALUES (8, 'Krzeminski', 6, 985632, 987, true);
INSERT INTO public.star VALUES (9, 'Alcor', 7, 765234, 234, false);
INSERT INTO public.star VALUES (10, 'Mizar', 7, 234923, 294, false);


--
-- Name: asteroids_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroid_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: asteroids asteroids_asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_asteroid_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: galaxy galaxy_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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

