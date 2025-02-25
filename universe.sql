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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    distance_from_earth integer
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
    description text,
    planet_id integer NOT NULL,
    mass_in_kg numeric(50,10)
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
    description text,
    has_life boolean,
    can_have_life boolean,
    star_id integer NOT NULL
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
-- Name: space_events; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_events (
    space_events_id integer NOT NULL,
    name character varying(100) NOT NULL,
    event_type character varying(50) NOT NULL,
    severity integer NOT NULL,
    planet_id integer,
    star_id integer,
    moon_id integer,
    date date
);


ALTER TABLE public.space_events OWNER TO freecodecamp;

--
-- Name: space_events_space_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_events_space_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_events_space_event_id_seq OWNER TO freecodecamp;

--
-- Name: space_events_space_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_events_space_event_id_seq OWNED BY public.space_events.space_events_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer
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
-- Name: space_events space_events_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_events ALTER COLUMN space_events_id SET DEFAULT nextval('public.space_events_space_event_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'La galaxia mas grande del grupo local', 10000, 2537000);
INSERT INTO public.galaxy VALUES (2, 'Via Lactea', 'Nuestra galaxia, hogar del sistema solar', 13600, 0);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Una galaxia elíptica gigante con un agujero negro supermasivo.', 9800, 53000000);
INSERT INTO public.galaxy VALUES (4, 'Triángulo', 'Tercera galaxia más grande del Grupo Local.', 13000, 3000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Galaxia con un núcleo brillante y un disco de polvo oscuro.', 9000, 29000000);
INSERT INTO public.galaxy VALUES (6, 'Ojo Negro', 'Galaxia con una banda oscura de polvo interestelar.', 11000, 17000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 'Nuestra luna, satélite natural de la Tierra.', 1, 73476730000000000000000.0000000000);
INSERT INTO public.moon VALUES (2, 'Fobos', 'Una de las lunas de Marte, pequeña y cercana al planeta.', 2, 10659000000000000.0000000000);
INSERT INTO public.moon VALUES (3, 'Deimos', 'La otra luna de Marte, más distante y pequeña.', 2, 2000000000000000.0000000000);
INSERT INTO public.moon VALUES (4, 'Andromeda-1-Luna', 'Luna del planeta Andromeda-1, sin atmósfera.', 3, 300000000000000000.0000000000);
INSERT INTO public.moon VALUES (5, 'Andromeda-2-Luna', 'Luna desértica de Andromeda-2.', 4, 45000000000000000.0000000000);
INSERT INTO public.moon VALUES (6, 'M87-1-Luna', 'Luna del planeta M87-1, helada y sin vida.', 5, 560000000000000000.0000000000);
INSERT INTO public.moon VALUES (7, 'M87-2-Luna', 'Luna del planeta M87-2, con una atmósfera densa.', 6, 38000000000000000.0000000000);
INSERT INTO public.moon VALUES (8, 'Triángulo-1-Luna', 'Luna helada de Triángulo-1.', 7, 1200000000000000000.0000000000);
INSERT INTO public.moon VALUES (9, 'Triángulo-2-Luna', 'Luna cálida de Triángulo-2.', 8, 2300000000000000000.0000000000);
INSERT INTO public.moon VALUES (10, 'Sombrero-1-Luna', 'Luna rocoso del planeta Sombrero-1.', 9, 290000000000000000.0000000000);
INSERT INTO public.moon VALUES (11, 'Sombrero-2-Luna', 'Luna cálida del planeta Sombrero-2.', 10, 250000000000000000.0000000000);
INSERT INTO public.moon VALUES (12, 'Ojo Negro-1-Luna', 'Luna gaseosa del planeta Ojo Negro-1.', 11, 3200000000000000000.0000000000);
INSERT INTO public.moon VALUES (13, 'Ojo Negro-2-Luna', 'Luna oscura del planeta Ojo Negro-2.', 12, 4100000000000000000.0000000000);
INSERT INTO public.moon VALUES (14, 'Luna-PM1', 'Pequeña luna del planeta Marte-1, ubicada a gran distancia.', 2, 3400000000000000.0000000000);
INSERT INTO public.moon VALUES (15, 'Luna-PM2', 'Otra luna de Marte-1, no visible a simple vista.', 2, 27000000000000000.0000000000);
INSERT INTO public.moon VALUES (16, 'Luna-Triángulo-1', 'Luna fría y rocoso de Triángulo-1.', 7, 210000000000000000.0000000000);
INSERT INTO public.moon VALUES (17, 'Luna-Triángulo-2', 'Luna cálida de Triángulo-2, rica en gases.', 8, 300000000000000000.0000000000);
INSERT INTO public.moon VALUES (18, 'Luna-Sombrero-1', 'Luna pequeña del planeta Sombrero-1, sin atmósfera.', 9, 11000000000000000.0000000000);
INSERT INTO public.moon VALUES (19, 'Luna-Sombrero-2', 'Luna cálida y gaseosa del planeta Sombrero-2.', 10, 28000000000000000.0000000000);
INSERT INTO public.moon VALUES (20, 'Luna-Ojo Negro-1', 'Luna gigantesca del planeta Ojo Negro-1, con un núcleo metálico.', 11, 40000000000000000000.0000000000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Tierra', 'Planeta con vida, hogar de la humanidad.', true, true, 2);
INSERT INTO public.planet VALUES (2, 'Marte', 'Planeta rojo, cercano a la Tierra.', false, true, 2);
INSERT INTO public.planet VALUES (3, 'Andromeda-1', 'Planeta en la galaxia Andrómeda, sin vida.', false, false, 1);
INSERT INTO public.planet VALUES (4, 'Andromeda-2', 'Planeta rocoso en la galaxia Andrómeda, inhóspito.', false, false, 1);
INSERT INTO public.planet VALUES (5, 'M87-1', 'Planeta en la galaxia M87, cerca del agujero negro.', false, false, 3);
INSERT INTO public.planet VALUES (6, 'M87-2', 'Planeta helado y sin vida en la galaxia M87.', false, false, 3);
INSERT INTO public.planet VALUES (7, 'Triángulo-1', 'Planeta pequeño en la galaxia del Triángulo, frío.', false, true, 4);
INSERT INTO public.planet VALUES (8, 'Triángulo-2', 'Planeta con atmósfera densa en la galaxia del Triángulo.', false, true, 4);
INSERT INTO public.planet VALUES (9, 'Sombrero-1', 'Planeta rocoso en la galaxia Sombrero, sin vida.', false, false, 5);
INSERT INTO public.planet VALUES (10, 'Sombrero-2', 'Planeta cálido en la galaxia Sombrero.', false, true, 5);
INSERT INTO public.planet VALUES (11, 'Ojo Negro-1', 'Planeta gaseoso en la galaxia Ojo Negro.', false, false, 6);
INSERT INTO public.planet VALUES (12, 'Ojo Negro-2', 'Planeta oscuro, sin vida en la galaxia Ojo Negro.', false, false, 6);


--
-- Data for Name: space_events; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_events VALUES (1, 'Eclipse Lunar', 'Eclipse', 1, 1, 1, 1, NULL);
INSERT INTO public.space_events VALUES (2, 'Microlente gravitacional en Andromeda', 'Microlente Gravitacional', 6, 3, 2, 4, NULL);
INSERT INTO public.space_events VALUES (3, 'Supernova en M87', 'Supernova', 10, 5, 3, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'Nuestra estrella, una enana amarilla que sustenta la vida en la Tierra.', 2, 4600);
INSERT INTO public.star VALUES (2, 'PA-99-N2', 'Estrella en la galaxia de Andrómeda, famosa por un posible evento de microlente gravitacional.', 1, 6000);
INSERT INTO public.star VALUES (3, 'M87*', 'Estrella en el núcleo de la galaxia M87, asociada al famoso agujero negro supermasivo.', 3, 10000);
INSERT INTO public.star VALUES (4, 'M33-0466', 'Estrella masiva en la galaxia del Triángulo, detectada por el Telescopio Hubble.', 4, 7500);
INSERT INTO public.star VALUES (5, 'NGC 4594-V1', 'Cefeida en la galaxia del Sombrero utilizada para medir su distancia a la Tierra.', 5, 8000);
INSERT INTO public.star VALUES (6, 'NGC 4826-1', 'Estrella gigante en la galaxia Ojo Negro, parte de su estructura interna de formación estelar.', 6, 7000);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: space_events_space_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_events_space_event_id_seq', 3, true);


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
-- Name: space_events space_events_date_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_events
    ADD CONSTRAINT space_events_date_key UNIQUE (date);


--
-- Name: space_events space_events_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_events
    ADD CONSTRAINT space_events_pkey PRIMARY KEY (space_events_id);


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
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: space_events fk_space_event_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_events
    ADD CONSTRAINT fk_space_event_moon FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: space_events fk_space_event_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_events
    ADD CONSTRAINT fk_space_event_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: space_events fk_space_event_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_events
    ADD CONSTRAINT fk_space_event_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

