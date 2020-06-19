--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.0

-- Started on 2020-06-19 22:05:33

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
-- TOC entry 203 (class 1259 OID 16569)
-- Name: certificate; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.certificate (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(50) NOT NULL,
    large_url character varying(255) NOT NULL,
    small_url character varying(255) NOT NULL
);


ALTER TABLE public.certificate OWNER TO resume;

--
-- TOC entry 212 (class 1259 OID 16631)
-- Name: certificate_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.certificate_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.certificate_seq OWNER TO resume;

--
-- TOC entry 204 (class 1259 OID 16577)
-- Name: course; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.course (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(60) NOT NULL,
    school character varying(60) NOT NULL,
    finish_date date
);


ALTER TABLE public.course OWNER TO resume;

--
-- TOC entry 213 (class 1259 OID 16633)
-- Name: course_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.course_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.course_seq OWNER TO resume;

--
-- TOC entry 205 (class 1259 OID 16582)
-- Name: education; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.education (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    summary character varying(100) NOT NULL,
    begin_year integer NOT NULL,
    finish_year integer,
    university text NOT NULL,
    faculity character varying(256) NOT NULL
);


ALTER TABLE public.education OWNER TO resume;

--
-- TOC entry 214 (class 1259 OID 16635)
-- Name: education_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.education_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.education_seq OWNER TO resume;

