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
