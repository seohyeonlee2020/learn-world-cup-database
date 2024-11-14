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
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
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

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 4, 2, 104, 105, 2018, 'Final');
INSERT INTO public.games VALUES (2, 2, 0, 106, 107, 2018, 'Third Place');
INSERT INTO public.games VALUES (3, 2, 1, 105, 107, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (4, 1, 0, 104, 106, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (5, 3, 2, 105, 108, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (6, 2, 0, 107, 109, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (7, 2, 1, 106, 110, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (8, 2, 0, 104, 111, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (9, 2, 1, 107, 112, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (10, 1, 0, 109, 113, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (11, 3, 2, 106, 114, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (12, 2, 0, 110, 115, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (13, 2, 1, 105, 116, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (14, 2, 1, 108, 117, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (15, 2, 1, 111, 118, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (16, 4, 3, 104, 119, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (17, 1, 0, 120, 119, 2014, 'Final');
INSERT INTO public.games VALUES (18, 3, 0, 121, 110, 2014, 'Third Place');
INSERT INTO public.games VALUES (19, 1, 0, 119, 121, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (20, 7, 1, 120, 110, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (21, 1, 0, 121, 122, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (22, 1, 0, 119, 106, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (23, 2, 1, 110, 112, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (24, 1, 0, 120, 104, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (25, 2, 1, 110, 123, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (26, 2, 0, 112, 111, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (27, 2, 0, 104, 124, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (28, 2, 1, 120, 125, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (29, 2, 1, 121, 115, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (30, 2, 1, 122, 126, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (31, 1, 0, 119, 113, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (32, 2, 1, 106, 127, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (104, 'France');
INSERT INTO public.teams VALUES (105, 'Croatia');
INSERT INTO public.teams VALUES (106, 'Belgium');
INSERT INTO public.teams VALUES (107, 'England');
INSERT INTO public.teams VALUES (108, 'Russia');
INSERT INTO public.teams VALUES (109, 'Sweden');
INSERT INTO public.teams VALUES (110, 'Brazil');
INSERT INTO public.teams VALUES (111, 'Uruguay');
INSERT INTO public.teams VALUES (112, 'Colombia');
INSERT INTO public.teams VALUES (113, 'Switzerland');
INSERT INTO public.teams VALUES (114, 'Japan');
INSERT INTO public.teams VALUES (115, 'Mexico');
INSERT INTO public.teams VALUES (116, 'Denmark');
INSERT INTO public.teams VALUES (117, 'Spain');
INSERT INTO public.teams VALUES (118, 'Portugal');
INSERT INTO public.teams VALUES (119, 'Argentina');
INSERT INTO public.teams VALUES (120, 'Germany');
INSERT INTO public.teams VALUES (121, 'Netherlands');
INSERT INTO public.teams VALUES (122, 'Costa Rica');
INSERT INTO public.teams VALUES (123, 'Chile');
INSERT INTO public.teams VALUES (124, 'Nigeria');
INSERT INTO public.teams VALUES (125, 'Algeria');
INSERT INTO public.teams VALUES (126, 'Greece');
INSERT INTO public.teams VALUES (127, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 32, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 127, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