--
-- TOC entry 206 (class 1259 OID 16590)
-- Name: hobby; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.hobby (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.hobby OWNER TO resume;

--
-- TOC entry 215 (class 1259 OID 16637)
-- Name: hobby_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.hobby_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hobby_seq OWNER TO resume;

--
-- TOC entry 207 (class 1259 OID 16595)
-- Name: language; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.language (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    name character varying(30) NOT NULL,
    level character varying(18) NOT NULL,
    type character varying(7) DEFAULT 0 NOT NULL
);


ALTER TABLE public.language OWNER TO resume;

--
-- TOC entry 216 (class 1259 OID 16639)
-- Name: language_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.language_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.language_seq OWNER TO resume;

--
-- TOC entry 220 (class 1259 OID 24921)
-- Name: persistent_logins; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.persistent_logins (
    username character varying(64) NOT NULL,
    series character varying(64) NOT NULL,
    token character varying(64) NOT NULL,
    last_used timestamp(0) without time zone NOT NULL
);


ALTER TABLE public.persistent_logins OWNER TO resume;

--
-- TOC entry 208 (class 1259 OID 16601)
-- Name: practic; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.practic (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    "position" character varying(100) NOT NULL,
    company character varying(100) NOT NULL,
    begin_date date NOT NULL,
    finish_date date,
    responsibilities text NOT NULL,
    demo character varying(256),
    src character varying(256)
);


ALTER TABLE public.practic OWNER TO resume;

--
-- TOC entry 217 (class 1259 OID 16641)
-- Name: practic_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.practic_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.practic_seq OWNER TO resume;

--
-- TOC entry 202 (class 1259 OID 16541)
-- Name: profile; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.profile (
    id bigint NOT NULL,
    uid character varying(100) NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    birth_day date,
    phone character varying(20) DEFAULT NULL::character varying,
    email character varying(100) DEFAULT NULL::character varying,
    country character varying(60) DEFAULT NULL::character varying,
    city character varying(100) DEFAULT NULL::character varying,
    objective text,
    summary text,
    large_photo character varying(255) DEFAULT NULL::character varying,
    small_photo character varying(255) DEFAULT NULL::character varying,
    info text,
    password character varying(255) NOT NULL,
    completed boolean DEFAULT false NOT NULL,
    created timestamp(0) without time zone DEFAULT now() NOT NULL,
    skype character varying(255) DEFAULT NULL::character varying,
    vkontakte character varying(255) DEFAULT NULL::character varying,
    facebook character varying(255) DEFAULT NULL::character varying,
    linkedin character varying(255) DEFAULT NULL::character varying,
    github character varying(255) DEFAULT NULL::character varying,
    stackoverflow character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE public.profile OWNER TO resume;

--
-- TOC entry 210 (class 1259 OID 16617)
-- Name: profile_restore; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.profile_restore (
    id bigint NOT NULL,
    token character varying(256) NOT NULL
);


ALTER TABLE public.profile_restore OWNER TO resume;

--
-- TOC entry 218 (class 1259 OID 16643)
-- Name: profile_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.profile_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_seq OWNER TO resume;

--
-- TOC entry 209 (class 1259 OID 16609)
-- Name: skill; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.skill (
    id bigint NOT NULL,
    id_profile bigint NOT NULL,
    category character varying(50) NOT NULL,
    value text NOT NULL,
    id_category bigint
);


ALTER TABLE public.skill OWNER TO resume;

--
-- TOC entry 211 (class 1259 OID 16624)
-- Name: skill_category; Type: TABLE; Schema: public; Owner: resume
--

CREATE TABLE public.skill_category (
    id bigint NOT NULL,
    category character varying(50) NOT NULL
);


ALTER TABLE public.skill_category OWNER TO resume;

--
-- TOC entry 219 (class 1259 OID 16645)
-- Name: skill_seq; Type: SEQUENCE; Schema: public; Owner: resume
--

CREATE SEQUENCE public.skill_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.skill_seq OWNER TO resume;

--
-- TOC entry 2929 (class 0 OID 16569)
-- Dependencies: 203
-- Data for Name: certificate; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.certificate (id, id_profile, name, large_url, small_url) FROM stdin;
1	1	Mongo certificate.jpg	/media/certificates/a266486e-838b-4230-9ebb-03553a13580c.jpg	/media/certificates/a266486e-838b-4230-9ebb-03553a13580c-sm.jpg
2	3	Mongo certificate.jpg	/media/certificates/fe44e957-a8c8-45db-86db-fcf43688f4d9.jpg	/media/certificates/fe44e957-a8c8-45db-86db-fcf43688f4d9-sm.jpg
3	4	Jee certificate.jpg	/media/certificates/9bbadbc5-4295-4232-9b65-933a2f3f36f6.jpg	/media/certificates/9bbadbc5-4295-4232-9b65-933a2f3f36f6-sm.jpg
4	5	Mongo certificate.jpg	/media/certificates/11a551b2-ff71-4d07-886d-8889f883a428.jpg	/media/certificates/11a551b2-ff71-4d07-886d-8889f883a428-sm.jpg
5	7	Jee certificate.jpg	/media/certificates/f447e1dd-9a68-4ec1-87fe-a0870cca6520.jpg	/media/certificates/f447e1dd-9a68-4ec1-87fe-a0870cca6520-sm.jpg
6	8	Jee certificate.jpg	/media/certificates/5af965b0-9acb-4190-ae44-f2830c752cbc.jpg	/media/certificates/5af965b0-9acb-4190-ae44-f2830c752cbc-sm.jpg
7	9	Mongo certificate.jpg	/media/certificates/a15b1001-d11d-4f08-a2ca-0b1123ba088d.jpg	/media/certificates/a15b1001-d11d-4f08-a2ca-0b1123ba088d-sm.jpg
8	10	Mongo certificate.jpg	/media/certificates/1a40ca94-4d81-41b8-af98-97e0a49070fa.jpg	/media/certificates/1a40ca94-4d81-41b8-af98-97e0a49070fa-sm.jpg
9	13	Jee certificate.jpg	/media/certificates/83640adf-62c1-43c6-aac0-1a66d036468a.jpg	/media/certificates/83640adf-62c1-43c6-aac0-1a66d036468a-sm.jpg
10	14	Mongo certificate.jpg	/media/certificates/1fc0f2cc-b7de-40fa-a266-6d8fb9917fd9.jpg	/media/certificates/1fc0f2cc-b7de-40fa-a266-6d8fb9917fd9-sm.jpg
11	15	Mongo certificate.jpg	/media/certificates/5b714b1d-14aa-453b-8321-d634eabd6bcb.jpg	/media/certificates/5b714b1d-14aa-453b-8321-d634eabd6bcb-sm.jpg
12	15	Jee certificate.jpg	/media/certificates/152dd5a4-cd5f-4115-b236-88687787be1e.jpg	/media/certificates/152dd5a4-cd5f-4115-b236-88687787be1e-sm.jpg
13	17	Mongo certificate.jpg	/media/certificates/20822f1a-199b-4035-aa29-ccb175920757.jpg	/media/certificates/20822f1a-199b-4035-aa29-ccb175920757-sm.jpg
14	18	Jee certificate.jpg	/media/certificates/f4fbdec0-2e4f-47eb-8da3-2884634b3fd2.jpg	/media/certificates/f4fbdec0-2e4f-47eb-8da3-2884634b3fd2-sm.jpg
15	20	Jee certificate.jpg	/media/certificates/997b4373-ccd9-4634-8743-479b64d0870a.jpg	/media/certificates/997b4373-ccd9-4634-8743-479b64d0870a-sm.jpg
16	21	Mongo certificate.jpg	/media/certificates/1cb9f3b0-248c-4e10-ad47-a877208c8412.jpg	/media/certificates/1cb9f3b0-248c-4e10-ad47-a877208c8412-sm.jpg
17	22	Mongo certificate.jpg	/media/certificates/00a8510f-0911-43b7-a962-0e86b924d885.jpg	/media/certificates/00a8510f-0911-43b7-a962-0e86b924d885-sm.jpg
18	22	Jee certificate.jpg	/media/certificates/a1f889e6-642f-47a4-a453-4a11acc53614.jpg	/media/certificates/a1f889e6-642f-47a4-a453-4a11acc53614-sm.jpg
19	23	Jee certificate.jpg	/media/certificates/07ba61e3-7aba-4bfc-88bb-d28fcd63b4fa.jpg	/media/certificates/07ba61e3-7aba-4bfc-88bb-d28fcd63b4fa-sm.jpg
20	23	Mongo certificate.jpg	/media/certificates/fdf353fc-b7cd-47b7-87b1-342dd87bac2b.jpg	/media/certificates/fdf353fc-b7cd-47b7-87b1-342dd87bac2b-sm.jpg
\.


--
-- TOC entry 2930 (class 0 OID 16577)
-- Dependencies: 204
-- Data for Name: course; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.course (id, id_profile, name, school, finish_date) FROM stdin;
1	1	Java Advanced Course	SourceIt	2012-06-30
2	3	Java Advanced Course	SourceIt	2014-06-30
3	4	Java Advanced Course	SourceIt	2014-06-30
4	5	Java Advanced Course	SourceIt	2019-06-30
5	10	Java Advanced Course	SourceIt	\N
6	12	Java Advanced Course	SourceIt	\N
7	14	Java Advanced Course	SourceIt	2018-06-30
8	19	Java Advanced Course	SourceIt	2018-06-30
9	21	Java Advanced Course	SourceIt	2013-06-30
10	22	Java Advanced Course	SourceIt	2015-06-30
\.


--
-- TOC entry 2931 (class 0 OID 16582)
-- Dependencies: 205
-- Data for Name: education; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.education (id, id_profile, summary, begin_year, finish_year, university, faculity) FROM stdin;
1	1	The specialist degree in Electronic Engineering	2007	2012	Kharkiv National Technical University, Ukraine	Computer Science
2	2	The specialist degree in Electronic Engineering	2013	2018	Kharkiv National Technical University, Ukraine	Computer Science
3	3	The specialist degree in Electronic Engineering	2008	2013	Kharkiv National Technical University, Ukraine	Computer Science
4	4	The specialist degree in Electronic Engineering	2008	2013	Kharkiv National Technical University, Ukraine	Computer Science
5	5	The specialist degree in Electronic Engineering	2015	\N	Kharkiv National Technical University, Ukraine	Computer Science
6	6	The specialist degree in Electronic Engineering	2014	2019	Kharkiv National Technical University, Ukraine	Computer Science
7	7	The specialist degree in Electronic Engineering	2016	\N	Kharkiv National Technical University, Ukraine	Computer Science
8	8	The specialist degree in Electronic Engineering	2013	2018	Kharkiv National Technical University, Ukraine	Computer Science
9	9	The specialist degree in Electronic Engineering	2010	2015	Kharkiv National Technical University, Ukraine	Computer Science
10	10	The specialist degree in Electronic Engineering	2016	\N	Kharkiv National Technical University, Ukraine	Computer Science
11	11	The specialist degree in Electronic Engineering	2009	2014	Kharkiv National Technical University, Ukraine	Computer Science
12	12	The specialist degree in Electronic Engineering	2016	\N	Kharkiv National Technical University, Ukraine	Computer Science
13	13	The specialist degree in Electronic Engineering	2013	2018	Kharkiv National Technical University, Ukraine	Computer Science
14	14	The specialist degree in Electronic Engineering	2013	2018	Kharkiv National Technical University, Ukraine	Computer Science
15	15	The specialist degree in Electronic Engineering	2009	2014	Kharkiv National Technical University, Ukraine	Computer Science
16	16	The specialist degree in Electronic Engineering	2012	2017	Kharkiv National Technical University, Ukraine	Computer Science
17	17	The specialist degree in Electronic Engineering	2009	2014	Kharkiv National Technical University, Ukraine	Computer Science
18	18	The specialist degree in Electronic Engineering	2009	2014	Kharkiv National Technical University, Ukraine	Computer Science
19	19	The specialist degree in Electronic Engineering	2013	2018	Kharkiv National Technical University, Ukraine	Computer Science
20	20	The specialist degree in Electronic Engineering	2009	2014	Kharkiv National Technical University, Ukraine	Computer Science
21	21	The specialist degree in Electronic Engineering	2009	2014	Kharkiv National Technical University, Ukraine	Computer Science
22	22	The specialist degree in Electronic Engineering	2010	2015	Kharkiv National Technical University, Ukraine	Computer Science
23	23	The specialist degree in Electronic Engineering	2007	2012	Kharkiv National Technical University, Ukraine	Computer Science
24	24	The specialist degree in Electronic Engineering	2013	2018	Kharkiv National Technical University, Ukraine	Computer Science
25	35	Developer	2014	2017	OmGTU	FITICS
\.


--
-- TOC entry 2932 (class 0 OID 16590)
-- Dependencies: 206
-- Data for Name: hobby; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.hobby (id, id_profile, name) FROM stdin;
126	17	Book reading
44	9	Badminton!
127	17	Codding
1	1	Authorship
2	1	Archery
3	1	Skiing
4	1	Football
5	1	Ice hockey
6	2	Skateboarding
7	2	Swimming
8	2	Traveling
9	2	Music
10	2	Games of chance
11	3	Volleyball
12	3	Darts
13	3	Swimming
14	3	Traveling
15	3	Games of chance
16	4	Billiards
17	4	Football
18	4	Diving
19	4	Disco
20	4	Movie
21	5	Pubs
22	5	Kayak slalom
23	5	Animals
24	5	Cricket
25	5	Badminton
26	6	Painting
27	6	Football
28	6	Archery
29	6	Shopping
30	6	Disco
31	7	Darts
32	7	Tennis
33	7	Skateboarding
34	7	Billiards
35	7	Ice hockey
36	8	Shooting
37	8	Authorship
38	8	Skiing
39	8	Cycling
40	8	Basketball
41	9	Diving
42	9	Movie
43	9	Tennis
45	9	Collecting
46	10	Music
47	10	Diving
48	10	Shopping
49	10	Archery
50	10	Tennis
51	11	Authorship
52	11	Volleyball
53	11	Shooting
54	11	Shopping
55	11	Music
56	12	Collecting
57	12	Photo
58	12	Roller skating
59	12	Archery
60	12	Skateboarding
61	13	Weightlifting
62	13	Foreign lang
63	13	Shooting
64	13	Billiards
65	13	Badminton
66	14	Codding
67	14	Cooking
68	14	Automobiles
69	14	Bowling
70	14	Fishing
71	15	Cycling
72	15	Handball
73	15	Badminton
74	15	Fishing
75	15	Football
76	16	Kayak slalom
77	16	Cricket
78	16	Diving
79	16	Bowling
80	16	Traveling
86	18	Diving
87	18	Collecting
88	18	Basketball
89	18	Painting
90	18	Automobiles
91	19	Authorship
92	19	Table tennis
93	19	Disco
94	19	Book reading
95	19	Cooking
96	20	Table tennis
97	20	Kayak slalom
98	20	Cycling
99	20	Animals
100	20	Ice hockey
101	21	Collecting
102	21	Ice hockey
103	21	Music
104	21	Authorship
105	21	Table tennis
106	22	Disco
107	22	Shopping
108	22	Rowing
109	22	Archery
110	22	Roller skating
111	23	Handball
112	23	Singing
113	23	Traveling
114	23	Games of chance
115	23	Table tennis
116	24	Painting
117	24	Archery
118	24	Billiards
119	24	Boxing
120	24	Football
128	17	Painting
129	17	Singing
130	17	Weightlifting
131	35	Automobiles
132	35	Codding
133	35	Football
134	35	Games of chance
135	35	Movie
\.


--
-- TOC entry 2933 (class 0 OID 16595)
-- Dependencies: 207
-- Data for Name: language; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.language (id, id_profile, name, level, type) FROM stdin;
1	1	English	proficiency	writing
2	1	English	proficiency	spoken
3	2	English	beginner	writing
4	2	English	beginner	spoken
5	2	French	elementary	all
6	3	English	advanced	spoken
7	3	English	advanced	writing
8	3	German	intermediate	spoken
9	3	German	intermediate	writing
10	4	English	advanced	all
11	5	English	proficiency	writing
12	5	English	proficiency	spoken
13	5	French	upper_intermediate	all
14	6	English	pre_intermediate	writing
15	6	English	pre_intermediate	spoken
16	6	German	proficiency	all
17	7	English	intermediate	writing
18	7	English	intermediate	spoken
19	7	Italian	beginner	writing
20	7	Italian	beginner	spoken
21	8	English	elementary	writing
22	8	English	elementary	spoken
23	9	English	elementary	all
24	9	German	advanced	spoken
25	9	German	advanced	writing
26	10	English	elementary	all
27	10	German	pre_intermediate	spoken
28	10	German	pre_intermediate	writing
29	11	English	pre_intermediate	all
30	11	German	proficiency	spoken
31	11	German	proficiency	writing
32	12	English	intermediate	all
33	12	Spanish	proficiency	spoken
34	12	Spanish	proficiency	writing
35	13	English	proficiency	all
36	14	English	proficiency	spoken
37	14	English	proficiency	writing
38	15	English	advanced	all
39	16	English	pre_intermediate	all
40	16	Italian	intermediate	writing
41	16	Italian	intermediate	spoken
43	18	English	advanced	spoken
44	18	English	advanced	writing
45	18	German	beginner	writing
46	18	German	beginner	spoken
47	19	English	beginner	all
48	20	English	intermediate	spoken
49	20	English	intermediate	writing
50	20	French	elementary	all
51	21	English	intermediate	all
52	21	Italian	upper_intermediate	spoken
53	21	Italian	upper_intermediate	writing
54	22	English	advanced	writing
55	22	English	advanced	spoken
56	23	English	upper_intermediate	all
57	23	French	beginner	writing
58	23	French	beginner	spoken
59	24	English	upper_intermediate	writing
60	24	English	upper_intermediate	spoken
65	17	English	UPPER_INTERMEDIATE	SPOKEN
66	35	English	UPPER_INTERMEDIATE	SPOKEN
\.


--
-- TOC entry 2946 (class 0 OID 24921)
-- Dependencies: 220
-- Data for Name: persistent_logins; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.persistent_logins (username, series, token, last_used) FROM stdin;
den-dugin	K4E/+oLvHQup1HeSk0sdUQ==	u0Aj3CGJU0TGaUsmvkBByw==	2020-06-19 13:12:53
\.


--
-- TOC entry 2934 (class 0 OID 16601)
-- Dependencies: 208
-- Data for Name: practic; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.practic (id, id_profile, "position", company, begin_date, finish_date, responsibilities, demo, src) FROM stdin;
1	1	Java Advanced Course	DevStudy.net	2019-09-21	2019-10-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
2	1	Java Base Course	DevStudy.net	2019-06-21	2019-07-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
3	2	Java Core Course	DevStudy.net	2019-12-21	\N	Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC	\N	\N
4	3	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
5	3	Java Base Course	DevStudy.net	2019-12-21	\N	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
6	4	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
7	4	Java Base Course	DevStudy.net	2019-12-21	\N	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
8	5	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
9	6	Java Base Course	DevStudy.net	2019-10-21	2019-11-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
10	7	Java Advanced Course	DevStudy.net	2019-10-21	2019-11-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
11	7	Java Base Course	DevStudy.net	2019-07-21	2019-08-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
12	8	Java Advanced Course	DevStudy.net	2019-09-21	2019-10-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
13	8	Java Base Course	DevStudy.net	2019-07-21	2019-08-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
14	9	Java Advanced Course	DevStudy.net	2019-11-21	2019-12-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
15	9	Java Base Course	DevStudy.net	2019-10-21	2019-11-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
16	10	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
17	11	Java Base Course	DevStudy.net	2019-10-21	2019-11-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
18	12	Java Advanced Course	DevStudy.net	2019-09-21	2019-10-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
19	13	Java Advanced Course	DevStudy.net	2019-09-21	2019-10-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
20	14	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
21	15	Java Advanced Course	DevStudy.net	2019-10-21	2019-11-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
22	15	Java Base Course	DevStudy.net	2019-07-21	2019-08-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
23	15	Java Core Course	DevStudy.net	2019-05-21	2019-06-21	Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC	\N	\N
24	16	Java Base Course	DevStudy.net	2019-09-21	2019-10-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
27	18	Java Advanced Course	DevStudy.net	2019-11-21	2019-12-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
28	18	Java Base Course	DevStudy.net	2019-10-21	2019-11-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
29	19	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
30	20	Java Advanced Course	DevStudy.net	2019-11-21	2019-12-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
31	20	Java Base Course	DevStudy.net	2019-09-21	2019-10-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
32	21	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
33	21	Java Base Course	DevStudy.net	2019-12-21	\N	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
34	22	Java Advanced Course	DevStudy.net	2019-12-21	\N	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
35	22	Java Base Course	DevStudy.net	2019-12-21	\N	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
36	22	Java Core Course	DevStudy.net	2019-12-21	\N	Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC	\N	\N
37	23	Java Advanced Course	DevStudy.net	2019-09-21	2019-10-21	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
38	23	Java Base Course	DevStudy.net	2019-08-21	2019-09-21	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
39	23	Java Core Course	DevStudy.net	2019-05-21	2019-06-21	Developing the java console application which imports XML, JSON, Properties, CVS to Db via JDBC	\N	\N
40	24	Java Base Course	DevStudy.net	2019-12-21	\N	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
45	17	Java Advanced Course +++	Luxoft	2019-09-01	2019-10-01	Developing the web application 'online-resume' using bootstrap HTML template, downloaded from intenet. Populating database by test data and uploading web project to AWS EC2 instance	http://LINK_TO_DEMO_SITE	https://github.com/TODO
46	17	Java Base Course +++	OTP	2019-07-01	2020-06-01	Developing the web application 'blog' using free HTML template, downloaded from intenet. Populating database by test data and uploading web project to OpenShift free hosting	http://LINK_TO_DEMO_SITE	https://github.com/TODO
47	35	Java Developer	Luxoft	2019-01-01	\N	Developer	\N	\N
\.


--
-- TOC entry 2928 (class 0 OID 16541)
-- Dependencies: 202
-- Data for Name: profile; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.profile (id, uid, first_name, last_name, birth_day, phone, email, country, city, objective, summary, large_photo, small_photo, info, password, completed, created, skype, vkontakte, facebook, linkedin, github, stackoverflow) FROM stdin;
2	amy-fowler	Amy	Fowler	1997-10-02	+380502622813	amy-fowler@gmail.com	Ukraine	Kiyv	Junior java trainee position	Java core course with developing one simple console application	/media/avatar/815f0551-284c-4e3a-89c4-5a3b99fea8ee.jpg	/media/avatar/815f0551-284c-4e3a-89c4-5a3b99fea8ee-sm.jpg	Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:32	\N	\N	https://facebook.com/amy-fowler	\N	\N	\N
3	bernadette-rostenkowski	Bernadette	Rostenkowski	1992-06-11	+380505136765	bernadette-rostenkowski@gmail.com	Ukraine	Kharkiv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/6830fa39-4aa8-4348-b622-8cb755334987.jpg	/media/avatar/6830fa39-4aa8-4348-b622-8cb755334987-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:32	bernadette-rostenkowski	https://vk.com/bernadette-rostenkowski	\N	https://linkedin.com/bernadette-rostenkowski	\N	\N
4	bertram-gilfoyle	Bertram	Gilfoyle	1991-12-19	+380503311592	bertram-gilfoyle@gmail.com	Ukraine	Kharkiv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/b19ca126-ca43-401b-b9be-866fde0da29b.jpg	/media/avatar/b19ca126-ca43-401b-b9be-866fde0da29b-sm.jpg	Aenean massa.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:32	bertram-gilfoyle	\N	\N	\N	https://github.com/bertram-gilfoyle	https://stackoverflow.com/bertram-gilfoyle
5	carla-walton	Carla	Walton	1998-09-25	+380503523965	carla-walton@gmail.com	Ukraine	Odessa	Junior java developer position	One Java professional course with developing web application resume (Link to demo is provided)	/media/avatar/2e026167-2cd5-438e-b0fd-d8aabb97e34f.jpg	/media/avatar/2e026167-2cd5-438e-b0fd-d8aabb97e34f-sm.jpg	Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	carla-walton	\N	\N	https://linkedin.com/carla-walton	https://github.com/carla-walton	https://stackoverflow.com/carla-walton
6	dinesh-chugtai	Dinesh	Chugtai	1996-07-31	+380502113232	dinesh-chugtai@gmail.com	Ukraine	Odessa	Junior java trainee position	One Java professional course with developing web application blog (Link to demo is provided)	/media/avatar/d9c209f4-b9b5-499b-8db6-2519fb125921.jpg	/media/avatar/d9c209f4-b9b5-499b-8db6-2519fb125921-sm.jpg	Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	dinesh-chugtai	https://vk.com/dinesh-chugtai	https://facebook.com/dinesh-chugtai	https://linkedin.com/dinesh-chugtai	\N	https://stackoverflow.com/dinesh-chugtai
7	erlich-bachmann	Erlich	Bachmann	1999-12-13	+380509371979	erlich-bachmann@gmail.com	Ukraine	Kiyv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/8ecc3465-6b28-449b-94c2-6bc27d7a4fd3.jpg	/media/avatar/8ecc3465-6b28-449b-94c2-6bc27d7a4fd3-sm.jpg	Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	\N	https://vk.com/erlich-bachmann	\N	https://linkedin.com/erlich-bachmann	\N	https://stackoverflow.com/erlich-bachmann
8	harold-gunderson	Harold	Gunderson	1997-08-28	+380502351384	harold-gunderson@gmail.com	Ukraine	Kiyv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/436ede8b-5ab3-4e87-b1d9-7adf2b41fadc.jpg	/media/avatar/436ede8b-5ab3-4e87-b1d9-7adf2b41fadc-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	harold-gunderson	\N	https://facebook.com/harold-gunderson	\N	https://github.com/harold-gunderson	\N
10	jared-dunn	Jared	Dunn	1998-07-29	+380504572534	jared-dunn@gmail.com	Ukraine	Odessa	Junior java developer position	One Java professional course with developing web application resume (Link to demo is provided)	/media/avatar/154399c5-dbe3-4c0e-a2bc-381f07bd810c.jpg	/media/avatar/154399c5-dbe3-4c0e-a2bc-381f07bd810c-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	\N	https://vk.com/jared-dunn	https://facebook.com/jared-dunn	https://linkedin.com/jared-dunn	https://github.com/jared-dunn	https://stackoverflow.com/jared-dunn
11	jen-barber	Jen	Barber	1992-11-06	+380503282765	jen-barber@gmail.com	Ukraine	Kiyv	Junior java trainee position	One Java professional course with developing web application blog (Link to demo is provided)	/media/avatar/c6429d67-1d52-4e12-a290-732fccb1307c.jpg	/media/avatar/c6429d67-1d52-4e12-a290-732fccb1307c-sm.jpg	Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	jen-barber	https://vk.com/jen-barber	https://facebook.com/jen-barber	\N	\N	\N
12	katrina-bennett	Katrina	Bennett	1998-03-28	+380505136372	katrina-bennett@gmail.com	Ukraine	Odessa	Junior java developer position	One Java professional course with developing web application resume (Link to demo is provided)	/media/avatar/b563a32b-4bdd-46c0-9101-74672723a7a6.jpg	/media/avatar/b563a32b-4bdd-46c0-9101-74672723a7a6-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	\N	\N	https://facebook.com/katrina-bennett	https://linkedin.com/katrina-bennett	\N	\N
13	leonard-hofstadter	Leonard	Hofstadter	1997-09-27	+380508869264	leonard-hofstadter@gmail.com	Ukraine	Kharkiv	Junior java developer position	One Java professional course with developing web application resume (Link to demo is provided)	/media/avatar/23f550e2-4e79-4bca-94df-1ea82d94c51a.jpg	/media/avatar/23f550e2-4e79-4bca-94df-1ea82d94c51a-sm.jpg	Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	leonard-hofstadter	\N	https://facebook.com/leonard-hofstadter	https://linkedin.com/leonard-hofstadter	\N	\N
14	leslie-winkle	Leslie	Winkle	1995-05-01	+380504219325	leslie-winkle@gmail.com	Ukraine	Kharkiv	Junior java developer position	One Java professional course with developing web application resume (Link to demo is provided)	/media/avatar/5ce1cbcd-e075-47e2-869e-c9960fff9edb.jpg	/media/avatar/5ce1cbcd-e075-47e2-869e-c9960fff9edb-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	\N	\N	https://facebook.com/leslie-winkle	https://linkedin.com/leslie-winkle	\N	https://stackoverflow.com/leslie-winkle
15	logan-sanders	Logan	Sanders	1991-09-18	+380505588993	logan-sanders@gmail.com	Ukraine	Kharkiv	Junior java developer position	Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)	/media/avatar/c27dc3f9-c1b5-4095-9a7c-38cbab7e25d2.jpg	/media/avatar/c27dc3f9-c1b5-4095-9a7c-38cbab7e25d2-sm.jpg	Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum fringilla pede sit amet augue.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	logan-sanders	https://vk.com/logan-sanders	https://facebook.com/logan-sanders	\N	https://github.com/logan-sanders	\N
16	maurice-moss	Maurice	Moss	1995-02-12	+380504763645	maurice-moss@gmail.com	Ukraine	Odessa	Junior java trainee position	One Java professional course with developing web application blog (Link to demo is provided)	/media/avatar/a8abd219-ee3a-4ee6-a2b5-b7df4fc4e927.jpg	/media/avatar/a8abd219-ee3a-4ee6-a2b5-b7df4fc4e927-sm.jpg	Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	\N	https://vk.com/maurice-moss	\N	\N	\N	https://stackoverflow.com/maurice-moss
18	rachel-zane	Rachel	Zane	1991-08-22	+380508659356	rachel-zane@gmail.com	Ukraine	Kiyv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/e0504837-b5fe-4750-bba9-fdffaa46e26f.jpg	/media/avatar/e0504837-b5fe-4750-bba9-fdffaa46e26f-sm.jpg	Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	rachel-zane	https://vk.com/rachel-zane	\N	https://linkedin.com/rachel-zane	\N	https://stackoverflow.com/rachel-zane
19	rajesh-koothrappali	Rajesh	Koothrappali	1995-12-03	+380506779928	rajesh-koothrappali@gmail.com	Ukraine	Odessa	Junior java developer position	One Java professional course with developing web application resume (Link to demo is provided)	/media/avatar/0dc667d4-9c01-4295-bf7e-8d15c3d05563.jpg	/media/avatar/0dc667d4-9c01-4295-bf7e-8d15c3d05563-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	\N	\N	\N	\N	\N	\N
20	richard-hendricks	Richard	Hendricks	1992-02-26	+380507162283	richard-hendricks@gmail.com	Ukraine	Kiyv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/87bc2c4d-3d16-4e2e-8195-aefd674a3aef.jpg	/media/avatar/87bc2c4d-3d16-4e2e-8195-aefd674a3aef-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	richard-hendricks	https://vk.com/richard-hendricks	\N	https://linkedin.com/richard-hendricks	https://github.com/richard-hendricks	\N
21	roy-trenneman	Roy	Trenneman	1991-09-03	+380506518174	roy-trenneman@gmail.com	Ukraine	Kiyv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/366e85f3-8e0c-484e-a718-a250ef13dc25.jpg	/media/avatar/366e85f3-8e0c-484e-a718-a250ef13dc25-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	roy-trenneman	https://vk.com/roy-trenneman	https://facebook.com/roy-trenneman	\N	https://github.com/roy-trenneman	https://stackoverflow.com/roy-trenneman
22	sheldon-cooper	Sheldon	Cooper	1994-12-20	+380503181646	sheldon-cooper@gmail.com	Ukraine	Kiyv	Junior java developer position	Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)	/media/avatar/80cb6dd5-5bd2-4694-a9bb-4f7666b0995d.jpg	/media/avatar/80cb6dd5-5bd2-4694-a9bb-4f7666b0995d-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	sheldon-cooper	https://vk.com/sheldon-cooper	https://facebook.com/sheldon-cooper	\N	\N	\N
23	stuart-bloom	Stuart	Bloom	1990-10-09	+380504696163	stuart-bloom@gmail.com	Ukraine	Kiyv	Junior java developer position	Three Java professional courses with developing one console application and two web applications: blog and resume (Links to demo are provided)	/media/avatar/506e0ee2-c696-4e95-b8c8-c22a070302e2.jpg	/media/avatar/506e0ee2-c696-4e95-b8c8-c22a070302e2-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	stuart-bloom	https://vk.com/stuart-bloom	https://facebook.com/stuart-bloom	https://linkedin.com/stuart-bloom	\N	https://stackoverflow.com/stuart-bloom
24	trevor-evans	Trevor	Evans	1996-08-05	+380507365516	trevor-evans@gmail.com	Ukraine	Odessa	Junior java trainee position	One Java professional course with developing web application blog (Link to demo is provided)	/media/avatar/1302b49b-3a4a-4de0-a940-d65cc327db9b.jpg	/media/avatar/1302b49b-3a4a-4de0-a940-d65cc327db9b-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	trevor-evans	\N	\N	https://linkedin.com/trevor-evans	\N	\N
9	howard-wolowitz	Howard	Wolowitz	1994-03-04	+380508227352	howard-wolowitz@gmail.com	Ukraine	Kharkiv	Junior+ java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/2f17c8b9-5278-4c35-bdae-3ecc13da44eb.jpg	/media/avatar/2f17c8b9-5278-4c35-bdae-3ecc13da44eb-sm.jpg	Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh.	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:33	\N	\N	\N	https://linkedin.com/howard-wolowitz	https://github.com/howard-wolowitz	\N
1	aly-dutta	Aly	Dutta	1990-07-15	+380505263336	aly-dutta@gmail.com	Ukraine	Kiyv	Junior java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/adb782f2-6538-417e-b6a1-3d24fec99207.jpg	/media/avatar/adb782f2-6538-417e-b6a1-3d24fec99207-sm.jpg	\N	$2a$10$q7732w6Rj3kZGhfDYSIXI.wFp.uwTSi2inB2rYHvm1iDIAf1J1eVq	t	2020-01-21 12:47:32	\N	\N	\N	\N	\N	\N
33	mike-rossss	Mike	Ross	1992-08-20	\N	\N	Ukraine	Kharkiv	Middle java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	\N	/media/avatar/a849806a-a5f1-4547-bab9-b91beae73df6-sm.jpg	Nullam cursus lacinia erat. Praesent blandit laoreet nibh. Fusce convallis metus id felis luctus adipiscing.	123456	t	2020-01-21 12:47:33	mike-ross	\N	https://facebook.com/mike-ross	https://linkedin.com/mike-ross	https://github.com/mike-ross	\N
34	den-dug	Den	Dug	1992-10-20	+380502622814	xp.den@mail.ru	Russia	Omsk	Java Developer	________	\N	\N	\N	$2a$10$2PwehvdNnetyxQwYsPiWWu6yUtrStV1juSQOUslGGqy0vPMfmoXE.	t	2020-05-22 13:56:52	\N	\N	\N	\N	\N	\N
17	mike-ross	Mike	Ross	1992-08-25	+380504141445	xp.denis@mail.ru	Ukraine	Kharkiv	Middle java developer position	Two Java professional courses with developing two web applications: blog and resume (Links to demo are provided)	/media/avatar/a849806a-a5f1-4547-bab9-b91beae73df6.jpg	/media/avatar/a849806a-a5f1-4547-bab9-b91beae73df6-sm.jpg	My name Mike. I was born in ....	987654321qA@	t	2020-01-21 12:47:33	mike-ross		https://facebook.com/mike-ross	https://linkedin.com/mike-ross	https://github.com/mike-ross	
35	den-dugin	Den	Dugin	1992-10-20	+79236833949	xp.den@mail.rus	Russia	Omsk	Java Developer	Cool	\N	\N	\N	987654321qA@	t	2020-06-19 12:40:32	den_skype	https://vk.com/id=123	https://facebook.com/id=123	https://linkedin.com/id=123	https://github.com/id=123	\N
\.


