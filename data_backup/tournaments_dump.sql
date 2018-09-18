--
-- PostgreSQL database dump
--

-- Dumped from database version 10.4 (Debian 10.4-2.pgdg90+1)
-- Dumped by pg_dump version 10.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: tournaments_goal; Type: TABLE; Schema: public; Owner: mundial
--

CREATE TABLE public.tournaments_goal (
    id integer NOT NULL,
    player character varying(100) NOT NULL,
    "time" integer NOT NULL,
    match_id integer NOT NULL,
    team_id integer NOT NULL,
    tournament_id integer NOT NULL
);


ALTER TABLE public.tournaments_goal OWNER TO mundial;

--
-- Name: tournaments_goal_id_seq; Type: SEQUENCE; Schema: public; Owner: mundial
--

CREATE SEQUENCE public.tournaments_goal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tournaments_goal_id_seq OWNER TO mundial;

--
-- Name: tournaments_goal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mundial
--

ALTER SEQUENCE public.tournaments_goal_id_seq OWNED BY public.tournaments_goal.id;


--
-- Name: tournaments_match; Type: TABLE; Schema: public; Owner: mundial
--

CREATE TABLE public.tournaments_match (
    id integer NOT NULL,
    date date NOT NULL,
    stadium character varying(100) NOT NULL,
    team1_id integer NOT NULL,
    team2_id integer NOT NULL,
    tournament_id integer NOT NULL
);


ALTER TABLE public.tournaments_match OWNER TO mundial;

--
-- Name: tournaments_match_id_seq; Type: SEQUENCE; Schema: public; Owner: mundial
--

CREATE SEQUENCE public.tournaments_match_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tournaments_match_id_seq OWNER TO mundial;

--
-- Name: tournaments_match_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mundial
--

ALTER SEQUENCE public.tournaments_match_id_seq OWNED BY public.tournaments_match.id;


--
-- Name: tournaments_team; Type: TABLE; Schema: public; Owner: mundial
--

CREATE TABLE public.tournaments_team (
    id integer NOT NULL,
    country character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    coach character varying(50) NOT NULL,
    year character varying(4) NOT NULL
);


ALTER TABLE public.tournaments_team OWNER TO mundial;

--
-- Name: tournaments_team_id_seq; Type: SEQUENCE; Schema: public; Owner: mundial
--

CREATE SEQUENCE public.tournaments_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tournaments_team_id_seq OWNER TO mundial;

--
-- Name: tournaments_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mundial
--

ALTER SEQUENCE public.tournaments_team_id_seq OWNED BY public.tournaments_team.id;


--
-- Name: tournaments_tournament; Type: TABLE; Schema: public; Owner: mundial
--

CREATE TABLE public.tournaments_tournament (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    host_countries character varying(50) NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    teams_number integer NOT NULL,
    champion character varying(50) NOT NULL,
    description character varying(50) NOT NULL
);


ALTER TABLE public.tournaments_tournament OWNER TO mundial;

--
-- Name: tournaments_tournament_id_seq; Type: SEQUENCE; Schema: public; Owner: mundial
--

CREATE SEQUENCE public.tournaments_tournament_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tournaments_tournament_id_seq OWNER TO mundial;

--
-- Name: tournaments_tournament_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: mundial
--

ALTER SEQUENCE public.tournaments_tournament_id_seq OWNED BY public.tournaments_tournament.id;


--
-- Name: tournaments_goal id; Type: DEFAULT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_goal ALTER COLUMN id SET DEFAULT nextval('public.tournaments_goal_id_seq'::regclass);


--
-- Name: tournaments_match id; Type: DEFAULT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_match ALTER COLUMN id SET DEFAULT nextval('public.tournaments_match_id_seq'::regclass);


--
-- Name: tournaments_team id; Type: DEFAULT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_team ALTER COLUMN id SET DEFAULT nextval('public.tournaments_team_id_seq'::regclass);


--
-- Name: tournaments_tournament id; Type: DEFAULT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_tournament ALTER COLUMN id SET DEFAULT nextval('public.tournaments_tournament_id_seq'::regclass);


--
-- Data for Name: tournaments_goal; Type: TABLE DATA; Schema: public; Owner: mundial
--

