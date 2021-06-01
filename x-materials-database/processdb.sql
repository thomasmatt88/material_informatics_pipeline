--
-- PostgreSQL database dump
--

-- Dumped from database version 11.0
-- Dumped by pg_dump version 12.2

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

--
-- Name: ball_milling; Type: TABLE; Schema: public; Owner: de_candidate
--

CREATE TABLE public.ball_milling (
    uid character varying(30) NOT NULL,
    process_name character varying(40),
    milling_time real,
    milling_time_units character varying(10),
    milling_speed real,
    milling_speed_units character varying(10),
    output_material_name character varying(40),
    output_material_uid character varying(30) NOT NULL,
    hot_press_uid character varying(30)
);


ALTER TABLE public.ball_milling OWNER TO de_candidate;

--
-- Name: hot_press; Type: TABLE; Schema: public; Owner: de_candidate
--

CREATE TABLE public.hot_press (
    uid character varying(30) NOT NULL,
    process_name character varying(40),
    hot_press_temperature real,
    hot_press_temperature_units character varying(10),
    hot_press_pressure real,
    hot_press_pressure_units character varying(10),
    hot_press_time real,
    hot_press_time_units character varying(10),
    output_material_name character varying(40),
    output_material_uid character varying(30) NOT NULL
);


ALTER TABLE public.hot_press OWNER TO de_candidate;

--
-- Name: material_procurement; Type: TABLE; Schema: public; Owner: de_candidate
--

CREATE TABLE public.material_procurement (
    uid character varying(30) NOT NULL,
    material_name character varying(20),
    mass_fraction real,
    ball_milling_uid character varying(30)
);


ALTER TABLE public.material_procurement OWNER TO de_candidate;

--
-- Data for Name: ball_milling; Type: TABLE DATA; Schema: public; Owner: de_candidate
--