--
-- TOC entry 2936 (class 0 OID 16617)
-- Dependencies: 210
-- Data for Name: profile_restore; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.profile_restore (id, token) FROM stdin;
\.


--
-- TOC entry 2935 (class 0 OID 16609)
-- Dependencies: 209
-- Data for Name: skill; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.skill (id, id_profile, category, value, id_category) FROM stdin;
1	1	Languages	Java,SQL,PLSQL	\N
2	1	DBMS	Postgresql	\N
3	1	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
4	1	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
5	1	IDE	Eclipse for JEE Developer	\N
6	1	CVS	Git,Github	\N
7	1	Web Servers	Tomcat,Nginx	\N
8	1	Build system	Maven	\N
9	1	Cloud	AWS,OpenShift	\N
10	2	Languages	Java	\N
11	2	DBMS	Mysql	\N
12	2	Java	Threads,IO,JAXB,GSON	\N
13	2	IDE	Eclipse for JEE Developer	\N
14	2	CVS	Git,Github	\N
15	2	Build system	Maven	\N
16	3	Languages	Java,SQL,PLSQL	\N
17	3	DBMS	Postgresql	\N
18	3	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
19	3	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
20	3	IDE	Eclipse for JEE Developer	\N
21	3	CVS	Git,Github	\N
22	3	Web Servers	Tomcat,Nginx	\N
23	3	Build system	Maven	\N
24	3	Cloud	AWS,OpenShift	\N
26	4	DBMS	Postgresql	\N
27	4	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
28	4	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
29	4	IDE	Eclipse for JEE Developer	\N
30	4	CVS	Git,Github	\N
31	4	Web Servers	Tomcat,Nginx	\N
32	4	Build system	Maven	\N
33	4	Cloud	AWS,OpenShift	\N
34	5	Languages	Java,SQL,PLSQL	\N
35	5	DBMS	Postgresql	\N
36	5	Web	HTML,CSS,JS,Bootstrap,JQuery	\N
37	5	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API	\N
38	5	IDE	Eclipse for JEE Developer	\N
39	5	CVS	Git,Github	\N
40	5	Web Servers	Tomcat,Nginx	\N
41	5	Build system	Maven	\N
42	5	Cloud	AWS	\N
43	6	Languages	Java,SQL	\N
44	6	DBMS	Postgresql	\N
45	6	Web	HTML,CSS,JS,Foundation,JQuery	\N
46	6	Java	Servlets,Logback,JSP,JSTL,JDBC,Apache Commons,Google+ Social API	\N
47	6	IDE	Eclipse for JEE Developer	\N
48	6	CVS	Git,Github	\N
49	6	Web Servers	Tomcat	\N
50	6	Build system	Maven	\N
51	6	Cloud	OpenShift	\N
52	7	Languages	Java,SQL,PLSQL	\N
53	7	DBMS	Postgresql	\N
54	7	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
55	7	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
56	7	IDE	Eclipse for JEE Developer	\N
57	7	CVS	Git,Github	\N
58	7	Web Servers	Tomcat,Nginx	\N
59	7	Build system	Maven	\N
60	7	Cloud	AWS,OpenShift	\N
61	8	Languages	Java,SQL,PLSQL	\N
62	8	DBMS	Postgresql	\N
63	8	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
64	8	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
65	8	IDE	Eclipse for JEE Developer	\N
66	8	CVS	Git,Github	\N
67	8	Web Servers	Tomcat,Nginx	\N
68	8	Build system	Maven	\N
69	8	Cloud	AWS,OpenShift	\N
70	9	Languages	Java,SQL,PLSQL	\N
71	9	DBMS	Postgresql	\N
72	9	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
73	9	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
74	9	IDE	Eclipse for JEE Developer	\N
75	9	CVS	Git,Github	\N
76	9	Web Servers	Tomcat,Nginx	\N
77	9	Build system	Maven	\N
78	9	Cloud	AWS,OpenShift	\N
79	10	Languages	Java,SQL,PLSQL	\N
80	10	DBMS	Postgresql	\N
81	10	Web	HTML,CSS,JS,Bootstrap,JQuery	\N
82	10	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API	\N
83	10	IDE	Eclipse for JEE Developer	\N
84	10	CVS	Git,Github	\N
85	10	Web Servers	Tomcat,Nginx	\N
86	10	Build system	Maven	\N
87	10	Cloud	AWS	\N
88	11	Languages	Java,SQL	\N
89	11	DBMS	Postgresql	\N
90	11	Web	HTML,CSS,JS,Foundation,JQuery	\N
91	11	Java	Servlets,Logback,JSP,JSTL,JDBC,Apache Commons,Google+ Social API	\N
92	11	IDE	Eclipse for JEE Developer	\N
93	11	CVS	Git,Github	\N
94	11	Web Servers	Tomcat	\N
95	11	Build system	Maven	\N
96	11	Cloud	OpenShift	\N
97	12	Languages	Java,SQL,PLSQL	\N
98	12	DBMS	Postgresql	\N
99	12	Web	HTML,CSS,JS,Bootstrap,JQuery	\N
197	23	DBMS	Postgresql,Mysql	\N
100	12	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API	\N
101	12	IDE	Eclipse for JEE Developer	\N
102	12	CVS	Git,Github	\N
103	12	Web Servers	Tomcat,Nginx	\N
104	12	Build system	Maven	\N
105	12	Cloud	AWS	\N
106	13	Languages	Java,SQL,PLSQL	\N
107	13	DBMS	Postgresql	\N
108	13	Web	HTML,CSS,JS,Bootstrap,JQuery	\N
109	13	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API	\N
110	13	IDE	Eclipse for JEE Developer	\N
111	13	CVS	Git,Github	\N
112	13	Web Servers	Tomcat,Nginx	\N
113	13	Build system	Maven	\N
114	13	Cloud	AWS	\N
115	14	Languages	Java,SQL,PLSQL	\N
116	14	DBMS	Postgresql	\N
117	14	Web	HTML,CSS,JS,Bootstrap,JQuery	\N
118	14	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API	\N
119	14	IDE	Eclipse for JEE Developer	\N
120	14	CVS	Git,Github	\N
121	14	Web Servers	Tomcat,Nginx	\N
122	14	Build system	Maven	\N
123	14	Cloud	AWS	\N
124	15	Languages	Java,SQL,PLSQL	\N
125	15	DBMS	Postgresql,Mysql	\N
126	15	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
127	15	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON	\N
128	15	IDE	Eclipse for JEE Developer	\N
129	15	CVS	Git,Github	\N
130	15	Web Servers	Tomcat,Nginx	\N
131	15	Build system	Maven	\N
132	15	Cloud	AWS,OpenShift	\N
133	16	Languages	Java,SQL	\N
134	16	DBMS	Postgresql	\N
135	16	Web	HTML,CSS,JS,Foundation,JQuery	\N
136	16	Java	Servlets,Logback,JSP,JSTL,JDBC,Apache Commons,Google+ Social API	\N
137	16	IDE	Eclipse for JEE Developer	\N
138	16	CVS	Git,Github	\N
139	16	Web Servers	Tomcat	\N
140	16	Build system	Maven	\N
141	16	Cloud	OpenShift	\N
144	17	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
146	17	IDE	Eclipse for JEE Developer	\N
148	17	Web Servers	Tomcat,Nginx	\N
150	17	Cloud	AWS,OpenShift	\N
151	18	Languages	Java,SQL,PLSQL	\N
152	18	DBMS	Postgresql	\N
153	18	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
154	18	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
155	18	IDE	Eclipse for JEE Developer	\N
156	18	CVS	Git,Github	\N
157	18	Web Servers	Tomcat,Nginx	\N
158	18	Build system	Maven	\N
159	18	Cloud	AWS,OpenShift	\N
160	19	Languages	Java,SQL,PLSQL	\N
161	19	DBMS	Postgresql	\N
162	19	Web	HTML,CSS,JS,Bootstrap,JQuery	\N
163	19	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API	\N
164	19	IDE	Eclipse for JEE Developer	\N
165	19	CVS	Git,Github	\N
166	19	Web Servers	Tomcat,Nginx	\N
167	19	Build system	Maven	\N
168	19	Cloud	AWS	\N
169	20	Languages	Java,SQL,PLSQL	\N
170	20	DBMS	Postgresql	\N
171	20	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
172	20	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
173	20	IDE	Eclipse for JEE Developer	\N
174	20	CVS	Git,Github	\N
175	20	Web Servers	Tomcat,Nginx	\N
176	20	Build system	Maven	\N
177	20	Cloud	AWS,OpenShift	\N
178	21	Languages	Java,SQL,PLSQL	\N
179	21	DBMS	Postgresql	\N
180	21	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
181	21	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
182	21	IDE	Eclipse for JEE Developer	\N
183	21	CVS	Git,Github	\N
184	21	Web Servers	Tomcat,Nginx	\N
185	21	Build system	Maven	\N
186	21	Cloud	AWS,OpenShift	\N
187	22	Languages	Java,SQL,PLSQL	\N
188	22	DBMS	Postgresql,Mysql	\N
189	22	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
190	22	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON	\N
191	22	IDE	Eclipse for JEE Developer	\N
192	22	CVS	Git,Github	\N
193	22	Web Servers	Tomcat,Nginx	\N
194	22	Build system	Maven	\N
195	22	Cloud	AWS,OpenShift	\N
196	23	Languages	Java,SQL,PLSQL	\N
143	17	DBMS	Postgresql, Oracle SQL	\N
147	17	Web	Git,Github	\N
149	17	Build system	Maven	\N
198	23	Web	HTML,CSS,JS,Bootstrap,JQuery,Foundation	\N
199	23	Java	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API,Threads,IO,JAXB,GSON	\N
200	23	IDE	Eclipse for JEE Developer	\N
201	23	CVS	Git,Github	\N
202	23	Web Servers	Tomcat,Nginx	\N
203	23	Build system	Maven	\N
204	23	Cloud	AWS,OpenShift	\N
205	24	Languages	Java,SQL	\N
206	24	DBMS	Postgresql	\N
207	24	Web	HTML,CSS,JS,Foundation,JQuery	\N
208	24	Java	Servlets,Logback,JSP,JSTL,JDBC,Apache Commons,Google+ Social API	\N
209	24	IDE	Eclipse for JEE Developer	\N
210	24	CVS	Git,Github	\N
211	24	Web Servers	Tomcat	\N
212	24	Build system	Maven	\N
213	24	Cloud	OpenShift	\N
25	4	Languages	Java,SQL,PLSQL+	\N
142	17	IDE	Java,SQL,PLSQL,Spring	\N
145	17	CVS	Spring MVC,Logback,JSP,JSTL,Spring Data JPA,Apache Commons,Spring Security,Hibernate JPA,Facebook Social API,Servlets,JDBC,Google+ Social API	\N
\.