COPY public.tournaments_goal (id, player, "time", match_id, team_id, tournament_id) FROM stdin;
1	Robert Lewandowski	17	1	1	1
2	Dimitris Salpingidis	51	1	4	1
3	Alan Dzagoev	15	2	2	1
4	Alan Dzagoev	79	2	2	1
5	Roman Shirokov	24	2	2	1
6	Roman Pavlyuchenko	82	2	2	1
7	Václav Pilar	52	2	3	1
8	Theofanis Gekas	53	3	4	1
9	Petr Jirácek	3	3	3	1
10	Václav Pilar	6	3	3	1
11	Jakub Blaszczykowski	57	4	1	1
12	Alan Dzagoev	37	4	2	1
13	Petr Jirácek	72	5	3	1
14	Giorgos Karagounis	45	6	4	1
15	Michael Krohn-Dehli	24	7	6	1
16	Mario Gómez	72	8	7	1
17	Nicklas Bendtner	41	9	6	1
18	Nicklas Bendtner	80	9	6	1
19	Pepe (footballer born 1983)	24	9	8	1
20	Hélder Postiga	36	9	8	1
21	Silvestre Varela	87	9	8	1
22	Robin van Persie	73	10	5	1
23	Mario Gómez	24	10	7	1
24	Mario Gómez	38	10	7	1
25	Cristiano Ronaldo	28	11	8	1
26	Cristiano Ronaldo	74	11	8	1
27	Rafael van der Vaart	11	11	5	1
28	Michael Krohn-Dehli	24	12	6	1
29	Lukas Podolski	19	12	7	1
30	Lars Bender	80	12	7	1
31	Cesc Fàbregas	64	13	9	1
32	Antonio Di Natale	61	13	10	1
33	Sean St Ledger	19	14	11	1
34	Mario Mandžukic	3	14	12	1
35	Mario Mandžukic	49	14	12	1
36	Nikica Jelavic	43	14	12	1
37	Andrea Pirlo	39	15	10	1
38	Mario Mandžukic	72	15	12	1
39	Fernando Torres	4	16	9	1
40	Fernando Torres	70	16	9	1
41	David Silva	49	16	9	1
42	Cesc Fàbregas	83	16	9	1
43	Jesús Navas	88	17	9	1
44	Antonio Cassano	35	18	10	1
45	Mario Balotelli	90	18	10	1
46	Samir Nasri	39	19	16	1
47	Joleon Lescott	30	19	15	1
48	Andriy Shevchenko	55	20	13	1
49	Andriy Shevchenko	62	20	13	1
50	Zlatan Ibrahimovic	52	20	14	1
51	Jérémy Ménez	53	21	16	1
52	Yohan Cabaye	56	21	16	1
53	Glen Johnson (English footballer)	49	22	14	1
54	Olof Mellberg	59	22	14	1
55	Andy Carroll	23	22	15	1
56	Theo Walcott	64	22	15	1
57	Danny Welbeck	78	22	15	1
58	Wayne Rooney	48	23	15	1
59	Zlatan Ibrahimovic	54	24	14	1
60	Sebastian Larsson	90	24	14	1
61	Cristiano Ronaldo	79	25	8	1
62	Philipp Lahm	39	26	7	1
63	Sami Khedira	61	26	7	1
64	Miroslav Klose	68	26	7	1
65	Marco Reus	74	26	7	1
66	Georgios Samaras	55	26	4	1
67	Dimitris Salpingidis	89	26	4	1
68	Xabi Alonso	19	27	9	1
69	Xabi Alonso	90	27	9	1
70	Mesut Özil	90	30	7	1
71	Mario Balotelli	20	30	10	1
72	Mario Balotelli	36	30	10	1
73	David Silva	14	31	9	1
74	Jordi Alba	41	31	9	1
75	Fernando Torres	84	31	9	1
76	Juan Mata	88	31	9	1
\.


--
-- Data for Name: tournaments_match; Type: TABLE DATA; Schema: public; Owner: mundial
--

