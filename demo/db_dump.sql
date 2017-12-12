--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.5
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: blocks; Type: TABLE; Schema: public; Owner: omsjsmebhadlgu
--

CREATE TABLE blocks (
    user_id integer NOT NULL,
    blocked_user_id integer NOT NULL
);


ALTER TABLE blocks OWNER TO omsjsmebhadlgu;

--
-- Name: buddies; Type: TABLE; Schema: public; Owner: omsjsmebhadlgu
--

CREATE TABLE buddies (
    user1_id integer NOT NULL,
    user2_id integer NOT NULL
);


ALTER TABLE buddies OWNER TO omsjsmebhadlgu;

--
-- Name: classes; Type: TABLE; Schema: public; Owner: omsjsmebhadlgu
--

CREATE TABLE classes (
    id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE classes OWNER TO omsjsmebhadlgu;

--
-- Name: matches; Type: TABLE; Schema: public; Owner: omsjsmebhadlgu
--

CREATE TABLE matches (
    user1_id integer NOT NULL,
    user2_id integer NOT NULL
);


ALTER TABLE matches OWNER TO omsjsmebhadlgu;

--
-- Name: user_classes; Type: TABLE; Schema: public; Owner: omsjsmebhadlgu
--

CREATE TABLE user_classes (
    user_id integer NOT NULL,
    class_id integer NOT NULL
);


ALTER TABLE user_classes OWNER TO omsjsmebhadlgu;

--
-- Name: users; Type: TABLE; Schema: public; Owner: omsjsmebhadlgu
--

CREATE TABLE users (
    id integer NOT NULL,
    last_name text NOT NULL,
    first_name text NOT NULL,
    email text NOT NULL,
    password integer NOT NULL,
    bio text NOT NULL,
    class_level integer NOT NULL,
    major text NOT NULL
);


ALTER TABLE users OWNER TO omsjsmebhadlgu;

--
-- Data for Name: blocks; Type: TABLE DATA; Schema: public; Owner: omsjsmebhadlgu
--

COPY blocks (user_id, blocked_user_id) FROM stdin;
3	5
3	6
5	6
5	1
\.


--
-- Data for Name: buddies; Type: TABLE DATA; Schema: public; Owner: omsjsmebhadlgu
--

COPY buddies (user1_id, user2_id) FROM stdin;
2	1
5	1
2	5
\.


--
-- Data for Name: classes; Type: TABLE DATA; Schema: public; Owner: omsjsmebhadlgu
--

COPY classes (id, name) FROM stdin;
1	ac,
2	ut
3	Suspendisse
4	arcu
5	consequat
6	amet
7	nec
8	cursus,
9	metus
10	est,
\.


--
-- Data for Name: matches; Type: TABLE DATA; Schema: public; Owner: omsjsmebhadlgu
--

COPY matches (user1_id, user2_id) FROM stdin;
4	10
4	1
3	1
3	10
1	10
\.


--
-- Data for Name: user_classes; Type: TABLE DATA; Schema: public; Owner: omsjsmebhadlgu
--

COPY user_classes (user_id, class_id) FROM stdin;
7	1
7	2
7	7
8	8
8	9
8	3
9	4
9	5
9	6
8	10
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: omsjsmebhadlgu
--

COPY users (id, last_name, first_name, email, password, bio, class_level, major) FROM stdin;
1	Bauer	Hyacinth	commodo.hendrerit.Donec@Duisami.ca	955	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna	1	orci
2	Walter	Colette	ultrices.iaculis@atrisusNunc.edu	104	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec	4	Quisque
3	Burks	Mallory	varius.orci.in@sempertellus.org	309	Lorem ipsum dolor sit	3	imperdiet,
4	Greene	Leonard	Etiam.imperdiet.dictum@malesuada.edu	913	Lorem	2	amet
5	Garza	Sheila	non.sapien@mollisduiin.co.uk	446	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.	5	tellus.
6	Cabrera	Shay	consectetuer.rhoncus.Nullam@Proinvel.co.uk	547	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut	4	Sed
7	Walton	Nina	Suspendisse.ac@musAenean.com	761	Lorem ipsum	5	aliquam
8	Boyer	Colton	pede.Nunc.sed@sitamet.ca	271	Lorem ipsum dolor	2	eget
9	Bradley	Indira	nec.mauris.blandit@adipiscing.edu	118	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam	5	Duis
10	Cole	Benjamin	velit.dui.semper@quis.org	349	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec	2	arcu.
\.


--
-- Name: classes classes_pk; Type: CONSTRAINT; Schema: public; Owner: omsjsmebhadlgu
--

ALTER TABLE ONLY classes
    ADD CONSTRAINT classes_pk PRIMARY KEY (id);


--
-- Name: users users_pk; Type: CONSTRAINT; Schema: public; Owner: omsjsmebhadlgu
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- Name: plpgsql; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON LANGUAGE plpgsql TO omsjsmebhadlgu;


--
-- PostgreSQL database dump complete
--