--
-- TOC entry 2937 (class 0 OID 16624)
-- Dependencies: 211
-- Data for Name: skill_category; Type: TABLE DATA; Schema: public; Owner: resume
--

COPY public.skill_category (id, category) FROM stdin;
1	Languages
2	DBMS
3	Web
4	Java
5	IDE
6	CVS
7	Web Servers
8	Build system
9	Cloud
\.


--
-- TOC entry 2952 (class 0 OID 0)
-- Dependencies: 212
-- Name: certificate_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.certificate_seq', 20, true);


--
-- TOC entry 2953 (class 0 OID 0)
-- Dependencies: 213
-- Name: course_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.course_seq', 10, true);


--
-- TOC entry 2954 (class 0 OID 0)
-- Dependencies: 214
-- Name: education_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.education_seq', 25, true);


--
-- TOC entry 2955 (class 0 OID 0)
-- Dependencies: 215
-- Name: hobby_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.hobby_seq', 135, true);


--
-- TOC entry 2956 (class 0 OID 0)
-- Dependencies: 216
-- Name: language_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.language_seq', 66, true);


--
-- TOC entry 2957 (class 0 OID 0)
-- Dependencies: 217
-- Name: practic_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.practic_seq', 47, true);


--
-- TOC entry 2958 (class 0 OID 0)
-- Dependencies: 218
-- Name: profile_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.profile_seq', 35, true);