COPY public.tournaments_match (id, date, stadium, team1_id, team2_id, tournament_id) FROM stdin;
1	2012-06-08	National Stadium (Warsaw)	1	4	1
2	2012-06-08	Stadion Miejski (Wroclaw)	2	3	1
3	2012-06-12	Stadion Miejski (Wroclaw)	4	3	1
4	2012-06-12	National Stadium (Warsaw)	1	2	1
5	2012-06-16	Stadion Miejski (Wroclaw)	3	1	1
6	2012-06-16	National Stadium (Warsaw)	4	2	1
7	2012-06-09	Metalist Stadium	5	6	1
8	2012-06-09	Arena Lviv	7	8	1
9	2012-06-13	Arena Lviv	6	8	1
10	2012-06-13	Metalist Stadium	5	7	1
11	2012-06-17	Metalist Stadium	8	5	1
12	2012-06-17	Arena Lviv	6	7	1
13	2012-06-10	PGE Arena Gdansk	9	10	1
14	2012-06-10	Stadion Miejski (Poznan)	11	12	1
15	2012-06-14	Stadion Miejski (Poznan)	10	12	1
16	2012-06-14	PGE Arena Gdansk	9	11	1
17	2012-06-18	PGE Arena Gdansk	12	9	1
18	2012-06-18	Stadion Miejski (Poznan)	10	11	1
19	2012-06-11	Donbass Arena	16	15	1
20	2012-06-11	Olimpiyskiy National Sports Complex	13	14	1
21	2012-06-15	Donbass Arena	13	16	1
22	2012-06-15	Olimpiyskiy National Sports Complex	14	15	1
23	2012-06-19	Donbass Arena	15	13	1
24	2012-06-19	Olimpiyskiy National Sports Complex	14	16	1
25	2012-06-21	National Stadium (Warsaw)	3	8	1
26	2012-06-22	PGE Arena Gdansk	7	4	1
27	2012-06-23	Donbass Arena	9	16	1
28	2012-06-24	Olimpiyskiy National Sports Complex	15	10	1
29	2012-06-27	Donbass Arena	8	9	1
30	2012-06-28	National Stadium (Warsaw)	7	10	1
31	2012-07-01	Olimpiyskiy National Sports Complex	9	10	1
\.


--
-- Data for Name: tournaments_team; Type: TABLE DATA; Schema: public; Owner: mundial
--

COPY public.tournaments_team (id, country, name, coach, year) FROM stdin;
1	POL	Poland	Franciszek Smuda	2012
2	RUS	Russia	Dick Advocaat	2012
3	CZE	Czech Republic	Michal Bílek	2012
4	GRE	Greece	Fernando Santos	2012
5	NED	Netherlands	Bert van Marwijk	2012
6	DEN	Denmark	Morten Olsen	2012
7	GER	Germany	Joachim Löw	2012
8	POR	Portugal	Paulo Bento	2012
9	ESP	Spain	Vicente del Bosque	2012
10	ITA	Italy	Cesare Prandelli	2012
11	IRL	Republic of Ireland	Giovanni Trapattoni	2012
12	CRO	Croatia	Slaven Bilic	2012
13	UKR	Ukraine	Oleh Blokhin	2012
14	SWE	Sweden	Erik Hamrén	2012
15	ENG	England	Roy Hodgson	2012
16	FRA	France	Laurent Blanc	2012
\.


--
-- Data for Name: tournaments_tournament; Type: TABLE DATA; Schema: public; Owner: mundial
--

COPY public.tournaments_tournament (id, name, host_countries, start_date, end_date, teams_number, champion, description) FROM stdin;
1	euro2012	Poland, Ukraine	2012-06-08	2012-07-01	16	Spain national football team	UEFA Euro2012
2	euro2016	France	2016-06-10	2016-07-10	24	Portugal national football team	UEFA Euro2016
\.


--
-- Name: tournaments_goal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mundial
--

SELECT pg_catalog.setval('public.tournaments_goal_id_seq', 76, true);


--
-- Name: tournaments_match_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mundial
--

SELECT pg_catalog.setval('public.tournaments_match_id_seq', 31, true);


--
-- Name: tournaments_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mundial
--

SELECT pg_catalog.setval('public.tournaments_team_id_seq', 16, true);


