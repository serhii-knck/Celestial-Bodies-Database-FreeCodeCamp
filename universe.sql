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
-- Name: description; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.description (
    name character varying(30) NOT NULL,
    description_id integer NOT NULL,
    object_id integer NOT NULL
);


ALTER TABLE public.description OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_description_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_description_id_seq OWNER TO freecodecamp;

--
-- Name: description_description_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_description_id_seq OWNED BY public.description.description_id;


--
-- Name: description_object_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.description_object_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.description_object_id_seq OWNER TO freecodecamp;

--
-- Name: description_object_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.description_object_id_seq OWNED BY public.description.object_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    galaxy_id integer NOT NULL,
    area integer,
    volume integer
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
    name character varying(30),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    area integer,
    volume integer
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
    name character varying(30),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    planet_id integer NOT NULL,
    star_id integer NOT NULL,
    area integer,
    volume integer
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
    name character varying(30),
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years numeric,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    area integer,
    volume integer
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
-- Name: description description_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN description_id SET DEFAULT nextval('public.description_description_id_seq'::regclass);


--
-- Name: description object_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description ALTER COLUMN object_id SET DEFAULT nextval('public.description_object_id_seq'::regclass);


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
-- Data for Name: description; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.description VALUES ('name_1', 1, 1);
INSERT INTO public.description VALUES ('name_2', 2, 2);
INSERT INTO public.description VALUES ('name_3', 3, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('name_1', true, false, 1, 'planet_types_1', 'galaxy_types_1', 1.0, 1, 1, 1);
INSERT INTO public.galaxy VALUES ('name_2', true, false, 2, 'planet_types_2', 'galaxy_types_2', 2.0, 2, 2, 2);
INSERT INTO public.galaxy VALUES ('name_3', true, false, 3, 'planet_types_3', 'galaxy_types_3', 3.0, 3, 3, 3);
INSERT INTO public.galaxy VALUES ('name_4', true, false, 4, 'planet_types_4', 'galaxy_types_4', 4.0, 4, 4, 4);
INSERT INTO public.galaxy VALUES ('name_5', true, false, 5, 'planet_types_5', 'galaxy_types_5', 5.0, 5, 5, 5);
INSERT INTO public.galaxy VALUES ('name_6', true, false, 6, 'planet_types_6', 'galaxy_types_6', 6.0, 6, 6, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon_1', false, false, 1.0, 'planet_type_1', 'galaxy_types_1', 1.0, 1, 1, 1, 1);
INSERT INTO public.moon VALUES ('moon_2', false, false, 2.0, 'planet_type_2', 'galaxy_types_2', 2.0, 2, 2, 2, 2);
INSERT INTO public.moon VALUES ('moon_3', false, false, 3.0, 'planet_type_3', 'galaxy_types_3', 3.0, 3, 3, 3, 3);
INSERT INTO public.moon VALUES ('moon_4', false, false, 4.0, 'planet_type_4', 'galaxy_types_4', 4.0, 4, 4, 4, 4);
INSERT INTO public.moon VALUES ('moon_5', false, false, 5.0, 'planet_type_5', 'galaxy_types_5', 5.0, 5, 5, 5, 5);
INSERT INTO public.moon VALUES ('moon_6', false, false, 6.0, 'planet_type_6', 'galaxy_types_6', 6.0, 6, 6, 6, 6);
INSERT INTO public.moon VALUES ('moon_7', false, false, 7.0, 'planet_type_7', 'galaxy_types_7', 7.0, 7, 7, 7, 7);
INSERT INTO public.moon VALUES ('moon_8', false, false, 8.0, 'planet_type_8', 'galaxy_types_8', 8.0, 8, 8, 8, 8);
INSERT INTO public.moon VALUES ('moon_9', false, false, 9.0, 'planet_type_9', 'galaxy_types_9', 9.0, 9, 9, 9, 9);
INSERT INTO public.moon VALUES ('moon_10', false, false, 10.0, 'planet_type_10', 'galaxy_types_10', 10.0, 10, 10, 10, 10);
INSERT INTO public.moon VALUES ('moon_11', false, false, 11.0, 'planet_type_11', 'galaxy_types_11', 11.0, 11, 11, 11, 11);
INSERT INTO public.moon VALUES ('moon_12', false, false, 12.0, 'planet_type_12', 'galaxy_types_12', 12.0, 12, 12, 12, 12);
INSERT INTO public.moon VALUES ('moon_13', false, false, 13.0, 'planet_type_13', 'galaxy_types_13', 13.0, 13, 12, 13, 13);
INSERT INTO public.moon VALUES ('moon_14', false, false, 14.0, 'planet_type_14', 'galaxy_types_14', 14.0, 14, 12, 14, 14);
INSERT INTO public.moon VALUES ('moon_15', false, false, 15.0, 'planet_type_15', 'galaxy_types_15', 15.0, 15, 12, 15, 15);
INSERT INTO public.moon VALUES ('moon_16', false, false, 16.0, 'planet_type_16', 'galaxy_types_16', 16.0, 16, 12, 16, 16);
INSERT INTO public.moon VALUES ('moon_17', false, false, 17.0, 'planet_type_17', 'galaxy_types_17', 17.0, 17, 12, 17, 17);
INSERT INTO public.moon VALUES ('moon_18', false, false, 18.0, 'planet_type_18', 'galaxy_types_18', 18.0, 18, 12, 18, 18);
INSERT INTO public.moon VALUES ('moon_19', false, false, 19.0, 'planet_type_19', 'galaxy_types_19', 19.0, 19, 12, 19, 19);
INSERT INTO public.moon VALUES ('moon_20', false, false, 20.0, 'planet_type_20', 'galaxy_types_20', 20.0, 20, 12, 20, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet_1', true, false, 1.0, 'planet_types_1', 'galaxy_types_1', 1.0, 1, 1, 1, 1);
INSERT INTO public.planet VALUES ('planet_2', true, false, 2.0, 'planet_types_2', 'galaxy_types_2', 2.0, 2, 1, 2, 2);
INSERT INTO public.planet VALUES ('planet_3', true, false, 3.0, 'planet_types_3', 'galaxy_types_3', 3.0, 3, 3, 3, 3);
INSERT INTO public.planet VALUES ('planet_4', true, false, 4.0, 'planet_types_4', 'galaxy_types_4', 4.0, 4, 4, 4, 4);
INSERT INTO public.planet VALUES ('planet_5', true, false, 5.0, 'planet_types_5', 'galaxy_types_5', 5.0, 5, 5, 5, 5);
INSERT INTO public.planet VALUES ('planet_6', true, false, 6.0, 'planet_types_6', 'galaxy_types_6', 6.0, 6, 6, 6, 6);
INSERT INTO public.planet VALUES ('planet_7', true, false, 7.0, 'planet_types_7', 'galaxy_types_7', 7.0, 7, 1, 7, 7);
INSERT INTO public.planet VALUES ('planet_8', true, false, 8.0, 'planet_types_8', 'galaxy_types_8', 8.0, 8, 2, 8, 8);
INSERT INTO public.planet VALUES ('planet_9', true, false, 9.0, 'planet_types_9', 'galaxy_types_9', 9.0, 9, 3, 9, 9);
INSERT INTO public.planet VALUES ('planet_10', true, false, 10.0, 'planet_types_10', 'galaxy_types_10', 10.0, 10, 4, 10, 10);
INSERT INTO public.planet VALUES ('planet_11', true, false, 11.0, 'planet_types_11', 'galaxy_types_11', 11.0, 11, 5, 11, 11);
INSERT INTO public.planet VALUES ('planet_12', true, false, 12.0, 'planet_types_12', 'galaxy_types_12', 12.0, 12, 6, 12, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('name_1', true, false, 1, 'planet_types_1', 'galaxy_types_1', 1.0, 1, 1, 1, 1);
INSERT INTO public.star VALUES ('name_2', true, false, 2, 'planet_types_2', 'galaxy_types_2', 1.0, 2, 1, 1, 1);
INSERT INTO public.star VALUES ('name_3', true, false, 3, 'planet_types_3', 'galaxy_types_3', 3.0, 3, 3, 3, 3);
INSERT INTO public.star VALUES ('name_4', true, false, 4, 'planet_types_4', 'galaxy_types_4', 4.0, 4, 4, 4, 4);
INSERT INTO public.star VALUES ('name_5', true, false, 5, 'planet_types_5', 'galaxy_types_5', 5.0, 5, 5, 5, 5);
INSERT INTO public.star VALUES ('name_6', true, false, 6, 'planet_types_6', 'galaxy_types_6', 6.0, 6, 6, 6, 6);


--
-- Name: description_description_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_description_id_seq', 1, false);


--
-- Name: description_object_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.description_object_id_seq', 1, false);


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
-- Name: description description_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_name_key UNIQUE (name);


--
-- Name: description description_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.description
    ADD CONSTRAINT description_pkey PRIMARY KEY (description_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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