--
-- TOC entry 2959 (class 0 OID 0)
-- Dependencies: 219
-- Name: skill_seq; Type: SEQUENCE SET; Schema: public; Owner: resume
--

SELECT pg_catalog.setval('public.skill_seq', 217, true);


--
-- TOC entry 2770 (class 2606 OID 16576)
-- Name: certificate cartificate_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT cartificate_pkey PRIMARY KEY (id);


--
-- TOC entry 2772 (class 2606 OID 16581)
-- Name: course course_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);


--
-- TOC entry 2774 (class 2606 OID 16589)
-- Name: education education_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_pkey PRIMARY KEY (id);


--
-- TOC entry 2776 (class 2606 OID 16594)
-- Name: hobby hobby_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_pkey PRIMARY KEY (id);


--
-- TOC entry 2778 (class 2606 OID 16600)
-- Name: language language_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_pkey PRIMARY KEY (id);


--
-- TOC entry 2792 (class 2606 OID 24925)
-- Name: persistent_logins persistent_logins_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.persistent_logins
    ADD CONSTRAINT persistent_logins_pkey PRIMARY KEY (series);


--
-- TOC entry 2780 (class 2606 OID 16608)
-- Name: practic practic_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.practic
    ADD CONSTRAINT practic_pkey PRIMARY KEY (id);