COPY public.ball_milling (uid, process_name, milling_time, milling_time_units, milling_speed, milling_speed_units, output_material_name, output_material_uid, hot_press_uid) FROM stdin;
MATX-BM001	high energy ball milling	15	hr	200	rpm	powder	MATX-BM-M001	MATX-HP001
MATX-BM002	high energy ball milling	30	hr	200	rpm	powder	MATX-BM-M002	MATX-HP002
MATX-BM003	high energy ball milling	45	hr	200	rpm	powder	MATX-BM-M003	MATX-HP003
MATX-BM004	high energy ball milling	60	hr	200	rpm	powder	MATX-BM-M004	MATX-HP004
MATX-BM005	high energy ball milling	15	hr	225	rpm	powder	MATX-BM-M005	MATX-HP005
MATX-BM006	high energy ball milling	30	hr	225	rpm	powder	MATX-BM-M006	MATX-HP006
MATX-BM007	high energy ball milling	45	hr	225	rpm	powder	MATX-BM-M007	MATX-HP007
MATX-BM008	high energy ball milling	60	hr	225	rpm	powder	MATX-BM-M008	MATX-HP008
MATX-BM009	high energy ball milling	15	hr	250	rpm	powder	MATX-BM-M009	MATX-HP009
MATX-BM010	high energy ball milling	30	hr	250	rpm	powder	MATX-BM-M010	MATX-HP010
MATX-BM011	high energy ball milling	45	hr	250	rpm	powder	MATX-BM-M011	MATX-HP011
MATX-BM012	high energy ball milling	60	hr	250	rpm	powder	MATX-BM-M012	MATX-HP012
MATX-BM013	high energy ball milling	15	hr	275	rpm	powder	MATX-BM-M013	MATX-HP013
MATX-BM014	high energy ball milling	30	hr	275	rpm	powder	MATX-BM-M014	MATX-HP014
MATX-BM015	high energy ball milling	45	hr	275	rpm	powder	MATX-BM-M015	MATX-HP015
MATX-BM016	high energy ball milling	60	hr	275	rpm	powder	MATX-BM-M016	MATX-HP016
MATX-BM017	high energy ball milling	15	hr	300	rpm	powder	MATX-BM-M017	MATX-HP017
MATX-BM018	high energy ball milling	30	hr	300	rpm	powder	MATX-BM-M018	MATX-HP018
MATX-BM019	high energy ball milling	45	hr	300	rpm	powder	MATX-BM-M019	MATX-HP019
MATX-BM020	high energy ball milling	60	hr	300	rpm	powder	MATX-BM-M020	MATX-HP020
MATX-BM021	high energy ball milling	15	hr	325	rpm	powder	MATX-BM-M021	MATX-HP021
MATX-BM022	high energy ball milling	30	hr	325	rpm	powder	MATX-BM-M022	MATX-HP022
MATX-BM023	high energy ball milling	45	hr	325	rpm	powder	MATX-BM-M023	MATX-HP023
MATX-BM024	high energy ball milling	60	hr	325	rpm	powder	MATX-BM-M024	MATX-HP024
MATX-BM025	high energy ball milling	15	hr	350	rpm	powder	MATX-BM-M025	MATX-HP025
MATX-BM026	high energy ball milling	30	hr	350	rpm	powder	MATX-BM-M026	MATX-HP026
MATX-BM027	high energy ball milling	45	hr	350	rpm	powder	MATX-BM-M027	MATX-HP027
MATX-BM028	high energy ball milling	60	hr	350	rpm	powder	MATX-BM-M028	MATX-HP028
MATX-BM029	high energy ball milling	15	hr	375	rpm	powder	MATX-BM-M029	MATX-HP029
MATX-BM030	high energy ball milling	30	hr	375	rpm	powder	MATX-BM-M030	MATX-HP030
MATX-BM031	high energy ball milling	45	hr	375	rpm	powder	MATX-BM-M031	MATX-HP031
MATX-BM032	high energy ball milling	60	hr	375	rpm	powder	MATX-BM-M032	MATX-HP032
MATX-BM033	high energy ball milling	15	hr	400	rpm	powder	MATX-BM-M033	MATX-HP033
MATX-BM034	high energy ball milling	30	hr	400	rpm	powder	MATX-BM-M034	MATX-HP034
MATX-BM035	high energy ball milling	45	hr	400	rpm	powder	MATX-BM-M035	MATX-HP035
MATX-BM036	high energy ball milling	60	hr	400	rpm	powder	MATX-BM-M036	MATX-HP036
MATX-BM037	high energy ball milling	15	hr	425	rpm	powder	MATX-BM-M037	MATX-HP037
MATX-BM038	high energy ball milling	30	hr	425	rpm	powder	MATX-BM-M038	MATX-HP038
MATX-BM039	high energy ball milling	45	hr	425	rpm	powder	MATX-BM-M039	MATX-HP039
MATX-BM040	high energy ball milling	60	hr	425	rpm	powder	MATX-BM-M040	MATX-HP040
MATX-BM041	high energy ball milling	15	hr	450	rpm	powder	MATX-BM-M041	MATX-HP041
MATX-BM042	high energy ball milling	30	hr	450	rpm	powder	MATX-BM-M042	MATX-HP042
MATX-BM043	high energy ball milling	45	hr	450	rpm	powder	MATX-BM-M043	MATX-HP043
MATX-BM044	high energy ball milling	60	hr	450	rpm	powder	MATX-BM-M044	MATX-HP044
MATX-BM045	high energy ball milling	15	hr	475	rpm	powder	MATX-BM-M045	MATX-HP045
MATX-BM046	high energy ball milling	60	hr	475	rpm	powder	MATX-BM-M046	MATX-HP046
\.


--
-- Data for Name: hot_press; Type: TABLE DATA; Schema: public; Owner: de_candidate
--

