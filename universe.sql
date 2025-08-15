--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_millions integer NOT NULL,
    star_count integer NOT NULL,
    distance_light_years numeric(10,2) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age_millions integer NOT NULL,
    star_count integer NOT NULL,
    distance_light_years numeric(10,2) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean
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
    name character varying(100) NOT NULL,
    age_millions integer NOT NULL,
    diameter_km integer NOT NULL,
    distance_light_years numeric(10,2) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(100) NOT NULL,
    age_millions integer NOT NULL,
    diameter_km integer NOT NULL,
    distance_light_years numeric(10,2) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
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
    name character varying(100) NOT NULL,
    age_millions integer NOT NULL,
    magnitude integer NOT NULL,
    distance_light_years numeric(10,2) NOT NULL,
    description text,
    has_life boolean,
    is_spherical boolean,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 10000, 10, 1344.00, 'Hunter constellation', false, false);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 12000, 15, 124.00, 'Big Bear', false, false);
INSERT INTO public.constellation VALUES (3, 'Cassiopeia', 11000, 12, 200.00, 'Queen constellation', false, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 100, 0.00, 'Our galaxy', false, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 150, 2.54, 'Nearest spiral galaxy', false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 8000, 40, 3.00, 'Small spiral galaxy', false, false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 13000, 80, 31.00, 'Spiral galaxy', false, true);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 12000, 90, 23.00, 'Interacting galaxy', false, true);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 14000, 70, 11.00, 'Elliptical galaxy', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4500, 3474, 0.00, 'Earth''s moon', false, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 4600, 22, 0.00, 'Mars moon', false, false, 2);
INSERT INTO public.moon VALUES (3, 'Deimos', 4600, 12, 0.00, 'Mars moon', false, false, 2);
INSERT INTO public.moon VALUES (4, 'Io', 4600, 3643, 0.00, 'Jupiter moon', false, true, 3);
INSERT INTO public.moon VALUES (5, 'Europa', 4600, 3121, 0.00, 'Icy moon', false, true, 3);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4600, 5262, 0.00, 'Largest moon', false, true, 3);
INSERT INTO public.moon VALUES (7, 'Callisto', 4600, 4820, 0.00, 'Cratered moon', false, true, 3);
INSERT INTO public.moon VALUES (8, 'Titan', 4600, 5149, 0.00, 'Saturn moon', false, true, 4);
INSERT INTO public.moon VALUES (9, 'Rhea', 4600, 1527, 0.00, 'Icy moon', false, true, 4);
INSERT INTO public.moon VALUES (10, 'Tethys', 4600, 1062, 0.00, 'Saturn moon', false, true, 4);
INSERT INTO public.moon VALUES (11, 'Dione', 4600, 1123, 0.00, 'Saturn moon', false, true, 4);
INSERT INTO public.moon VALUES (12, 'Iapetus', 4600, 1470, 0.00, 'Two-tone moon', false, true, 4);
INSERT INTO public.moon VALUES (13, 'Mimas', 4600, 396, 0.00, 'Death Star moon', false, true, 4);
INSERT INTO public.moon VALUES (14, 'Enceladus', 4600, 504, 0.00, 'Geyser moon', false, true, 4);
INSERT INTO public.moon VALUES (15, 'Hyperion', 4600, 270, 0.00, 'Sponge moon', false, false, 4);
INSERT INTO public.moon VALUES (16, 'Phoebe', 4600, 213, 0.00, 'Retrograde moon', false, false, 4);
INSERT INTO public.moon VALUES (17, 'Ariel', 4600, 1158, 0.00, 'Uranus moon', false, true, 5);
INSERT INTO public.moon VALUES (18, 'Umbriel', 4600, 1169, 0.00, 'Dark moon', false, true, 5);
INSERT INTO public.moon VALUES (19, 'Titania', 4600, 1577, 0.00, 'Uranus moon', false, true, 5);
INSERT INTO public.moon VALUES (20, 'Oberon', 4600, 1522, 0.00, 'Uranus moon', false, true, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 4500, 12742, 0.00, 'Habitable planet', true, true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 4600, 6792, 0.00, 'Red planet', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 4600, 139820, 0.00, 'Gas giant', false, true, 1);
INSERT INTO public.planet VALUES (4, 'Venus', 4600, 12104, 0.00, 'Hot planet', false, true, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 4600, 4879, 0.00, 'Smallest planet', false, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4600, 116460, 0.00, 'Ringed planet', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4600, 50724, 0.00, 'Ice giant', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4600, 49244, 0.00, 'Blue giant', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', 4600, 2376, 0.00, 'Dwarf planet', false, true, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 4000, 11000, 600.00, 'Exoplanet', false, true, 2);
INSERT INTO public.planet VALUES (11, 'HD 189733b', 4000, 13000, 64.50, 'Blue exoplanet', false, true, 2);
INSERT INTO public.planet VALUES (15, 'Zentara', 4500, 12000, 15.50, 'Fictional gas planet', false, true, 1);
INSERT INTO public.planet VALUES (16, 'Xylion', 4600, 8000, 20.75, 'Rocky exoplanet', false, true, 1);
INSERT INTO public.planet VALUES (17, 'Ydris', 4400, 9500, 30.00, 'Icy distant world', false, true, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 4, 0.00, 'Our star', false, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 240, 1, 8.58, 'Brightest star', false, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10000, 0, 640.00, 'Red supergiant', false, true, 2);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4800, 11, 4.24, 'Closest star', false, true, 1);
INSERT INTO public.star VALUES (5, 'Altair', 1000, 0, 16.73, 'Bright star', false, true, 2);
INSERT INTO public.star VALUES (6, 'Vega', 455, 0, 25.04, 'Luminous star', false, true, 3);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_name_; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_ UNIQUE (name);


--
-- Name: planet unique_name_2; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_2 UNIQUE (name);


--
-- Name: moon unique_name_3; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_3 UNIQUE (name);


--
-- Name: constellation unique_name_4; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT unique_name_4 UNIQUE (name);


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