--
-- TOC entry 2762 (class 2606 OID 16568)
-- Name: profile profile_email_key; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_email_key UNIQUE (email);


--
-- TOC entry 2764 (class 2606 OID 16566)
-- Name: profile profile_phone_key; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_phone_key UNIQUE (phone);


--
-- TOC entry 2766 (class 2606 OID 16562)
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (id);


--
-- TOC entry 2784 (class 2606 OID 16621)
-- Name: profile_restore profile_restore_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_pkey PRIMARY KEY (id);


--
-- TOC entry 2786 (class 2606 OID 16623)
-- Name: profile_restore profile_restore_token_key; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.profile_restore
    ADD CONSTRAINT profile_restore_token_key UNIQUE (token);


--
-- TOC entry 2768 (class 2606 OID 16564)
-- Name: profile profile_uid_key; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_uid_key UNIQUE (uid);


--
-- TOC entry 2788 (class 2606 OID 16630)
-- Name: skill_category scill_category_category_key; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.skill_category
    ADD CONSTRAINT scill_category_category_key UNIQUE (category);


--
-- TOC entry 2790 (class 2606 OID 16628)
-- Name: skill_category scill_category_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.skill_category
    ADD CONSTRAINT scill_category_pkey PRIMARY KEY (id);


--
-- TOC entry 2782 (class 2606 OID 16616)
-- Name: skill scill_pkey; Type: CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.skill
    ADD CONSTRAINT scill_pkey PRIMARY KEY (id);