COPY public.hot_press (uid, process_name, hot_press_temperature, hot_press_temperature_units, hot_press_pressure, hot_press_pressure_units, hot_press_time, hot_press_time_units, output_material_name, output_material_uid) FROM stdin;
MATX-HP001	Hot Isostatic Press	850	degC	100	MPa	1	hr	final pellet	MATX-HP-M001
MATX-HP002	Hot Isostatic Press	850	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M002
MATX-HP003	Hot Isostatic Press	900	degC	100	MPa	1	hr	final pellet	MATX-HP-M003
MATX-HP004	Hot Isostatic Press	900	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M004
MATX-HP005	Hot Isostatic Press	1000	degC	100	MPa	1	hr	final pellet	MATX-HP-M005
MATX-HP006	Hot Isostatic Press	1000	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M006
MATX-HP007	Hot Isostatic Press	1050	degC	100	MPa	1	hr	final pellet	MATX-HP-M007
MATX-HP008	Hot Isostatic Press	1050	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M008
MATX-HP009	Hot Isostatic Press	1100	degC	100	MPa	1	hr	final pellet	MATX-HP-M009
MATX-HP010	Hot Isostatic Press	1100	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M010
MATX-HP011	Hot Isostatic Press	1150	degC	100	MPa	1	hr	final pellet	MATX-HP-M011
MATX-HP012	Hot Isostatic Press	1150	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M012
MATX-HP013	Hot Isostatic Press	1200	degC	100	MPa	1	hr	final pellet	MATX-HP-M013
MATX-HP014	Hot Isostatic Press	1200	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M014
MATX-HP015	Hot Isostatic Press	1250	degC	100	MPa	1	hr	final pellet	MATX-HP-M015
MATX-HP016	Hot Isostatic Press	1250	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M016
MATX-HP017	Hot Isostatic Press	1300	degC	100	MPa	1	hr	final pellet	MATX-HP-M017
MATX-HP018	Hot Isostatic Press	1300	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M018
MATX-HP019	Hot Isostatic Press	1350	degC	100	MPa	1	hr	final pellet	MATX-HP-M019
MATX-HP020	Hot Isostatic Press	1350	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M020
MATX-HP021	Hot Isostatic Press	1400	degC	100	MPa	1	hr	final pellet	MATX-HP-M021
MATX-HP022	Hot Isostatic Press	1400	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M022
MATX-HP023	Hot Isostatic Press	1450	degC	100	MPa	1	hr	final pellet	MATX-HP-M023
MATX-HP024	Hot Isostatic Press	1450	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M024
MATX-HP025	Hot Isostatic Press	1500	degC	100	MPa	1	hr	final pellet	MATX-HP-M025
MATX-HP026	Hot Isostatic Press	1500	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M026
MATX-HP027	Hot Isostatic Press	1550	degC	100	MPa	1	hr	final pellet	MATX-HP-M027
MATX-HP028	Hot Isostatic Press	1550	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M028
MATX-HP029	Hot Isostatic Press	1600	degC	100	MPa	1	hr	final pellet	MATX-HP-M029
MATX-HP030	Hot Isostatic Press	1600	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M030
MATX-HP031	Hot Isostatic Press	1650	degC	100	MPa	1	hr	final pellet	MATX-HP-M031
MATX-HP032	Hot Isostatic Press	1650	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M032
MATX-HP033	Hot Isostatic Press	1700	degC	100	MPa	1	hr	final pellet	MATX-HP-M033
MATX-HP034	Hot Isostatic Press	1700	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M034
MATX-HP035	Hot Isostatic Press	1750	degC	100	MPa	1	hr	final pellet	MATX-HP-M035
MATX-HP036	Hot Isostatic Press	1750	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M036
MATX-HP037	Hot Isostatic Press	1800	degC	100	MPa	1	hr	final pellet	MATX-HP-M037
MATX-HP038	Hot Isostatic Press	1800	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M038
MATX-HP039	Hot Isostatic Press	1850	degC	100	MPa	1	hr	final pellet	MATX-HP-M039
MATX-HP040	Hot Isostatic Press	1850	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M040
MATX-HP041	Hot Isostatic Press	1900	degC	100	MPa	1	hr	final pellet	MATX-HP-M041
MATX-HP042	Hot Isostatic Press	1900	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M042
MATX-HP043	Hot Isostatic Press	1950	degC	100	MPa	1	hr	final pellet	MATX-HP-M043
MATX-HP044	Hot Isostatic Press	1950	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M044
MATX-HP045	Hot Isostatic Press	2000	degC	100	MPa	1	hr	final pellet	MATX-HP-M045
MATX-HP046	Hot Isostatic Press	2000	degC	200	MPa	0.5	hr	final pellet	MATX-HP-M046
\.


