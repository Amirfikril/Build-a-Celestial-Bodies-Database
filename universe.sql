--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: constallation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constallation (
    constallation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    c_description text
);


ALTER TABLE public.constallation OWNER TO freecodecamp;

--
-- Name: constallation_constallation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constallation_constallation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constallation_constallation_id_seq OWNER TO freecodecamp;

--
-- Name: constallation_constallation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constallation_constallation_id_seq OWNED BY public.constallation.constallation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_in_billion integer,
    see_with_naked_eyes boolean NOT NULL,
    location_in_millon numeric(4,1)
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
    planet_id integer,
    range_to_planet integer,
    name_meaning text
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
    star_id integer,
    range_to_star numeric(5,2),
    planet_size_million_km integer,
    has_moon boolean NOT NULL
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    has_planet boolean NOT NULL,
    star_size_com_sun numeric(6,2) NOT NULL,
    constallation_id integer
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
-- Name: constallation constallation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constallation ALTER COLUMN constallation_id SET DEFAULT nextval('public.constallation_constallation_id_seq'::regclass);


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
-- Data for Name: constallation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constallation VALUES (1, 'Orion', 'The hunter constellation is one of the most recognizable constellations in the night sky. It is located on the celestial equator and is visible from both hemispheres. The constellation contains many bright stars, including Betelgeuse, Rigel, and Orion Belt.');
INSERT INTO public.constallation VALUES (2, 'Ursa Major', 'Also known as the Great Bear, Ursa Major is a constellation that is located in the northern hemisphere. It is one of the largest constellations in the sky and contains several well-known stars, including Polaris (the North Star), Dubhe, and Alkaid.');
INSERT INTO public.constallation VALUES (3, 'Canis Major', 'The Greater Dog constellation is located in the southern hemisphere. It is home to Sirius, the brightest star in the night sky. Canis Major also contains several other bright stars, including Procyon and Epsilon Canis Majoris.');
INSERT INTO public.constallation VALUES (4, 'Centaurus', 'a large constellation located in the southern celestial hemisphere. It is the ninth largest constellation, covering an area of 1,060 square degrees. The constellation is named after the centaur, a mythical creature from Greek mythology that is half-human and half-horse.');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 200, true, 0.0);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 1000, true, 2.5);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 30, false, 3.0);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 100, false, 28.0);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 100, false, 400.0);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 100, false, 400.0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 3, 384400, 'Latin for moon Earth.');
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 9377, 'Greek for fear ');
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 23460, 'Greek for dread .');
INSERT INTO public.moon VALUES (4, 'Io', 5, 421700, 'a priestess of Hera who was loved by Zeus.');
INSERT INTO public.moon VALUES (5, 'Europa', 5, 671000, 'a Phoenician noblewoman who was abducted by Zeus  who took the form of a bull.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 1070000, 'a Trojan prince who was abducted by Zeus to serve as his cupbearer.');
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 1883000, 'a nymph who was seduced by Zeus (Jupiter) in the form of Artemis.');
INSERT INTO public.moon VALUES (8, 'Titan', 6, 1221800, 'the powerful race of giants who preceded the Olympian gods in Greek mythology.');
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 523000, 'the Titan who was the wife of Cronus (Saturn) and the mother of many of the Olympian gods.');
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 1295000, 'a Titan who was the father of Atlas and Prometheus.');
INSERT INTO public.moon VALUES (11, 'Dione', 6, 377400, 'a Titan who was the mother of Aphrodite  by Zeus.');
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 331900, 'a Titan who was the sister and wife of Oceanus, the primordial god of the sea.');
INSERT INTO public.moon VALUES (13, 'Titania', 7, 1436300, 'the queen of the fairies in William Shakespeare play ');
INSERT INTO public.moon VALUES (14, 'Oberon', 7, 1522800, 'the king of the fairies in William Shakespeare play');
INSERT INTO public.moon VALUES (15, 'Umbriel', 7, 266000, 'Italian word for shadow.');
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 258300, 'a spirit of the air in Alexander Pope poem.');
INSERT INTO public.moon VALUES (17, 'Triton', 8, 276600, 'a merman who was the son of Poseidon and messenger of the sea.');
INSERT INTO public.moon VALUES (18, 'Nereid', 8, 5513000, 'the 50 sea nymphs who were the daughters of Nereus, the old man of the sea, and Doris.');
INSERT INTO public.moon VALUES (19, 'Naiad', 8, 48200, 'the freshwater nymphs who resided in springs, streams, fountains, and lakes.');
INSERT INTO public.moon VALUES (20, 'Proteus', 8, 117600, 'a prophetic sea god who could change his form at will.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0.39, 4879, false);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 0.72, 12104, false);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1.00, 12756, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 1.52, 6779, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 5.20, 142984, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 9.54, 120536, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 19.18, 51118, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 30.06, 49528, true);
INSERT INTO public.planet VALUES (9, 'Kepler', 3, 500.00, 14669, false);
INSERT INTO public.planet VALUES (10, 'TRAPPIST', 3, 380.00, 9822, false);
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 3, 200.00, 14286, false);
INSERT INTO public.planet VALUES (12, 'Gliese', 3, 900.00, 14286, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, 1.00, 4);
INSERT INTO public.star VALUES (2, 'Sirius', 1, false, 1.71, 3);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, true, 0.15, 4);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 1, false, 1.10, 4);
INSERT INTO public.star VALUES (5, 'Alpha Centauri B', 1, false, 0.91, 4);
INSERT INTO public.star VALUES (6, 'Betelgeuse', 1, false, 1400.00, 4);


--
-- Name: constallation_constallation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constallation_constallation_id_seq', 4, true);


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
-- Name: constallation constallation_c_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constallation
    ADD CONSTRAINT constallation_c_name_key UNIQUE (name);


--
-- Name: constallation constallation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constallation
    ADD CONSTRAINT constallation_pkey PRIMARY KEY (constallation_id);


--
-- Name: galaxy galaxy_g_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_g_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_m_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_m_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_p_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_p_name_key UNIQUE (name);


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
-- Name: star fk_constallation_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_constallation_id FOREIGN KEY (constallation_id) REFERENCES public.constallation(constallation_id);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

