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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(32) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(32) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 2018, 'Final', 125, 126, 4, 2);
INSERT INTO public.games VALUES (2, 2018, 'Third Place', 127, 128, 2, 0);
INSERT INTO public.games VALUES (3, 2018, 'Semi-Final', 126, 128, 2, 1);
INSERT INTO public.games VALUES (4, 2018, 'Semi-Final', 125, 127, 1, 0);
INSERT INTO public.games VALUES (5, 2018, 'Quarter-Final', 126, 129, 3, 2);
INSERT INTO public.games VALUES (6, 2018, 'Quarter-Final', 128, 130, 2, 0);
INSERT INTO public.games VALUES (7, 2018, 'Quarter-Final', 127, 131, 2, 1);
INSERT INTO public.games VALUES (8, 2018, 'Quarter-Final', 125, 132, 2, 0);
INSERT INTO public.games VALUES (9, 2018, 'Eighth-Final', 128, 133, 2, 1);
INSERT INTO public.games VALUES (10, 2018, 'Eighth-Final', 130, 134, 1, 0);
INSERT INTO public.games VALUES (11, 2018, 'Eighth-Final', 127, 135, 3, 2);
INSERT INTO public.games VALUES (12, 2018, 'Eighth-Final', 131, 136, 2, 0);
INSERT INTO public.games VALUES (13, 2018, 'Eighth-Final', 126, 137, 2, 1);
INSERT INTO public.games VALUES (14, 2018, 'Eighth-Final', 129, 138, 2, 1);
INSERT INTO public.games VALUES (15, 2018, 'Eighth-Final', 132, 139, 2, 1);
INSERT INTO public.games VALUES (16, 2018, 'Eighth-Final', 125, 140, 4, 3);
INSERT INTO public.games VALUES (17, 2014, 'Final', 141, 140, 1, 0);
INSERT INTO public.games VALUES (18, 2014, 'Third Place', 142, 131, 3, 0);
INSERT INTO public.games VALUES (19, 2014, 'Semi-Final', 140, 142, 1, 0);
INSERT INTO public.games VALUES (20, 2014, 'Semi-Final', 141, 131, 7, 1);
INSERT INTO public.games VALUES (21, 2014, 'Quarter-Final', 142, 143, 1, 0);
INSERT INTO public.games VALUES (22, 2014, 'Quarter-Final', 140, 127, 1, 0);
INSERT INTO public.games VALUES (23, 2014, 'Quarter-Final', 131, 133, 2, 1);
INSERT INTO public.games VALUES (24, 2014, 'Quarter-Final', 141, 125, 1, 0);
INSERT INTO public.games VALUES (25, 2014, 'Eighth-Final', 131, 144, 2, 1);
INSERT INTO public.games VALUES (26, 2014, 'Eighth-Final', 133, 132, 2, 0);
INSERT INTO public.games VALUES (27, 2014, 'Eighth-Final', 125, 145, 2, 0);
INSERT INTO public.games VALUES (28, 2014, 'Eighth-Final', 141, 146, 2, 1);
INSERT INTO public.games VALUES (29, 2014, 'Eighth-Final', 142, 136, 2, 1);
INSERT INTO public.games VALUES (30, 2014, 'Eighth-Final', 143, 147, 2, 1);
INSERT INTO public.games VALUES (31, 2014, 'Eighth-Final', 140, 134, 1, 0);
INSERT INTO public.games VALUES (32, 2014, 'Eighth-Final', 127, 148, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (125, 'France');
INSERT INTO public.teams VALUES (126, 'Croatia');
INSERT INTO public.teams VALUES (127, 'Belgium');
INSERT INTO public.teams VALUES (128, 'England');
INSERT INTO public.teams VALUES (129, 'Russia');
INSERT INTO public.teams VALUES (130, 'Sweden');
INSERT INTO public.teams VALUES (131, 'Brazil');
INSERT INTO public.teams VALUES (132, 'Uruguay');
INSERT INTO public.teams VALUES (133, 'Colombia');
INSERT INTO public.teams VALUES (134, 'Switzerland');
INSERT INTO public.teams VALUES (135, 'Japan');
INSERT INTO public.teams VALUES (136, 'Mexico');
INSERT INTO public.teams VALUES (137, 'Denmark');
INSERT INTO public.teams VALUES (138, 'Spain');
INSERT INTO public.teams VALUES (139, 'Portugal');
INSERT INTO public.teams VALUES (140, 'Argentina');
INSERT INTO public.teams VALUES (141, 'Germany');
INSERT INTO public.teams VALUES (142, 'Netherlands');
INSERT INTO public.teams VALUES (143, 'Costa Rica');
INSERT INTO public.teams VALUES (144, 'Chile');
INSERT INTO public.teams VALUES (145, 'Nigeria');
INSERT INTO public.teams VALUES (146, 'Algeria');
INSERT INTO public.teams VALUES (147, 'Greece');
INSERT INTO public.teams VALUES (148, 'United States');


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 32, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 148, true);


--
-- Name: games game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games game_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games game_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT game_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