--
-- Data for Name: material_procurement; Type: TABLE DATA; Schema: public; Owner: de_candidate
--

COPY public.material_procurement (uid, material_name, mass_fraction, ball_milling_uid) FROM stdin;
MATX-PR-001	Zn	0.0199999996	MATX-BM001
MATX-PR-002	Cu	0.920000017	MATX-BM001
MATX-PR-003	Se	0.0599999987	MATX-BM001
MATX-PR-004	Zn	0.0399999991	MATX-BM002
MATX-PR-005	Cu	0.899999976	MATX-BM002
MATX-PR-006	Se	0.0599999987	MATX-BM002
MATX-PR-007	Zn	0.0599999987	MATX-BM003
MATX-PR-008	Cu	0.879999995	MATX-BM003
MATX-PR-009	Se	0.0599999987	MATX-BM003
MATX-PR-010	Zn	0.0799999982	MATX-BM004
MATX-PR-011	Cu	0.860000014	MATX-BM004
MATX-PR-012	Se	0.0599999987	MATX-BM004
MATX-PR-013	Zn	0.100000001	MATX-BM005
MATX-PR-014	Cu	0.839999974	MATX-BM005
MATX-PR-015	Se	0.0599999987	MATX-BM005
MATX-PR-016	Zn	0.119999997	MATX-BM006
MATX-PR-017	Cu	0.819999993	MATX-BM006
MATX-PR-018	Se	0.0599999987	MATX-BM006
MATX-PR-019	Zn	0.140000001	MATX-BM007
MATX-PR-020	Cu	0.800000012	MATX-BM007
MATX-PR-021	Se	0.0599999987	MATX-BM007
MATX-PR-022	Zn	0.159999996	MATX-BM008
MATX-PR-023	Cu	0.779999971	MATX-BM008
MATX-PR-024	Se	0.0599999987	MATX-BM008
MATX-PR-025	Zn	0.180000007	MATX-BM009
MATX-PR-026	Cu	0.75999999	MATX-BM009
MATX-PR-027	Se	0.0599999987	MATX-BM009
MATX-PR-028	Zn	0.200000003	MATX-BM010
MATX-PR-029	Cu	0.74000001	MATX-BM010
MATX-PR-030	Se	0.0599999987	MATX-BM010
MATX-PR-031	Zn	0.219999999	MATX-BM011
MATX-PR-032	Cu	0.720000029	MATX-BM011
MATX-PR-033	Se	0.0599999987	MATX-BM011
MATX-PR-034	Zn	0.239999995	MATX-BM012
MATX-PR-035	Cu	0.699999988	MATX-BM012
MATX-PR-036	Se	0.0599999987	MATX-BM012
MATX-PR-037	Zn	0.25999999	MATX-BM013
MATX-PR-038	Cu	0.680000007	MATX-BM013
MATX-PR-039	Se	0.0599999987	MATX-BM013
MATX-PR-040	Zn	0.280000001	MATX-BM014
MATX-PR-041	Cu	0.660000026	MATX-BM014
MATX-PR-042	Se	0.0599999987	MATX-BM014
MATX-PR-043	Zn	0.300000012	MATX-BM015
MATX-PR-044	Cu	0.639999986	MATX-BM015
MATX-PR-045	Se	0.0599999987	MATX-BM015
MATX-PR-046	Zn	0.319999993	MATX-BM016
MATX-PR-047	Cu	0.620000005	MATX-BM016
MATX-PR-048	Se	0.0599999987	MATX-BM016
MATX-PR-049	Zn	0.340000004	MATX-BM017
MATX-PR-050	Cu	0.600000024	MATX-BM017
MATX-PR-051	Se	0.0599999987	MATX-BM017
MATX-PR-052	Zn	0.360000014	MATX-BM018
MATX-PR-053	Cu	0.579999983	MATX-BM018
MATX-PR-054	Se	0.0599999987	MATX-BM018
MATX-PR-055	Zn	0.379999995	MATX-BM019
MATX-PR-056	Cu	0.560000002	MATX-BM019
MATX-PR-057	Se	0.0599999987	MATX-BM019
MATX-PR-058	Zn	0.400000006	MATX-BM020
MATX-PR-059	Cu	0.540000021	MATX-BM020
MATX-PR-060	Se	0.0599999987	MATX-BM020
MATX-PR-061	Zn	0.419999987	MATX-BM021
MATX-PR-062	Cu	0.519999981	MATX-BM021
MATX-PR-063	Se	0.0599999987	MATX-BM021
MATX-PR-064	Zn	0.439999998	MATX-BM022
MATX-PR-065	Cu	0.5	MATX-BM022
MATX-PR-066	Se	0.0599999987	MATX-BM022
MATX-PR-067	Zn	0.460000008	MATX-BM023
MATX-PR-068	Cu	0.479999989	MATX-BM023
MATX-PR-069	Se	0.0599999987	MATX-BM023
MATX-PR-070	Zn	0.479999989	MATX-BM024
MATX-PR-071	Cu	0.460000008	MATX-BM024
MATX-PR-072	Se	0.0599999987	MATX-BM024
MATX-PR-073	Zn	0.5	MATX-BM025
MATX-PR-074	Cu	0.439999998	MATX-BM025
MATX-PR-075	Se	0.0599999987	MATX-BM025
MATX-PR-076	Zn	0.519999981	MATX-BM026
MATX-PR-077	Cu	0.419999987	MATX-BM026
MATX-PR-078	Se	0.0599999987	MATX-BM026
MATX-PR-079	Zn	0.540000021	MATX-BM027
MATX-PR-080	Cu	0.400000006	MATX-BM027
MATX-PR-081	Se	0.0599999987	MATX-BM027
MATX-PR-082	Zn	0.560000002	MATX-BM028
MATX-PR-083	Cu	0.379999995	MATX-BM028
MATX-PR-084	Se	0.0599999987	MATX-BM028
MATX-PR-085	Zn	0.579999983	MATX-BM029
MATX-PR-086	Cu	0.360000014	MATX-BM029
MATX-PR-087	Se	0.0599999987	MATX-BM029
MATX-PR-088	Zn	0.600000024	MATX-BM030
MATX-PR-089	Cu	0.340000004	MATX-BM030
MATX-PR-090	Se	0.0599999987	MATX-BM030
MATX-PR-091	Zn	0.620000005	MATX-BM031
MATX-PR-092	Cu	0.319999993	MATX-BM031
MATX-PR-093	Se	0.0599999987	MATX-BM031
MATX-PR-094	Zn	0.639999986	MATX-BM032
MATX-PR-095	Cu	0.300000012	MATX-BM032
MATX-PR-096	Se	0.0599999987	MATX-BM032
MATX-PR-097	Zn	0.660000026	MATX-BM033
MATX-PR-098	Cu	0.280000001	MATX-BM033
MATX-PR-099	Se	0.0599999987	MATX-BM033
MATX-PR-100	Zn	0.680000007	MATX-BM034
MATX-PR-101	Cu	0.25999999	MATX-BM034
MATX-PR-102	Se	0.0599999987	MATX-BM034
MATX-PR-103	Zn	0.699999988	MATX-BM035
MATX-PR-104	Cu	0.239999995	MATX-BM035
MATX-PR-105	Se	0.0599999987	MATX-BM035
MATX-PR-106	Zn	0.720000029	MATX-BM036
MATX-PR-107	Cu	0.219999999	MATX-BM036
MATX-PR-108	Se	0.0599999987	MATX-BM036
MATX-PR-109	Zn	0.74000001	MATX-BM037
MATX-PR-110	Cu	0.200000003	MATX-BM037
MATX-PR-111	Se	0.0599999987	MATX-BM037
MATX-PR-112	Zn	0.75999999	MATX-BM038
MATX-PR-113	Cu	0.180000007	MATX-BM038
MATX-PR-114	Se	0.0599999987	MATX-BM038
MATX-PR-115	Zn	0.779999971	MATX-BM039
MATX-PR-116	Cu	0.159999996	MATX-BM039
MATX-PR-117	Se	0.0599999987	MATX-BM039
MATX-PR-118	Zn	0.800000012	MATX-BM040
MATX-PR-119	Cu	0.140000001	MATX-BM040
MATX-PR-120	Se	0.0599999987	MATX-BM040
MATX-PR-121	Zn	0.819999993	MATX-BM041
MATX-PR-122	Cu	0.119999997	MATX-BM041
MATX-PR-123	Se	0.0599999987	MATX-BM041
MATX-PR-124	Zn	0.839999974	MATX-BM042
MATX-PR-125	Cu	0.100000001	MATX-BM042
MATX-PR-126	Se	0.0599999987	MATX-BM042
MATX-PR-127	Zn	0.860000014	MATX-BM043
MATX-PR-128	Cu	0.0799999982	MATX-BM043
MATX-PR-129	Se	0.0599999987	MATX-BM043
MATX-PR-130	Zn	0.879999995	MATX-BM044
MATX-PR-131	Cu	0.0599999987	MATX-BM044
MATX-PR-132	Se	0.0599999987	MATX-BM044
MATX-PR-133	Zn	0.899999976	MATX-BM045
MATX-PR-134	Cu	0.0399999991	MATX-BM045
MATX-PR-135	Se	0.0599999987	MATX-BM045
MATX-PR-136	Zn	0.920000017	MATX-BM046
MATX-PR-137	Cu	0.0199999996	MATX-BM046
MATX-PR-138	Se	0.0599999987	MATX-BM046
\.