--
-- Name: tournaments_tournament_id_seq; Type: SEQUENCE SET; Schema: public; Owner: mundial
--

SELECT pg_catalog.setval('public.tournaments_tournament_id_seq', 1, false);


--
-- Name: tournaments_goal tournaments_goal_pkey; Type: CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_goal
    ADD CONSTRAINT tournaments_goal_pkey PRIMARY KEY (id);


--
-- Name: tournaments_match tournaments_match_pkey; Type: CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_match
    ADD CONSTRAINT tournaments_match_pkey PRIMARY KEY (id);


--
-- Name: tournaments_team tournaments_team_pkey; Type: CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_team
    ADD CONSTRAINT tournaments_team_pkey PRIMARY KEY (id);


--
-- Name: tournaments_tournament tournaments_tournament_pkey; Type: CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_tournament
    ADD CONSTRAINT tournaments_tournament_pkey PRIMARY KEY (id);


--
-- Name: tournaments_goal_match_id_c3cd8362; Type: INDEX; Schema: public; Owner: mundial
--

CREATE INDEX tournaments_goal_match_id_c3cd8362 ON public.tournaments_goal USING btree (match_id);


--
-- Name: tournaments_goal_team_id_07311200; Type: INDEX; Schema: public; Owner: mundial
--

CREATE INDEX tournaments_goal_team_id_07311200 ON public.tournaments_goal USING btree (team_id);


--
-- Name: tournaments_goal_tournament_id_81c9c118; Type: INDEX; Schema: public; Owner: mundial
--

CREATE INDEX tournaments_goal_tournament_id_81c9c118 ON public.tournaments_goal USING btree (tournament_id);


--
-- Name: tournaments_match_team1_id_4e22b4a1; Type: INDEX; Schema: public; Owner: mundial
--

CREATE INDEX tournaments_match_team1_id_4e22b4a1 ON public.tournaments_match USING btree (team1_id);


--
-- Name: tournaments_match_team2_id_0fee8af1; Type: INDEX; Schema: public; Owner: mundial
--

CREATE INDEX tournaments_match_team2_id_0fee8af1 ON public.tournaments_match USING btree (team2_id);


--
-- Name: tournaments_match_tournament_id_443e00bf; Type: INDEX; Schema: public; Owner: mundial
--

CREATE INDEX tournaments_match_tournament_id_443e00bf ON public.tournaments_match USING btree (tournament_id);


--
-- Name: tournaments_goal tournaments_goal_match_id_c3cd8362_fk_tournaments_match_id; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_goal
    ADD CONSTRAINT tournaments_goal_match_id_c3cd8362_fk_tournaments_match_id FOREIGN KEY (match_id) REFERENCES public.tournaments_match(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tournaments_goal tournaments_goal_team_id_07311200_fk_tournaments_team_id; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_goal
    ADD CONSTRAINT tournaments_goal_team_id_07311200_fk_tournaments_team_id FOREIGN KEY (team_id) REFERENCES public.tournaments_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tournaments_goal tournaments_goal_tournament_id_81c9c118_fk_tournamen; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_goal
    ADD CONSTRAINT tournaments_goal_tournament_id_81c9c118_fk_tournamen FOREIGN KEY (tournament_id) REFERENCES public.tournaments_tournament(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tournaments_match tournaments_match_team1_id_4e22b4a1_fk_tournaments_team_id; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_match
    ADD CONSTRAINT tournaments_match_team1_id_4e22b4a1_fk_tournaments_team_id FOREIGN KEY (team1_id) REFERENCES public.tournaments_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tournaments_match tournaments_match_team2_id_0fee8af1_fk_tournaments_team_id; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_match
    ADD CONSTRAINT tournaments_match_team2_id_0fee8af1_fk_tournaments_team_id FOREIGN KEY (team2_id) REFERENCES public.tournaments_team(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tournaments_match tournaments_match_tournament_id_443e00bf_fk_tournamen; Type: FK CONSTRAINT; Schema: public; Owner: mundial
--

ALTER TABLE ONLY public.tournaments_match
    ADD CONSTRAINT tournaments_match_tournament_id_443e00bf_fk_tournamen FOREIGN KEY (tournament_id) REFERENCES public.tournaments_tournament(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