--
-- TOC entry 2793 (class 2606 OID 16714)
-- Name: certificate certificate_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.certificate
    ADD CONSTRAINT certificate_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2794 (class 2606 OID 16678)
-- Name: course course_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2795 (class 2606 OID 16683)
-- Name: education education_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.education
    ADD CONSTRAINT education_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2796 (class 2606 OID 16693)
-- Name: hobby hobby_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.hobby
    ADD CONSTRAINT hobby_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2797 (class 2606 OID 16698)
-- Name: language language_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.language
    ADD CONSTRAINT language_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2801 (class 2606 OID 24931)
-- Name: persistent_logins persistent_logins_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.persistent_logins
    ADD CONSTRAINT persistent_logins_fk FOREIGN KEY (username) REFERENCES public.profile(uid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2798 (class 2606 OID 16703)
-- Name: practic practic_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.practic
    ADD CONSTRAINT practic_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2799 (class 2606 OID 16719)
-- Name: skill skill_fk; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_fk FOREIGN KEY (id_profile) REFERENCES public.profile(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 2800 (class 2606 OID 24916)
-- Name: skill skill_fk1; Type: FK CONSTRAINT; Schema: public; Owner: resume
--

ALTER TABLE ONLY public.skill
    ADD CONSTRAINT skill_fk1 FOREIGN KEY (id_category) REFERENCES public.skill_category(id);


-- Completed on 2020-06-19 22:05:34

--
-- PostgreSQL database dump complete
--