--
-- Name: ball_milling ball_milling_pkey; Type: CONSTRAINT; Schema: public; Owner: de_candidate
--

ALTER TABLE ONLY public.ball_milling
    ADD CONSTRAINT ball_milling_pkey PRIMARY KEY (uid);


--
-- Name: hot_press hot_press_pkey; Type: CONSTRAINT; Schema: public; Owner: de_candidate
--

ALTER TABLE ONLY public.hot_press
    ADD CONSTRAINT hot_press_pkey PRIMARY KEY (uid);


--
-- Name: material_procurement material_procurement_pkey; Type: CONSTRAINT; Schema: public; Owner: de_candidate
--

ALTER TABLE ONLY public.material_procurement
    ADD CONSTRAINT material_procurement_pkey PRIMARY KEY (uid);


--
-- Name: ball_milling ball_milling_hot_press_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: de_candidate
--

ALTER TABLE ONLY public.ball_milling
    ADD CONSTRAINT ball_milling_hot_press_uid_fkey FOREIGN KEY (hot_press_uid) REFERENCES public.hot_press(uid);


--
-- Name: material_procurement material_procurement_ball_milling_uid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: de_candidate
--

ALTER TABLE ONLY public.material_procurement
    ADD CONSTRAINT material_procurement_ball_milling_uid_fkey FOREIGN KEY (ball_milling_uid) REFERENCES public.ball_milling(uid);


--
-- PostgreSQL database dump complete
--

