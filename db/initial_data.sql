--
-- PostgreSQL database dump
--

-- Dumped from database version 16.8 (Debian 16.8-1.pgdg120+1)
-- Dumped by pg_dump version 16.8 (Debian 16.8-1.pgdg120+1)

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

--
-- Data for Name: todo_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.todo_items (todo_id, state, title, description) FROM stdin;
1	0	はじめていない	これはまだ着手していないタスクです。
2	1	いまやってる	これは現在対応中のタスクです。
3	2	終わった	これは対応が完了したタスクです。
\.


--
-- Name: todo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.todo_id_seq', 3, true);


--
-- PostgreSQL database dump complete
--

