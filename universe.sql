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
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    constelation text,
    notes text,
    distance numeric,
    star_galaxy_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    is_fun boolean,
    life_is_brutal integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: more_planet_info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.more_planet_info (
    name character varying(30) NOT NULL,
    more_planet_info_id integer NOT NULL,
    haha_id integer NOT NULL
);


ALTER TABLE public.more_planet_info OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    order_from_the_sun integer NOT NULL,
    has_life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    star_id integer NOT NULL,
    which_galaxy text,
    distance_in_ly integer,
    f_classification integer,
    star_galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'Sagittarius', 'Looks like band of light', 0, 1);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Andromeda', 'Expected to colide with Milky Way someday', 770, 2);
INSERT INTO public.galaxy VALUES ('Small magellanic cloud', 3, 'Tucana', 'Visible only from southern hemosphere', 61, 3);
INSERT INTO public.galaxy VALUES ('Large magellanic cloud', 4, 'Dorado', 'Visible only from southern hemosphere', 49, 4);
INSERT INTO public.galaxy VALUES ('Triangulum', 5, 'Triangulum', 'Being a diffuse object', 890, 5);
INSERT INTO public.galaxy VALUES ('Centaurus A', 6, 'Centaurus', 'Spotted by Stephen James O`Meara', 4200, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, false, 1, 1);
INSERT INTO public.moon VALUES ('moon2', 2, false, 2, 2);
INSERT INTO public.moon VALUES ('moon3', 3, false, 3, 3);
INSERT INTO public.moon VALUES ('moon4', 4, false, 4, 4);
INSERT INTO public.moon VALUES ('moon5', 5, false, 5, 5);
INSERT INTO public.moon VALUES ('moon6', 6, false, 6, 6);
INSERT INTO public.moon VALUES ('moon7', 7, false, 7, 7);
INSERT INTO public.moon VALUES ('moon8', 8, false, 8, 8);
INSERT INTO public.moon VALUES ('moon9', 9, false, 9, 8);
INSERT INTO public.moon VALUES ('moon10', 10, false, 9, 8);
INSERT INTO public.moon VALUES ('moon11', 11, false, 9, 8);
INSERT INTO public.moon VALUES ('moon12', 12, false, 9, 8);
INSERT INTO public.moon VALUES ('moon13', 13, false, 9, 8);
INSERT INTO public.moon VALUES ('moon14', 14, false, 9, 8);
INSERT INTO public.moon VALUES ('moon15', 15, false, 9, 8);
INSERT INTO public.moon VALUES ('moon16', 16, false, 9, 8);
INSERT INTO public.moon VALUES ('moon17', 17, false, 9, 8);
INSERT INTO public.moon VALUES ('moon18', 18, false, 9, 8);
INSERT INTO public.moon VALUES ('moon19', 19, false, 9, 8);
INSERT INTO public.moon VALUES ('moon20', 20, false, 9, 8);


--
-- Data for Name: more_planet_info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.more_planet_info VALUES ('xd1', 1, 1);
INSERT INTO public.more_planet_info VALUES ('xd2', 2, 2);
INSERT INTO public.more_planet_info VALUES ('xd3', 3, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 1, 1, false, 'desc1', 1);
INSERT INTO public.planet VALUES ('planet2', 2, 2, false, 'desc2', 2);
INSERT INTO public.planet VALUES ('planet3', 3, 3, false, 'desc3', 3);
INSERT INTO public.planet VALUES ('planet4', 4, 4, false, 'desc4', 4);
INSERT INTO public.planet VALUES ('planet5', 5, 5, false, 'desc5', 5);
INSERT INTO public.planet VALUES ('planet6', 6, 6, false, 'desc6', 6);
INSERT INTO public.planet VALUES ('planet7', 7, 7, false, 'desc7', 6);
INSERT INTO public.planet VALUES ('planet8', 8, 8, false, 'desc8', 6);
INSERT INTO public.planet VALUES ('planet9', 9, 9, false, 'desc9', 6);
INSERT INTO public.planet VALUES ('planet10', 10, 10, true, 'desc10', 6);
INSERT INTO public.planet VALUES ('planet11', 11, 11, true, 'desc11', 6);
INSERT INTO public.planet VALUES ('planet12', 12, 12, true, 'desc12', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('star1', 1, 'Andromeda', 1, 1, 1);
INSERT INTO public.star VALUES ('star2', 2, 'Andromeda', 2, 2, 2);
INSERT INTO public.star VALUES ('star3', 3, 'Andromeda', 3, 3, 3);
INSERT INTO public.star VALUES ('star4', 4, 'Andromeda', 4, 4, 4);
INSERT INTO public.star VALUES ('star5', 5, 'Andromeda', 5, 5, 5);
INSERT INTO public.star VALUES ('star6', 6, 'Andromeda', 6, 6, 6);


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
-- Name: galaxy galaxy_star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_galaxy_id_key UNIQUE (star_galaxy_id);


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
-- Name: more_planet_info more_planet_info_haha_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet_info
    ADD CONSTRAINT more_planet_info_haha_id_key UNIQUE (haha_id);


--
-- Name: more_planet_info more_planet_info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.more_planet_info
    ADD CONSTRAINT more_planet_info_pkey PRIMARY KEY (more_planet_info_id);


--
-- Name: planet planet_order_from_the_sun_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_order_from_the_sun_key UNIQUE (order_from_the_sun);


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
-- Name: star star_star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_galaxy_id_key UNIQUE (star_galaxy_id);


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
-- Name: star star_glxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_glxy_id FOREIGN KEY (star_galaxy_id) REFERENCES public.galaxy(star_galaxy_id);


--
-- PostgreSQL database dump complete
--

