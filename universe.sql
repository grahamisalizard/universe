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
    name character varying(30) NOT NULL,
    size_in_lightyears integer,
    age integer,
    galaxy_type text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_km integer,
    habitable boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_km integer,
    habitable boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planets_with_moons; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planets_with_moons (
    planets_with_moons_id integer NOT NULL,
    planet character varying(30) NOT NULL,
    moon character varying(30) NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.planets_with_moons OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size_in_km numeric,
    heat integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milkyway', 52800, 14, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Snickers', 64000, 28, 'Peculiar');
INSERT INTO public.galaxy VALUES (3, 'Bounty', 74232, 10, 'Elliptical');
INSERT INTO public.galaxy VALUES (4, 'Twix', 98312, 77, 'Irregular');
INSERT INTO public.galaxy VALUES (5, 'Malteaser', 662876, 7, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Rocher', 33123, 9, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1737, false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 27, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 15, false, 4);
INSERT INTO public.moon VALUES (4, 'Europa', 1569, true, 5);
INSERT INTO public.moon VALUES (5, 'Io', 1815, true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2631, true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 2400, true, 5);
INSERT INTO public.moon VALUES (8, 'Titan', 2575, true, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 765, false, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 250, true, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 560, true, 6);
INSERT INTO public.moon VALUES (12, 'Triton', 1350, true, 8);
INSERT INTO public.moon VALUES (13, 'Proteus', 200, false, 8);
INSERT INTO public.moon VALUES (14, 'Mun', 1490, false, 9);
INSERT INTO public.moon VALUES (15, 'Minmus', 3411, false, 9);
INSERT INTO public.moon VALUES (16, 'Ember Twin', 800, true, 11);
INSERT INTO public.moon VALUES (17, 'Portsmouth', 8, true, 12);
INSERT INTO public.moon VALUES (18, 'Brighton', 12, false, 12);
INSERT INTO public.moon VALUES (19, 'Titania', 789, false, 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 761, false, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4879, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 12104, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 12742, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 6779, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 139822, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 120536, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 50724, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 49244, false, 1);
INSERT INTO public.planet VALUES (9, 'Kerbin', 30100, true, 3);
INSERT INTO public.planet VALUES (10, 'Jack', 72345, true, 6);
INSERT INTO public.planet VALUES (11, 'Ash Twin', 83217, true, 4);
INSERT INTO public.planet VALUES (12, 'Hayling', 83217, true, 2);


--
-- Data for Name: planets_with_moons; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planets_with_moons VALUES (1, 'Earth', 'Luna', 'Lunar Orbit');
INSERT INTO public.planets_with_moons VALUES (2, 'Ash Twin', 'Ember Twin', 'Twins');
INSERT INTO public.planets_with_moons VALUES (3, 'Hayling', 'Portsmouth', 'Solent');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 696342, 2, 1);
INSERT INTO public.star VALUES (2, 'Kane', 403873, 3, 2);
INSERT INTO public.star VALUES (3, 'Doherty', 88290, 1, 3);
INSERT INTO public.star VALUES (4, 'Lloris', 798723, 9, 4);
INSERT INTO public.star VALUES (5, 'Kulu', 29572, 1, 5);
INSERT INTO public.star VALUES (6, 'Romero', 92743, 13, 6);


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
-- Name: planets_with_moons planets_with_moons_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_with_moons
    ADD CONSTRAINT planets_with_moons_moon_key UNIQUE (moon);


--
-- Name: planets_with_moons planets_with_moons_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_with_moons
    ADD CONSTRAINT planets_with_moons_name_key UNIQUE (name);


--
-- Name: planets_with_moons planets_with_moons_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_with_moons
    ADD CONSTRAINT planets_with_moons_pkey PRIMARY KEY (planets_with_moons_id);


--
-- Name: planets_with_moons planets_with_moons_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planets_with_moons
    ADD CONSTRAINT planets_with_moons_planet_key UNIQUE (planet);


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

