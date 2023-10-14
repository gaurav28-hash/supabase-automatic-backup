--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.4 (Ubuntu 15.4-1.pgdg20.04+1)

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
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "from_ip_address", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--

COPY "pgsodium"."key" ("id", "status", "created", "expires", "key_type", "key_id", "key_context", "name", "associated_data", "raw_key", "raw_key_nonce", "parent_key", "comment", "user_data") FROM stdin;
c44e57ae-8e6c-47d2-8ae6-d7c9366c829f	default	2022-12-14 11:06:04.092341+00	\N	\N	1	\\x7067736f6469756d	\N	associated	\N	\N	\N	This is the default key used for vault.secrets	\N
\.


--
-- Data for Name: IsaDate_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_users" ("id", "first_name", "last_name", "email", "gender", "dob", "otp", "status", "created_at", "updated_at", "username") FROM stdin;
f5547227-8cd0-4214-b479-079ec7c40293	Sonu	Raghuwanshi	manavraghuwanshi@gmail.com	\N	\N	\N	\N	2023-07-21 13:08:17.926+00	2023-07-21 13:08:17.926+00	\N
f5e0e67a-cc1b-415e-be41-1862c1885687	ravi	sharma	ravi@piecodes.in	male	2021-01-01	\N	active	2023-06-28 08:45:24.249+00	2023-06-28 08:45:24.249+00	\N
40efd46c-e507-45a9-b7e6-8bfa73e404cd	raj	sharma	raj@piecodes.in	male	2021-01-01	\N	active	2023-06-28 09:58:38.53+00	2023-06-28 09:58:38.53+00	\N
f86d275b-bf01-4103-a089-14ed5327f5ce	rajeev	sharma	rajeev@piecodes.in	male	2021-01-01	\N	active	2023-06-28 13:18:20.756+00	2023-06-28 13:18:20.756+00	\N
bd6dde17-766b-44bb-a01c-42e2893b9f68	raju	Bhai	raju@piecodes.in	male	2021-01-01	\N	active	2023-06-28 15:21:54.595+00	2023-06-28 15:21:54.595+00	\N
09183541-369f-4862-aa03-ffa0d026cbef	null	ktest	ktest1@mailinator.com	\N	2023-07-05	\N	active	2023-07-22 06:19:28.357+00	2023-07-22 06:20:24.53+00	Ktest1
a6708236-b242-4682-871f-9534afaa1480	\N	\N	lockedsandbox@gmal.com	\N	\N	719491	active	2023-07-22 06:48:58.094+00	2023-07-22 06:49:54.645+00	\N
d02c2034-e5e0-4d28-ac19-a7b5a238086b	MANAV	RAGHUWANSHI	sonu.wdt@gmail.com	\N	\N	\N	active	2023-07-22 06:54:01.99+00	2023-07-22 06:54:01.99+00	\N
9e69af8d-e956-472e-86b7-aa5223208697	Sateesh	Raghuwanshi 	aasra.sateesh@gmail.com	\N	2023-07-14	\N	active	2023-07-20 15:06:45.173+00	2023-07-20 15:07:55.16+00	sateesh
844e00a6-fc3a-4bb7-a8b3-d28867ce1443	Krishna	Singh	arrangedlovers08@gmail.com	\N	2023-07-03	\N	active	2023-07-31 13:17:32.349+00	2023-07-31 13:17:59.713+00	krishna12
8ff0171d-e217-40df-a3cc-372eb1ee1001	Sourabh               	Shrivastava     	sourabh@piecodes.in	male	2023-08-16	\N	active	2023-08-03 08:42:45.652+00	2023-08-12 13:26:12.287+00	sourabh
12d3bc2c-d19f-4b51-8137-5e57bf1da921	Jhon	Methew	test@mailinator.com	\N	2023-08-02	\N	active	2023-08-02 11:44:36.154+00	2023-08-02 12:52:55.678+00	12345
e7930fff-c64c-4b4e-9899-9761bffc388d	null	ktest	ktest5@mailinator.com	\N	2023-07-05	\N	active	2023-07-27 11:45:18.568+00	2023-07-27 11:46:05.454+00	Ktest5
48b01652-6682-43ea-8c91-cd74bb2b059f	\N	\N	abc@mailinator.com	\N	\N	\N	active	2023-08-04 12:28:14.785+00	2023-08-04 12:29:04.975+00	\N
d05e909f-5eca-41d8-85ce-78d9f755cd4f	Test	T	test1@mailinator.com	\N	2023-08-02	\N	active	2023-08-02 12:53:35.557+00	2023-08-02 12:57:24.746+00	007
369da3da-3967-4239-ab85-5fa204b62149	null	Ktest	ktest6@mailinator.com	\N	2023-07-17	\N	active	2023-07-27 13:10:00.994+00	2023-07-27 13:11:13.841+00	Ktest6
b78ac9b8-1d70-463a-9a2a-f5987920f42e	\N	\N	ktest7@mailinator.com	\N	\N	\N	active	2023-07-27 13:36:57.344+00	2023-07-27 13:37:49.202+00	\N
da232a47-0fcc-408d-9ac6-7803c19bd0b3	\N	\N	gshs@hwhw.cn	\N	\N	509702	active	2023-08-04 13:34:46.84+00	2023-08-04 13:34:46.84+00	\N
71156f56-7356-4356-9fc2-05c93e526452	\N	\N	gaurav@piecod.in	\N	\N	\N	active	2023-07-31 15:24:48.949376+00	2023-07-31 15:24:48.949376+00	\N
28ff9a16-29fb-423d-8124-088a269a206f	ktest	ktest	ktest11@mailinator.com	\N	2023-07-02	\N	active	2023-08-02 14:16:02.237+00	2023-08-02 14:28:14.206+00	ktest11
94ebb840-838c-4e63-ae5f-8311d7132ac3	ktest	ktest	ktest9@mailinator.com	\N	2023-07-10	\N	active	2023-07-28 05:13:10.243+00	2023-07-28 05:14:04.401+00	Ktest10
b58184c0-c1ca-4c2d-b366-411f14bc5061	\N	\N	lockedsandox@gmail.com	\N	\N	717932	active	2023-07-28 12:31:56.283+00	2023-07-28 12:32:31.227+00	\N
ad022699-bd5b-4d1f-9889-0dfe5be94c4e	\N	\N	lockedsanbox@gmail.com	\N	\N	635773	active	2023-07-28 12:32:46.71+00	2023-07-28 12:32:46.71+00	\N
0e66354b-3bca-4692-8ff1-f94dff1e8996	\N	\N	gaurav@pie.in	\N	\N	683141	active	2023-08-02 09:07:54.479+00	2023-08-02 09:07:54.479+00	\N
d4442a77-5e4d-457e-a816-409a235cf948	\N	\N	hssj@g.com	\N	\N	163316	active	2023-08-02 12:00:18.772+00	2023-08-02 12:00:18.772+00	\N
9d5fbd30-3bb7-4baf-b034-4ae32fa3196a	\N	\N	ktest12@mailinator.com	\N	\N	898687	active	2023-08-04 14:32:05.828+00	2023-08-07 07:18:51.047+00	\N
9e53ca6c-f1e0-412f-8a0d-c869264dd1fa	\N	\N	ktest13@mailinator.com	\N	\N	\N	active	2023-08-07 07:19:03.597+00	2023-08-07 07:19:53.754+00	\N
41b555eb-1f20-4f9c-8e50-6fe792b92b59	Gaurav	Sharma	ktest8@mailinator.com	\N	2020-01-06	\N	active	2023-07-27 13:48:02.431+00	2023-08-07 07:20:29.464+00	Gaurav0078
6812c4d7-7c0a-4454-8b58-c36d9aec8298	raju	Bhai	raju@piecode.in	male	2021-01-01	\N	active	2023-08-04 09:36:53.611+00	2023-08-04 09:36:53.611+00	kp@1234
c9f6d8b7-1295-42ff-97a9-ca584ae76a86	Shravan	\N	kt@mailinator.com	\N	\N	\N	active	2023-08-16 05:14:42.090548+00	2023-08-16 05:14:42.090548+00	\N
346eb043-437d-4019-bfbc-e95c078dd8f4	null	Raghuwanshi	lockedsandbox@gmail.com	\N	1995-07-22	\N	active	2023-07-22 06:50:20.952+00	2023-08-02 12:33:48.8+00	locked
eb1dedc4-8b81-40bb-8175-01d7f8085e72	\N	\N	ktest@dsd.com	\N	\N	383511	active	2023-08-07 10:10:01.145+00	2023-08-07 10:10:01.145+00	\N
ea1c7b85-d003-4db7-86b0-0430e5c94dc2	Sandbox	Project	sandbox4project@gmail.com	\N	2023-08-10	\N	active	2023-07-27 13:16:48.442+00	2023-07-27 13:16:48.442+00	Sandbox12
1039cdd5-78aa-43d5-98c3-17f91f7cd817	Rowdy	Baby	rowdybaby03337@gmail.com	\N	\N	\N	active	2023-08-04 12:17:31.114+00	2023-08-04 12:17:31.114+00	\N
86e30688-ca2d-474f-927a-05a3f878e888	\N	\N	adas@xsdad.in	\N	\N	578376	active	2023-08-07 10:28:55.545+00	2023-08-07 10:31:07.95+00	\N
43ce4ff9-1962-423a-b41b-7d09e9da096a	\N	\N	sdxas@xasdx.in	\N	\N	354476	active	2023-08-07 10:31:51.358+00	2023-08-07 10:31:51.358+00	\N
c4f8fead-6a46-4555-8183-8b251e065694	Don	Don	don@mailinator.com	\N	2023-08-07	\N	active	2023-08-07 12:18:28.464+00	2023-08-07 12:19:10.486+00	Don 
b23907f6-0a40-4f62-9399-8064bdfbc0d7	ktest	ktest	ktest20@mailinator.com	\N	2023-08-02	\N	active	2023-08-08 10:18:59.558+00	2023-08-08 10:20:15.544+00	Ktest20
82b7a23f-6caf-4b6f-a586-7ebac5026d83	kt	kt	kt1@mailinator.com	\N	2023-08-01	\N	active	2023-08-16 07:06:42.533606+00	2023-08-16 07:06:42.533606+00	kt1
33de9a23-6dc2-45d8-8b2f-92b0aba5811e	Isadate         	Isadste       	email@mailinator.com	\N	2023-08-16	\N	active	2023-08-16 10:11:17.656477+00	2023-08-16 10:11:17.656477+00	isadste
d901a4ac-a739-47fd-86a5-5d20fe6b83ca	\N	\N	kt@dad.com	\N	\N	337026	active	2023-08-16 10:23:00.396606+00	2023-08-16 10:23:00.396606+00	\N
36511b99-8bb8-4240-a0ec-2ea06f14a5c6	Gaurav	Bhargava	gaurav@piecodes.in	male	2020-01-05	\N	active	2023-06-24 11:49:35.788+00	2023-08-04 14:39:53.984+00	Gaurav007
\.


--
-- Data for Name: IsaDate_chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_chats" ("id", "user_id", "chat_type", "created_at", "updated_at", "chat_name", "status") FROM stdin;
ae0b4d84-856e-4240-8d2c-d45bb817a730	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	group	2023-08-16 09:11:07.278505+00	2023-08-16 09:11:07.278505+00	iamgaurav	active
99e7f291-238a-4047-a90b-5ef6af929375	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	group	2023-08-16 10:52:57.439972+00	2023-08-16 10:52:57.439972+00	iamgaurav	active
\.


--
-- Data for Name: IsaDate_chat_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_chat_audiences" ("id", "role", "status", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
446a2a1f-5574-499e-a464-3112ea2a5028	user	active	2023-08-16 09:11:07.503994+00	2023-08-16 09:11:07.503994+00	ae0b4d84-856e-4240-8d2c-d45bb817a730	28ff9a16-29fb-423d-8124-088a269a206f
708f797b-b1d5-4cb6-bd9f-59ff58c4dcb1	admin	active	2023-08-16 09:11:07.503994+00	2023-08-16 09:11:07.503994+00	ae0b4d84-856e-4240-8d2c-d45bb817a730	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
5321045d-91f9-4c7f-8c84-3e0695b8854f	user	active	2023-08-16 10:52:57.673971+00	2023-08-16 10:52:57.673971+00	99e7f291-238a-4047-a90b-5ef6af929375	33de9a23-6dc2-45d8-8b2f-92b0aba5811e
49903c35-44ac-4d2d-b930-2823bb926b19	admin	active	2023-08-16 10:52:57.673971+00	2023-08-16 10:52:57.673971+00	99e7f291-238a-4047-a90b-5ef6af929375	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
\.


--
-- Data for Name: IsaDate_chat_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_chat_messages" ("id", "message", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
\.


--
-- Data for Name: IsaDate_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_events" ("id", "title", "place", "description", "reminder", "is_solo", "is_important", "start_date", "end_date", "start_time", "end_time", "created_at", "updated_at", "user_id") FROM stdin;
333c9c88-4aa8-49eb-9184-593622a34276	Pay Electro feee	Online phonepe	Monthly	5minsbefore	f	f	2023-08-31	2023-08-30	1300	1400	2023-08-16 12:30:38.717619	2023-08-16 12:30:38.717619	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
\.


--
-- Data for Name: IsaDate_event_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_event_audiences" ("id", "created_at", "updated_at", "user_id", "event_id") FROM stdin;
4a7bf5cf-3320-45b6-9aec-5046ffb7c04e	2023-08-16 12:30:38.953065	2023-08-16 12:30:38.953065	1039cdd5-78aa-43d5-98c3-17f91f7cd817	333c9c88-4aa8-49eb-9184-593622a34276
604e33ac-ad21-4c26-8f84-263d71015868	2023-08-16 12:30:38.953065	2023-08-16 12:30:38.953065	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	333c9c88-4aa8-49eb-9184-593622a34276
\.


--
-- Data for Name: IsaDate_friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_friends" ("id", "friend_id", "status", "created_at", "updated_at", "user_id", "note") FROM stdin;
7d9553ac-4b26-42c3-b7ef-8dab8604f3a1	40efd46c-e507-45a9-b7e6-8bfa73e404cd	accepted	2023-06-28 09:58:57.27+00	2023-06-28 09:58:57.27+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	\N
923baf0a-0763-4d5f-b00f-23419d55f95d	f86d275b-bf01-4103-a089-14ed5327f5ce	removed	2023-06-28 13:18:37.712+00	2023-06-29 04:52:28.091+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	\N
ef7c4125-3a2f-4955-9121-88c020224464	bd6dde17-766b-44bb-a01c-42e2893b9f68	blocked	2023-06-28 15:22:14.051+00	2023-06-29 05:45:25.867+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	\N
79b02dc3-6a2d-43f8-8b56-d8c99beb7f42	40efd46c-e507-45a9-b7e6-8bfa73e404cd	accepted	2023-08-07 05:18:27.783+00	2023-08-07 05:18:27.783+00	41b555eb-1f20-4f9c-8e50-6fe792b92b59	\N
c52d4f64-d938-41d5-99d8-a6c6bb8514fa	8ff0171d-e217-40df-a3cc-372eb1ee1001	accepted	2023-08-04 10:44:06.19885+00	2023-08-07 05:20:30.722+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	\N
8c3d0bc6-7049-41f0-b70b-d44efa4fa300	6812c4d7-7c0a-4454-8b58-c36d9aec8298	accepted	2023-08-04 10:53:49.389595+00	2023-08-07 05:20:30.722+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	\N
15c73c48-104d-488e-bd60-42cf88f64ae2	28ff9a16-29fb-423d-8124-088a269a206f	accepted	2023-08-04 12:19:36.999419+00	2023-08-07 05:20:30.722+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6	\N
5c87ca25-3eac-4cdd-b8bb-fff320eeff9c	bd6dde17-766b-44bb-a01c-42e2893b9f68	pending	2023-08-07 05:20:42.581+00	2023-08-07 05:20:42.581+00	41b555eb-1f20-4f9c-8e50-6fe792b92b59	\N
\.


--
-- Data for Name: IsaDate_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_media" ("id", "original_name", "path", "mime_data", "entity_id", "key", "created_at", "updated_at", "user_id") FROM stdin;
6ec47718-c046-4b44-b84e-684448cf7346	Screenshot from 2023-05-11 19-36-53.png	http://localhost:8000/static/Screenshot from 2023-05-11 19-36-53.f2821c7f-81a1-4cf2-9863-6a7915aa9897.png	image/png	\N	\N	2023-07-22 13:19:20.925+00	2023-07-22 13:19:20.925+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
\.


--
-- Data for Name: IsaDate_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."IsaDate_sessions" ("id", "device_id", "access_token", "created_at", "updated_at", "user_id") FROM stdin;
27eba815-5aa6-4d5c-be3f-7edca60fe487	HELLO-MOTO	69312927-82fb-44dd-b61a-08ce17e54fd6	2023-08-03 08:43:06.679+00	2023-08-03 08:43:06.679+00	8ff0171d-e217-40df-a3cc-372eb1ee1001
f5c07085-726f-4359-981b-7ecefdde410d	oppof9pro	5ff86676-c612-45d4-a40b-c29a3aeb819b	2023-06-26 12:45:46.162+00	2023-06-26 12:45:46.162+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
967973b6-6a65-4495-8f1f-6a8879ac6500	oppof9pro	6e5dcbeb-57ac-42ef-ac7d-1b6bc50c9f01	2023-06-27 13:55:50.317+00	2023-06-27 13:55:50.317+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
6e35c136-4913-4cb2-b6dc-2fb2b2602b03	oppof9pro	b2068f2c-442e-45cb-adb9-6d721c4c092f	2023-07-03 08:40:12.599+00	2023-07-03 08:40:12.599+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
e45fd8be-a3ae-4355-84d6-25611df63df3	oppof9pro	5bc5aad1-4fa2-4b1e-b324-369f83449771	2023-07-03 08:40:51.837+00	2023-07-03 08:40:51.837+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
d4d4c135-b28b-4b11-8539-ab5311d57351	oppof9pro	b1c32f2a-943b-479b-a841-b72d7e601a4b	2023-07-03 09:53:43.481+00	2023-07-03 09:53:43.481+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
5e8fb4c9-cb66-455e-8359-d6575eae5337	oppof9pro	51fb90bc-053f-45e0-81a6-3a236eb2a0d9	2023-07-04 04:58:53.406+00	2023-07-04 04:58:53.406+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
b9f0931a-39a9-420e-a7b8-2571544d39d5	oppof9pro	c755805b-5358-4b35-83a3-d1406859e8a1	2023-07-04 09:17:31.306+00	2023-07-04 09:17:31.306+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
451e0f41-1d48-4d7d-a4c7-47a73607ae2c	oppof9pro	d406223e-fe56-45aa-a07b-b1401416d407	2023-07-04 13:48:24.655+00	2023-07-04 13:48:24.655+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
17f6d967-b0c9-49b2-8c60-63197e4c2793	oppof9pro	d9c068e7-dc41-4ba1-af2a-839f20e34058	2023-08-04 06:45:28.497+00	2023-08-04 06:45:28.497+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
bfe4073b-bb36-4275-9805-6512cc43d31a	oppof9pro	01acb049-ceef-415e-b7ee-b6b3071a4a87	2023-08-04 06:46:36.905+00	2023-08-04 06:46:36.905+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
257813d4-ceed-417e-9078-9aa02b65f1ac	oppof9pro	cc55bbbe-896c-4215-bad4-42bccd6cf873	2023-07-05 06:37:50.138+00	2023-07-05 06:37:50.138+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
c523600e-114e-4094-b770-164f2cdb882f	oppof9pro	3992ab3a-1de1-4c7d-a0cd-762a93e40949	2023-08-04 09:31:04.584+00	2023-08-04 09:31:04.584+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
9d51155d-2bc7-49b3-be8f-29c3c732120b	oppof9pro	1d327613-9f34-4f6b-b759-c0eba41f53e3	2023-07-07 05:30:36.699+00	2023-07-07 05:30:36.699+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
9f8382b3-0b33-42de-bf5b-db32b566b7c8	oppof9pro	81e2a416-b35e-4a8c-8678-6e7b09eace12	2023-07-07 10:40:33.469+00	2023-07-07 10:40:33.469+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
1508db49-84f5-4329-ab60-be284e1f1cd9	oppof9pro	3ca0f9d8-9aaa-4d86-a580-27ecd9416fb5	2023-07-17 06:04:04.127+00	2023-07-17 06:04:04.127+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
dd2ad358-cb78-4dfc-9914-1ea1821ff25e	FrlVjUh28xJttsnzZbTas	a3ed508b-bf90-4008-876d-4a671b994eed	2023-08-04 10:33:42.183+00	2023-08-04 10:33:42.183+00	8ff0171d-e217-40df-a3cc-372eb1ee1001
c5398ebc-78af-479a-934f-c91fda95023b	oppof9pro	9d060464-dae5-4c51-a12c-5f0969673c97	2023-07-17 06:54:25.392+00	2023-07-17 06:54:25.392+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
6d73324c-c017-4d30-ac70-a6d3d47ea3fe	oppof9pro	f1dc223b-5916-42a0-a08b-3df18be6e4d2	2023-07-17 07:21:33.081+00	2023-07-17 07:21:33.081+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
1d1fd381-ef3e-4e4e-8abb-5960c7338ba2	zR6Ob78hJu_UHHMrmZXgQ	1a97369f-7c47-40b1-a5f1-47368658ad23	2023-08-04 12:17:31.386+00	2023-08-04 12:17:31.386+00	1039cdd5-78aa-43d5-98c3-17f91f7cd817
9311488b-e463-4bf6-a29d-fb3d52d7049f	OTEflT0djZBZdsz3IVoCR	6d4163cc-db5f-4fd7-a602-abffb43aacea	2023-08-04 12:28:41.337+00	2023-08-04 12:28:41.337+00	48b01652-6682-43ea-8c91-cd74bb2b059f
6933413a-0186-418d-80bb-b6690333695a	OTEflT0djZBZdsz3IVoCR	b3284861-54a0-4bfc-ab9b-47276ac5fef2	2023-08-04 12:29:04.889+00	2023-08-04 12:29:04.889+00	48b01652-6682-43ea-8c91-cd74bb2b059f
c463738e-cce4-4d2b-a6f9-1dbd40fc62ed	WPsP5gvqAzGgqdBtqw9u0	e6eea3b7-029d-495e-9c2a-a753a8b1dda8	2023-08-04 14:13:08.901+00	2023-08-04 14:13:08.901+00	8ff0171d-e217-40df-a3cc-372eb1ee1001
44d89ee3-4ed8-4d44-a4e7-5bf57a648a0d	oppof9pro	86c49ee9-cabb-4953-a0bc-79ce284609a6	2023-07-22 05:57:03.179+00	2023-07-22 05:57:03.179+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
475a89c0-28d3-4842-983f-7df734c86964	vnjD9ACUJs4lcI55BkZjj	0b6f0b7b-d0d0-489c-9940-9ee4a3ddc828	2023-07-22 06:19:41.792+00	2023-07-22 06:19:41.792+00	09183541-369f-4862-aa03-ffa0d026cbef
f7a97c2b-bd77-4e11-935a-1d36fa54c129	vwFC1qP2gT9E4y4NAjqa0	fbb5b69f-fef4-49a0-b29d-bd572a22002b	2023-07-22 06:51:05.031+00	2023-07-22 06:51:05.031+00	346eb043-437d-4019-bfbc-e95c078dd8f4
c8590831-b1b5-45cc-8b54-ed4bc9aa6685	oppof9pro	bab90f1d-9fbd-4315-b35f-81c6d83cce2c	2023-07-18 05:15:27.439+00	2023-07-18 05:15:27.439+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
23bf3c71-28dc-4640-bd51-9dbfcf9ae4ed	vwFC1qP2gT9E4y4NAjqa0	864a1d27-eca5-435b-aa25-8664a68db176	2023-07-22 06:54:02.255+00	2023-07-22 06:54:02.255+00	d02c2034-e5e0-4d28-ac19-a7b5a238086b
2b2cfa6f-202b-4a43-bfa5-9df1397c955d	oppof9pro	d10659d6-2841-40c3-8c5e-1e620e9f2c03	2023-07-18 06:04:36.634+00	2023-07-18 06:04:36.634+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
1033d8ee-f8c5-4aa9-aebe-6d772770391f	oppof9pro	65b897c5-e6ce-473f-ad6c-53a599623b82	2023-07-18 07:12:37.181+00	2023-07-18 07:12:37.181+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
f6d8b745-d973-4798-bf23-424bb4bf850f	vwFC1qP2gT9E4y4NAjqa0	6e67897b-0f6e-47e5-abb8-395552d11d91	2023-07-22 06:55:13.325+00	2023-07-22 06:55:13.325+00	346eb043-437d-4019-bfbc-e95c078dd8f4
2f4af916-6577-4dde-a189-a18194dea289	oppof9pro	cd430f6f-a4fa-4fc8-b5b9-9565100a9e50	2023-07-21 11:19:12.437+00	2023-07-21 11:19:12.437+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
60aa19b9-112b-4744-9160-7a7abb5edb0d	oppof9pro	99644842-9271-41ac-bd73-bb709a2fcb52	2023-07-18 11:39:37.199+00	2023-07-18 11:39:37.199+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
975d96db-4143-468a-a1e6-ecdda56447a5	oppof9pro	b9d6c043-8e0e-48f9-be38-a63695b73cbc	2023-07-24 08:34:41.329+00	2023-07-24 08:34:41.329+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
43143583-02c5-4033-af9d-7e70c30ddcc9	oppof9pro	4d243afc-558b-419f-b8b2-188c1c20b6bc	2023-07-24 09:51:22.543+00	2023-07-24 09:51:22.543+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
f85f8c6b-61fa-446a-8880-03eaf473a56c	oppof9pro	84d8a578-60e8-4bf4-938f-881d3491b734	2023-07-25 13:19:39.435+00	2023-07-25 13:19:39.435+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
ab49fc20-a00c-469e-9e1d-e8fed1e80ae7	7X-ppvfHAX64YR5g9CiF-	bd22f7fc-c9fc-4c2c-b8d0-e9bbb64b5794	2023-07-27 11:45:33.963+00	2023-07-27 11:45:33.963+00	e7930fff-c64c-4b4e-9899-9761bffc388d
2f6b28e3-d442-437b-ac80-2f0ed7a55953	oppof9pro	13a09f01-c89d-4c57-9d55-60977ea5b748	2023-07-27 12:32:21.261+00	2023-07-27 12:32:21.261+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
25b67175-9980-4c6a-b61e-2a41929c59be	LLaAtxt6CbCqxEU8k0OXm	d116b1ce-7fe6-4a88-bdba-69ac175eeb57	2023-07-27 13:10:19.326+00	2023-07-27 13:10:19.326+00	369da3da-3967-4239-ab85-5fa204b62149
efd22cc9-b1d5-4887-ac80-62fadfd6f755	oppof9pro	0dbd8f9a-efa9-4536-9b52-7f76308eeafc	2023-07-20 15:07:28.41+00	2023-07-20 15:07:28.41+00	9e69af8d-e956-472e-86b7-aa5223208697
39719062-c6cd-4f35-9ba0-042043918b10	oppof9pro	f11f0d86-91fb-4f8d-9445-c75fe0064f88	2023-07-21 04:43:51.804+00	2023-07-21 04:43:51.804+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
92b1dba8-463a-4c17-8340-35920b07076d	oppof9pro	a004592b-fde1-4544-9b63-7b81c7be55d7	2023-07-21 13:11:13.932+00	2023-07-21 13:11:13.932+00	f5547227-8cd0-4214-b479-079ec7c40293
0c9586f1-8de3-4b95-911a-a0fd630316d3	z-lSCv9yWIwZ5onJWUVZo	89856926-4eef-470f-a0cb-d82cbc8ca711	2023-07-27 13:37:49.112+00	2023-07-27 13:37:49.112+00	b78ac9b8-1d70-463a-9a2a-f5987920f42e
fdcd2f12-bdeb-4635-83b7-80f6d61c20cf	qFuzTCy2B7vFymmHmQLbT	90970a34-33c5-448c-a6f4-bf965622c87d	2023-07-27 13:48:22.781+00	2023-07-27 13:48:22.781+00	41b555eb-1f20-4f9c-8e50-6fe792b92b59
db8b133c-97f3-436e-b0c1-d2a1bcf6fe27	8voD3IADuUC4mrZFpFcuL	80f8141e-5e76-41c9-a441-2cc0413f33ac	2023-07-27 15:21:52.356+00	2023-07-27 15:21:52.356+00	346eb043-437d-4019-bfbc-e95c078dd8f4
b731bc49-a36a-4011-ab3e-42915df8c538	TQsu5-lpa_yvrbjd9EL5L	cd4e1374-4504-4de5-8790-81bb2a934872	2023-07-28 05:13:44.478+00	2023-07-28 05:13:44.478+00	94ebb840-838c-4e63-ae5f-8311d7132ac3
33582323-3550-4ac3-bbe8-4d358788f502	oppof9pro	dc4f9880-af58-4aaf-b1f4-0496e31fd33a	2023-07-21 13:41:49.382+00	2023-07-21 13:41:49.382+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
cfa8b1b8-8feb-4c6a-8a04-eed71b997a53	2dlKNDgjDO149JdA_RztH	a3010159-2b39-4404-8bc2-4ae92a6b1e85	2023-07-28 12:12:49.486+00	2023-07-28 12:12:49.486+00	346eb043-437d-4019-bfbc-e95c078dd8f4
29eba0d3-f07a-4632-ba77-33f2996833b6	9u9useBQvRRR_OjuXWrwu	fcd73d55-d1b3-4342-8d0e-9bed28fe4b16	2023-07-28 12:33:18.244+00	2023-07-28 12:33:18.244+00	346eb043-437d-4019-bfbc-e95c078dd8f4
7e3812bd-59ee-401c-a656-cc781eb81244	oppof9pro	ea2e19b1-fc38-411a-a89d-2881be93376c	2023-07-31 10:27:35.942+00	2023-07-31 10:27:35.942+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
da3b2581-315b-4e25-9313-382b0e62804a	oppof9pro	6858db68-bd5e-4c60-a4b5-a51608613acd	2023-07-31 10:32:28.347+00	2023-07-31 10:32:28.347+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
d22ce54c-4eb8-409b-b561-117d183b0fb8	oppof9pro	41919cbb-7146-473a-837f-872eccbde7f4	2023-07-31 13:25:21.553+00	2023-07-31 13:25:21.553+00	71156f56-7356-4356-9fc2-05c93e526452
aeef5332-f426-48ee-bab7-e495831c3b9b	oppof9pro	e5b38796-2c3c-46cf-a0e8-891b942fb2b8	2023-07-31 13:35:31.767+00	2023-07-31 13:35:31.767+00	71156f56-7356-4356-9fc2-05c93e526452
54b71f41-e76f-4b92-9758-dad2aa43ccdb	oppof9pro	1f1ab6c4-d3be-450e-80ed-b2af8f4f7d2a	2023-07-31 13:38:25.637+00	2023-07-31 13:38:25.637+00	71156f56-7356-4356-9fc2-05c93e526452
5609ba41-355a-410d-8fce-3a7f53e91b73	oppof9pro	0e6ef42d-0464-4038-8507-770648f2234f	2023-07-31 13:55:32.843+00	2023-07-31 13:55:32.843+00	71156f56-7356-4356-9fc2-05c93e526452
204dc82b-3be9-4503-9312-557dd4a94610	oppof9pro	700d2335-8a30-4534-a402-7f46bffe0091	2023-07-31 13:57:58.682+00	2023-07-31 13:57:58.682+00	71156f56-7356-4356-9fc2-05c93e526452
b650d2e2-c5c4-4797-892b-d28944bea68d	KIpGkQBlZEMLKTBfQx2w1	bfe327d8-77d7-40e7-878a-b534f1250f89	2023-08-01 07:27:22.441+00	2023-08-01 07:27:22.441+00	41b555eb-1f20-4f9c-8e50-6fe792b92b59
0b325bd8-a8e9-48f9-a028-302ed72f4534	oppof9pro	9247e047-99a5-4554-922a-ab4cab048669	2023-08-02 09:08:41.86+00	2023-08-02 09:08:41.86+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
3c16ed8c-8fa5-4178-a985-d1f9665269a5	e-hhW7s5DsWALu2hUJwLL	6b561040-ed67-4104-96ba-ccd952cfd95b	2023-08-02 12:07:16.74+00	2023-08-02 12:07:16.74+00	12d3bc2c-d19f-4b51-8137-5e57bf1da921
fbf74987-7a9e-4b37-be9e-7a59209676ee	e-hhW7s5DsWALu2hUJwLL	58a126f5-66dc-4e69-b214-d35fa79fc00b	2023-08-02 12:09:59.756+00	2023-08-02 12:09:59.756+00	12d3bc2c-d19f-4b51-8137-5e57bf1da921
50137fba-a192-45d8-a4a9-ac24b708a076	jLs06Js94Rp-yuv4wTDMv	b878d542-0697-4f45-8b4e-3631afa200b3	2023-08-02 12:26:07.509+00	2023-08-02 12:26:07.509+00	346eb043-437d-4019-bfbc-e95c078dd8f4
159c7af9-7c44-4947-b737-c04c6abf10aa	jLs06Js94Rp-yuv4wTDMv	e694e61c-c631-4889-bd8e-fe8058156d77	2023-08-02 12:27:24.846+00	2023-08-02 12:27:24.846+00	346eb043-437d-4019-bfbc-e95c078dd8f4
201ef754-062f-4dee-a8f9-b0a4ba442641	jLs06Js94Rp-yuv4wTDMv	0e3d3dba-7f54-46a4-add6-99d4cc487901	2023-08-02 12:33:48.714+00	2023-08-02 12:33:48.714+00	346eb043-437d-4019-bfbc-e95c078dd8f4
808c103d-7c2a-4489-9d14-f4f09dcbaa3e	J2gW7WFfYaggLfP9pu41h	4c52dd1d-1cee-4f71-8c01-3965154b791b	2023-08-02 12:35:41.199+00	2023-08-02 12:35:41.199+00	12d3bc2c-d19f-4b51-8137-5e57bf1da921
3ff17445-7c50-4bda-96d9-b8a034a12960	RFlpoekkILUzAPZX2c35Z	9f941088-e111-428a-9329-bfbbf3cb9811	2023-08-02 12:44:59.67+00	2023-08-02 12:44:59.67+00	12d3bc2c-d19f-4b51-8137-5e57bf1da921
f9a1d364-2ea0-49ce-8897-ddbf53c11d1c	RFlpoekkILUzAPZX2c35Z	6baf60da-35fe-48ad-8fd8-129608e38c09	2023-08-02 12:46:39.968+00	2023-08-02 12:46:39.968+00	12d3bc2c-d19f-4b51-8137-5e57bf1da921
72fb8393-e81e-4832-825c-6555c4e1f61a	RFlpoekkILUzAPZX2c35Z	a7208db9-2ec6-4628-9e6f-2e16af78dfe2	2023-08-02 12:52:55.591+00	2023-08-02 12:52:55.591+00	12d3bc2c-d19f-4b51-8137-5e57bf1da921
dfdd8e67-6a18-49ec-bd2b-bf6f2d6c45a2	RFlpoekkILUzAPZX2c35Z	099d978f-aade-4600-b4e5-4310cc294b51	2023-08-02 12:53:53.048+00	2023-08-02 12:53:53.048+00	d05e909f-5eca-41d8-85ce-78d9f755cd4f
22a7723c-00e6-4e87-915d-c04630dda3bc	d43iFtEHBRibBbPyyjGpp	62932610-89ff-4cdf-82d7-9b2294b45c4e	2023-08-02 14:24:46.106+00	2023-08-02 14:24:46.106+00	28ff9a16-29fb-423d-8124-088a269a206f
b6833b1c-ca26-4fc8-8fe7-0bb761cf869a	oppof9pro	56ff9236-8395-4470-831e-45d2ac84a414	2023-08-04 14:39:53.897+00	2023-08-04 14:39:53.897+00	36511b99-8bb8-4240-a0ec-2ea06f14a5c6
12423264-956d-4f00-a0da-c961f8de44c9	SuSlE0MAA5zrFmN-zDGnQ	fa9ca687-b5f0-44f5-8b8a-1875b9620587	2023-08-05 10:02:17.916+00	2023-08-05 10:02:17.916+00	844e00a6-fc3a-4bb7-a8b3-d28867ce1443
5cfd81de-4f6b-494d-9eee-01646e089808	oppof9pro	08706e72-8346-4a12-8c13-e5b07ca83e89	2023-08-07 07:19:53.665+00	2023-08-07 07:19:53.665+00	9e53ca6c-f1e0-412f-8a0d-c869264dd1fa
6b2f79aa-4a81-4ed3-9a22-c58f86ad7865	KU0jllLqCxAsqPmxAz1jp	427d2ea2-c8c4-4497-af75-d216e307da39	2023-08-07 09:02:31.186+00	2023-08-07 09:02:31.186+00	8ff0171d-e217-40df-a3cc-372eb1ee1001
b29968d0-5b95-435d-a784-2f0ba70b47d1	U2ISIWtnMV8fTpOwCsF8t	bd12aaca-0ba1-45bb-b4a8-5a418d1cd0da	2023-08-07 09:15:49.736+00	2023-08-07 09:15:49.736+00	8ff0171d-e217-40df-a3cc-372eb1ee1001
016ae3d9-f4bb-4cfb-85ce-100b3ad813a7	aXlkRz_UInIzbzRYPVVhd	b376d7c8-417b-4d91-aedc-2217294ec25e	2023-08-07 12:18:53.765+00	2023-08-07 12:18:53.765+00	c4f8fead-6a46-4555-8183-8b251e065694
397150da-3f43-461b-8d0a-b3d7ee4b096e	6wBOkhqqZTsN6qOpCSkgv	276f4f2c-43e1-4ac2-beac-8567cb96b3c1	2023-08-08 10:19:33.77+00	2023-08-08 10:19:33.77+00	b23907f6-0a40-4f62-9399-8064bdfbc0d7
567e078b-a940-4586-be39-eeea42738098	HelloMoto	6e7efdfd-fe9b-4c25-9880-3626a8f24a8e	2023-08-12 13:26:12.198+00	2023-08-12 13:26:12.198+00	8ff0171d-e217-40df-a3cc-372eb1ee1001
59ecae5b-30c2-4a9b-9c3a-9c2673093ca9	oppof9pro	3e736ce9-c4ca-4d84-8c1f-17dc2ba0a291	2023-08-16 05:15:30.348653+00	2023-08-16 05:15:30.348653+00	c9f6d8b7-1295-42ff-97a9-ca584ae76a86
c7fe0425-e587-4aeb-a6e3-38fbb13a8ec8	x6UGnYx-5n_NrK_7mk-TA	f721885e-b196-4441-b198-1ff852a5f151	2023-08-16 07:10:37.274913+00	2023-08-16 07:10:37.274913+00	82b7a23f-6caf-4b6f-a586-7ebac5026d83
7cc05e64-a1c3-4360-a8c2-f769bff4581c	jPI8KLzx4e8PfprZR8KOk	30d8e1d8-3a12-4410-8c2e-5ec6dd43ff31	2023-08-16 10:12:54.506047+00	2023-08-16 10:12:54.506047+00	33de9a23-6dc2-45d8-8b2f-92b0aba5811e
e5b7228c-d9da-400e-978d-12aee7599c80	6NpF9RbrwE1mCC-FHcuY1	e013bb20-29a5-4563-bddc-f216409c55ae	2023-08-16 10:23:34.839119+00	2023-08-16 10:23:34.839119+00	ea1c7b85-d003-4db7-86b0-0430e5c94dc2
\.


--
-- Data for Name: PennyWise_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_users" ("id", "first_name", "last_name", "gender", "dob", "otp", "status", "created_at", "updated_at", "role", "email") FROM stdin;
2fa69c48-67e7-45ae-9dec-8a7ff33a3af6	Gourav	Bhargava	\N	\N	\N	active	2023-06-09 09:31:49.518+00	2023-06-09 09:33:11.424+00	user	gourav@picode.in
0717aa19-3b6b-474b-b3ab-4f11f6aed66d	Raju	Rastogi	\N	\N	\N	active	2023-05-19 17:12:21.794+00	2023-05-19 17:15:41.374+00	administrator	123@jbl.in
157646bb-8d3b-4bb2-89c8-d7e8944bee4f	Gaurav	Sharma	\N	\N	\N	active	2023-05-31 09:21:39.322+00	2023-05-31 16:02:49.731+00	user	gaurav@pie.in
af6a7cbb-5fb4-4ec6-bc5c-1e7d969b40cf	Batman	Marvel	\N	\N	\N	active	2023-05-26 06:33:11.325+00	2023-05-26 06:39:46.308+00	user	superman@marvel.in
00291f83-377b-4c30-9dfa-a8ebfc9fab1c	Saurav	Sharma	\N	\N	\N	active	2023-05-31 19:01:05.047+00	2023-06-01 04:51:47.406+00	user	gaurav@pi.in
de5ef8eb-582a-4f8e-b6d2-3530deebc5e9	Anuj	london	\N	\N	\N	active	2023-05-26 06:23:20.703+00	2023-05-26 06:42:43.954+00	user	royal@rise.in
48d32692-d16a-4efe-a81f-8cd3ad52141e	Gaurav	Py	\N	\N	902419	active	2023-06-01 05:20:47.903+00	2023-06-06 11:46:22.191+00	user	gaurav@py.in
2715d756-fb52-44b2-b34c-a0852d155b4e	\N	\N	\N	\N	796834	active	2023-06-06 11:46:37.116+00	2023-06-06 11:47:28.843+00	user	gaurav@picodes.in
7234bbf7-190b-418d-9d3d-6fba89bc254c	Sandbox	Project	\N	\N	\N	\N	2023-04-07 10:02:49.658+00	2023-04-07 12:56:54.802+00	user	sandbox4project@gmail.com
edf65f4f-c01f-46fe-b4a0-910bfaea737d	Sateesh	Raghuwanshi	male	1997-03-24 18:30:00+00	\N	active	2023-04-06 12:49:32.263+00	2023-04-06 14:49:46.999+00	user	323@piecodes.in
5316c741-0641-43fe-bd43-9b224e3aa731	Sateesh	Raghuwanshi	\N	\N	\N	\N	2023-04-08 11:30:07.556+00	2023-04-13 17:26:05.623+00	user	6150871364958841@pennywises.com
29870436-05a6-4283-919f-59f089b1cea9	Ironman	Marvel	male	1947-01-26 00:00:00+00	\N	active	2023-05-09 12:29:57.77+00	2023-05-17 13:21:42.689+00	administrator	Marvel@ironman.in
18b6a9d3-26b1-44d2-bee9-a59c096bcda9	Himalyan	Husky	male	\N	\N	active	2023-05-12 05:28:15.495+00	2023-05-18 07:25:15.523+00	user	987@himalyan.in
2c4d4f22-9b4a-43bc-af3f-c25c4c4fe33d	\N	\N	\N	\N	\N	active	2023-06-21 07:03:00.419+00	2023-06-21 07:03:50.061+00	user	gaurav@rto.in
46bf77df-2771-4512-8241-89649ab0aa85	\N	\N	\N	\N	\N	active	2023-06-07 14:59:39.516+00	2023-06-07 14:59:59.1+00	user	01new@mailinator.com
b599d4e2-5ab8-4743-909d-b47d1d5fb21a	001	PieCodian	male	1997-03-24 18:30:00+00	\N	active	2023-02-28 13:17:54.128+00	2023-05-10 11:39:27.123+00	administrator	001@piecodes.in
8959aaa0-7169-46cc-b012-3a7cf3c5a9b3	002	PieCodian	male	1997-03-24 18:30:00+00	\N	active	2023-03-09 17:00:30.537+00	2023-04-11 18:38:27.197+00	user	002@piecodes.in
8223f0f1-9a19-466d-8f5a-b52ce95f03ff	\N	\N	\N	\N	\N	active	2023-06-09 07:13:19.252+00	2023-06-09 07:14:06.937+00	user	gaurav@ty.in
689e00f0-ff76-4404-844e-eeafcb0fc042	Gaurav	rts	\N	\N	\N	active	2023-06-21 07:05:59.115+00	2023-06-21 07:16:07.666+00	user	gaurav@rts.in
8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	\N	\N	\N	\N	\N	active	2023-09-01 09:17:17.951+00	2023-10-12 05:05:00.759+00	administrator	gaurav@piecode.in
c38f5612-ef98-4f39-9b19-1265f445a8d2	Garry	Sandhu	\N	\N	\N	active	2023-08-07 08:54:59.543+00	2023-08-07 09:00:29.205+00	user	gaurav@peer.in
56bf377f-a070-4b57-afa0-90de85803884	\N	\N	\N	\N	323764	active	2023-09-08 15:26:11.594+00	2023-09-08 15:26:11.594+00	user	golu@piecode.in
9978ddf4-24e0-4bbc-9a7f-0d0ec15d4a02	ravii	sharma	male	2021-01-01 00:00:00+00	\N	active	2023-09-02 12:37:19.796+00	2023-09-02 12:37:19.796+00	user	ravi@spices.in
78533c97-7d6a-44f2-b4e9-c4abf9360300	\N	\N	\N	\N	\N	active	2023-07-04 05:19:52.917+00	2023-08-08 06:55:47.374+00	user	gb@piecode.in
511e6dee-3a7b-4d01-9133-c5c587876a29	Mahesh	Lodha	male	\N	\N	active	2023-09-18 14:42:13.888+00	2023-10-06 11:40:50.873+00	administrator	mahesh@piecodes.in
c5268a7c-d098-448c-9655-c19cbea86413	raviiii	PieCodian	male	2021-01-01 00:00:00+00	\N	deleted	2023-09-08 15:36:58.057+00	2023-09-08 15:38:27.581+00	user	ravi@spikes.in
c4ebf5ca-96d5-4b82-a3b7-1c534bf2cd07	\N	\N	\N	\N	\N	active	2023-08-28 06:41:10.674+00	2023-08-28 06:41:51.433+00	user	sunny@mail.in
ee30fa2e-c7ca-46ff-aab8-80319114278a	Garry	\N	\N	\N	\N	active	2023-09-08 15:05:01.737+00	2023-09-08 15:40:35.464+00	user	gourav@piecodes.in
6b926272-8f0f-42c9-9fc1-974da8f2cb36	Vishal	Ojha	male	1999-06-28 00:00:00+00	\N	active	2023-09-23 11:49:50.875+00	2023-09-23 11:50:40.021+00	user	vishal.ojha@piecodes.in
f0306322-3348-4c48-82be-6b8b508bbcb9	raviiii	sharma	male	2021-01-01 00:00:00+00	\N	active	2023-09-01 10:51:13.144+00	2023-09-01 10:51:13.144+00	user	ravi@pics.in
e0c54801-0f69-4a9a-8cc2-8fb17de41358	\N	Spider	\N	\N	\N	active	2023-09-09 11:28:19.774+00	2023-09-09 11:29:31.678+00	user	Spider@man.in
f6c409e3-7a8e-4626-89c1-90099d9af669	001	PieCodian	\N	\N	292004	deleted	2023-09-01 10:31:10.788+00	2023-09-08 12:12:10.377+00	user	gaurav@piecod.in
e8a50789-6197-467b-8de1-cc592dad4f2e	\N	\N	\N	\N	\N	active	2023-09-08 10:44:03.774+00	2023-09-08 13:17:57.958+00	administrator	gaurav@gb.in
07a954ce-6c81-45ab-8235-09175e417e06	\N	\N	\N	\N	\N	active	2023-06-09 12:12:46.987+00	2023-09-19 14:14:44.654+00	user	pennywise@mailinator.com
6b3ebe54-1049-4235-85f1-02a3c5d18432	Sandbox	code	\N	\N	\N	active	2023-09-27 12:49:20.313+00	2023-09-27 12:49:20.313+00	user	lockedsandbox@gmail.com
1598fe0f-e1fe-4fe8-a892-90471e72fdc2	\N	\N	\N	\N	\N	active	2023-10-03 07:38:16.241+00	2023-10-11 12:08:22.58+00	user	gaurav@piecodes.in
\.


--
-- Data for Name: PennyWise_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_accounts" ("id", "name", "description", "created_at", "updated_at", "user_id", "status") FROM stdin;
62d4f1db-c0a5-422f-a38c-32eb2267d093	Personal	\N	2023-07-04 05:19:53.141+00	2023-07-04 05:19:53.141+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	active
23f9f14b-2faf-43ee-8a12-a1cdf05b0735	Business	\N	2023-07-04 05:19:53.141+00	2023-07-04 05:19:53.141+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	active
fa357cc7-d05e-4934-9f4f-b50770e4d7bf	Business  	Details	2023-05-12 05:37:49.704+00	2023-05-12 05:38:18.969+00	18b6a9d3-26b1-44d2-bee9-a59c096bcda9	deleted
57e0119e-048b-47e0-a831-b06f272b6836	Business	Internet Bill	2023-03-17 11:22:38.023+00	2023-05-09 11:17:06.425+00	b599d4e2-5ab8-4743-909d-b47d1d5fb21a	active
d025d1d8-7083-43bd-b07e-3efc40ad7259	Personal	\N	2023-05-19 17:12:22.212+00	2023-05-19 17:12:22.212+00	0717aa19-3b6b-474b-b3ab-4f11f6aed66d	active
41c1d70a-0121-4e8d-8506-dbd4aea8eae2	Business	\N	2023-05-19 17:12:22.212+00	2023-05-19 17:12:22.212+00	0717aa19-3b6b-474b-b3ab-4f11f6aed66d	active
7ffda368-06bc-4e97-a48d-d2bf543f2e8c	Personal	\N	2023-05-26 06:23:20.937+00	2023-05-26 06:23:20.937+00	de5ef8eb-582a-4f8e-b6d2-3530deebc5e9	active
9f8d9a68-7386-4fad-8926-8146262b352d	Business	\N	2023-05-26 06:23:20.937+00	2023-05-26 06:23:20.937+00	de5ef8eb-582a-4f8e-b6d2-3530deebc5e9	active
158a0bc2-b12f-4a5e-a68c-73fa378ef478	Personal	\N	2023-05-26 06:33:11.588+00	2023-05-26 06:33:11.588+00	af6a7cbb-5fb4-4ec6-bc5c-1e7d969b40cf	active
938f26dc-fdb4-41fc-bb64-747bfc5d0176	Business	\N	2023-05-26 06:33:11.588+00	2023-05-26 06:33:11.588+00	af6a7cbb-5fb4-4ec6-bc5c-1e7d969b40cf	active
aaacd9b4-1864-4984-ac21-00d3089ba2c3	Business	\N	2023-05-31 09:21:39.757+00	2023-05-31 09:21:39.757+00	157646bb-8d3b-4bb2-89c8-d7e8944bee4f	active
9804289d-1426-4911-b361-1fe22db00fa3	Personal	\N	2023-05-31 19:01:05.288+00	2023-05-31 19:01:05.288+00	00291f83-377b-4c30-9dfa-a8ebfc9fab1c	active
1d5bc2c9-53fb-41e7-becc-7bd91bce010e	Business	\N	2023-05-31 19:01:05.288+00	2023-05-31 19:01:05.288+00	00291f83-377b-4c30-9dfa-a8ebfc9fab1c	active
aef03eaa-f5ad-40c9-b833-489e5b274a38	Personal	\N	2023-06-01 05:20:48.156+00	2023-06-01 05:20:48.156+00	48d32692-d16a-4efe-a81f-8cd3ad52141e	active
d36474d9-75e3-4073-89d2-a378a1b633fc	Business	\N	2023-06-01 05:20:48.156+00	2023-06-01 05:20:48.156+00	48d32692-d16a-4efe-a81f-8cd3ad52141e	active
a83a0ba8-68a1-4da3-9124-60a9b38f06fc	Personal	\N	2023-06-06 11:46:37.366+00	2023-06-06 11:46:37.366+00	2715d756-fb52-44b2-b34c-a0852d155b4e	active
033719a0-2ac0-4a48-a06e-45f1b2b0ae5d	Business	\N	2023-06-06 11:46:37.366+00	2023-06-06 11:46:37.366+00	2715d756-fb52-44b2-b34c-a0852d155b4e	active
bd5e09a5-55ed-4d8b-9476-9bac6a83f44f	Personal	\N	2023-06-07 14:59:39.761+00	2023-06-07 14:59:39.761+00	46bf77df-2771-4512-8241-89649ab0aa85	active
14270f6c-7035-49e1-b3d1-2e214d9e6f1b	Business	\N	2023-06-07 14:59:39.761+00	2023-06-07 14:59:39.761+00	46bf77df-2771-4512-8241-89649ab0aa85	active
036e6eac-c572-44d6-b8f3-93295fb193b1	Personal	\N	2023-06-09 07:13:19.483+00	2023-06-09 07:13:19.483+00	8223f0f1-9a19-466d-8f5a-b52ce95f03ff	active
f9d05de2-c1b5-4755-953b-f0f26dee22d2	Business	\N	2023-06-09 07:13:19.483+00	2023-06-09 07:13:19.483+00	8223f0f1-9a19-466d-8f5a-b52ce95f03ff	active
e66bfa10-3080-4b62-a07e-45272b246368	Personal	\N	2023-06-09 09:31:49.756+00	2023-06-09 09:31:49.756+00	2fa69c48-67e7-45ae-9dec-8a7ff33a3af6	active
996d9d02-2ea2-44aa-a48e-74cc7ce7f9bc	Business	\N	2023-06-09 09:31:49.756+00	2023-06-09 09:31:49.756+00	2fa69c48-67e7-45ae-9dec-8a7ff33a3af6	active
ad8346cf-ba04-4cf2-9cca-a236627575de	Personal	\N	2023-06-09 12:12:47.221+00	2023-06-09 12:12:47.221+00	07a954ce-6c81-45ab-8235-09175e417e06	active
1e5d0742-c781-451e-a495-9db59bafac0b	Business	\N	2023-06-09 12:12:47.221+00	2023-06-09 12:12:47.221+00	07a954ce-6c81-45ab-8235-09175e417e06	active
59abb0be-93f8-4118-aaf6-af819020c937	Personal	\N	2023-06-21 07:03:00.862+00	2023-06-21 07:03:00.862+00	2c4d4f22-9b4a-43bc-af3f-c25c4c4fe33d	active
b566980f-e842-4a70-97e6-7de50bd433fb	Business	\N	2023-06-21 07:03:00.862+00	2023-06-21 07:03:00.862+00	2c4d4f22-9b4a-43bc-af3f-c25c4c4fe33d	active
fc9fb154-841c-4644-9dd4-00904091e21a	Personal	\N	2023-06-21 07:05:59.356+00	2023-06-21 07:05:59.356+00	689e00f0-ff76-4404-844e-eeafcb0fc042	active
257fb64a-f95b-4279-a9e5-32abbd29c6ae	Business	\N	2023-06-21 07:05:59.356+00	2023-06-21 07:05:59.356+00	689e00f0-ff76-4404-844e-eeafcb0fc042	active
5b62b9a4-a988-405e-bd2f-907f3758eefe	Personal	\N	2023-08-07 08:54:59.78+00	2023-08-07 08:54:59.78+00	c38f5612-ef98-4f39-9b19-1265f445a8d2	active
438afe79-76db-4102-abc7-da09d5bc3c65	Business	\N	2023-08-07 08:54:59.78+00	2023-08-07 08:54:59.78+00	c38f5612-ef98-4f39-9b19-1265f445a8d2	active
a034d58f-94c9-46d2-9850-b02c152fbb8b	Personal	\N	2023-08-28 06:41:10.952+00	2023-08-28 06:41:10.952+00	c4ebf5ca-96d5-4b82-a3b7-1c534bf2cd07	active
3be4a313-edd4-4d38-bcbe-1873edd0a8cf	Business	\N	2023-08-28 06:41:10.952+00	2023-08-28 06:41:10.952+00	c4ebf5ca-96d5-4b82-a3b7-1c534bf2cd07	active
118ece8c-c023-467b-88e6-44123945206d	Personal	\N	2023-09-01 09:17:18.22+00	2023-09-01 09:17:18.22+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	active
e37cd9ad-a3da-462c-bbca-9ceb670e3f7d	Business	\N	2023-09-01 09:17:18.22+00	2023-09-01 09:17:18.22+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	active
c81054e0-f46c-4361-8296-b2eeda40e7c5	Personal	\N	2023-09-01 10:31:11.077+00	2023-09-01 10:31:11.077+00	f6c409e3-7a8e-4626-89c1-90099d9af669	active
4a965589-9b32-4c4b-8105-29932c462ffa	Business	\N	2023-09-01 10:31:11.077+00	2023-09-01 10:31:11.077+00	f6c409e3-7a8e-4626-89c1-90099d9af669	active
2245ad72-39bb-4b97-935f-f43fd9ca20ad	Personal	\N	2023-09-01 10:51:13.43+00	2023-09-01 10:51:13.43+00	f0306322-3348-4c48-82be-6b8b508bbcb9	active
f6ef414e-6758-4a82-b218-fd42f9c5b6c0	Business	\N	2023-09-01 10:51:13.43+00	2023-09-01 10:51:13.43+00	f0306322-3348-4c48-82be-6b8b508bbcb9	active
c255ade4-026e-45bd-9e22-b736cebb15d9	Personal	\N	2023-09-02 12:37:20.087+00	2023-09-02 12:37:20.087+00	9978ddf4-24e0-4bbc-9a7f-0d0ec15d4a02	active
8dd9615a-987b-4368-8b0b-3c6e8e183ad9	Business	\N	2023-09-02 12:37:20.087+00	2023-09-02 12:37:20.087+00	9978ddf4-24e0-4bbc-9a7f-0d0ec15d4a02	active
4dbd3d82-025e-4d56-b5c2-0f7a9dffcba9	Personal	\N	2023-09-08 10:44:04.05+00	2023-09-08 10:44:04.05+00	e8a50789-6197-467b-8de1-cc592dad4f2e	active
c44372fe-2d00-4e9c-a568-4590c625a495	Business	\N	2023-09-08 10:44:04.05+00	2023-09-08 10:44:04.05+00	e8a50789-6197-467b-8de1-cc592dad4f2e	active
ecf13e76-2282-45e0-834d-b37ad83bfeec	Personal	\N	2023-09-08 15:05:02.014+00	2023-09-08 15:05:02.014+00	ee30fa2e-c7ca-46ff-aab8-80319114278a	active
20b388fc-380f-4f05-9c80-e2e3d010f033	Business	\N	2023-09-08 15:05:02.014+00	2023-09-08 15:05:02.014+00	ee30fa2e-c7ca-46ff-aab8-80319114278a	active
b5d6c5ea-dad3-499b-9a42-21a12059d320	Personal	\N	2023-09-08 15:26:11.871+00	2023-09-08 15:26:11.871+00	56bf377f-a070-4b57-afa0-90de85803884	active
434466d3-4d59-4072-841d-f39f9fd51458	Business	\N	2023-09-08 15:26:11.871+00	2023-09-08 15:26:11.871+00	56bf377f-a070-4b57-afa0-90de85803884	active
93daf404-5b23-44a3-96d8-9d079d7dc75f	Personal	\N	2023-09-08 15:36:58.35+00	2023-09-08 15:36:58.35+00	c5268a7c-d098-448c-9655-c19cbea86413	active
114b243a-c9c8-4345-97ee-de442842b10b	Business	\N	2023-09-08 15:36:58.35+00	2023-09-08 15:36:58.35+00	c5268a7c-d098-448c-9655-c19cbea86413	active
757e380f-1e53-496e-be16-d95e3e546610	Personal	\N	2023-09-09 11:28:20.06+00	2023-09-09 11:28:20.06+00	e0c54801-0f69-4a9a-8cc2-8fb17de41358	active
e862e0b8-3576-450f-84e3-1e51c2a8d7eb	Business	\N	2023-09-09 11:28:20.06+00	2023-09-09 11:28:20.06+00	e0c54801-0f69-4a9a-8cc2-8fb17de41358	active
54cf85a8-2ccb-48f9-81aa-64ef59d54a25	Personal	\N	2023-09-18 14:42:14.294+00	2023-09-18 14:42:14.294+00	511e6dee-3a7b-4d01-9133-c5c587876a29	active
54bc2861-99f9-45d5-ad0a-db428a1a06eb	Business	\N	2023-09-18 14:42:14.294+00	2023-09-18 14:42:14.294+00	511e6dee-3a7b-4d01-9133-c5c587876a29	active
58ae14b6-9578-4834-9a10-67fa9033893c	Personal	\N	2023-09-23 11:49:51.28+00	2023-09-23 11:49:51.28+00	6b926272-8f0f-42c9-9fc1-974da8f2cb36	active
544eb3c5-6bdf-4360-8466-49b17050f4ec	Business	\N	2023-09-23 11:49:51.28+00	2023-09-23 11:49:51.28+00	6b926272-8f0f-42c9-9fc1-974da8f2cb36	active
00bee777-1fc2-4a06-847d-e866e316a4e5	Personal	\N	2023-05-27 10:12:00.764+00	2023-05-27 10:12:00.764+00	\N	active
59ac83ad-9b8b-4a8f-83c2-be83ea19d8f0	Business	\N	2023-05-27 10:12:00.764+00	2023-05-27 10:12:00.764+00	\N	active
0b0cc04e-ed4a-45cc-8c03-07dc17719e68	Personal	\N	2023-05-27 10:16:23.501+00	2023-05-27 10:16:23.501+00	\N	active
e536d6c4-fa48-49f2-bcd5-05a7bac69f5e	Business	\N	2023-05-27 10:16:23.501+00	2023-05-27 10:16:23.501+00	\N	active
65008a60-a6df-419e-90a9-e6134d6fa9b9	Personal	\N	2023-09-27 05:21:40.775+00	2023-09-27 05:21:40.775+00	\N	active
e88c0838-2bdd-4451-bd7a-d7328d0536c1	Business	\N	2023-09-27 05:21:40.775+00	2023-09-27 05:21:40.775+00	\N	active
4479031c-bd91-4aa7-985b-30f5b850271e	Personal	\N	2023-09-27 05:28:18.239+00	2023-09-27 05:28:18.239+00	\N	active
242ced6b-59fb-402b-aaff-2cc1e91df9db	Business	\N	2023-09-27 05:28:18.239+00	2023-09-27 05:28:18.239+00	\N	active
f9e1dbab-965b-46cc-a5b0-76de517f2f1d	Personal	\N	2023-09-27 05:29:33.191+00	2023-09-27 05:29:33.191+00	\N	active
65c9acc5-673b-4431-9d70-f5854ca2b757	Business	\N	2023-09-27 05:29:33.191+00	2023-09-27 05:29:33.191+00	\N	active
52c17442-318a-40d3-ab34-62e2022540f0	Personal	\N	2023-09-27 05:30:55.688+00	2023-09-27 05:30:55.688+00	\N	active
d2f97d7b-f199-487c-8125-5a883ab5a567	Business	\N	2023-09-27 05:30:55.688+00	2023-09-27 05:30:55.688+00	\N	active
c579383b-e021-4a37-afeb-916100020831	Personal	\N	2023-09-27 05:43:53.075+00	2023-09-27 05:43:53.075+00	\N	active
4ad8b947-a9b4-4dc6-9f09-dea022e335a1	Business	\N	2023-09-27 05:43:53.075+00	2023-09-27 05:43:53.075+00	\N	active
d1dfe8af-f729-4ed2-9c8d-1e6f58aa9b99	Personal	\N	2023-09-27 05:52:42.08+00	2023-09-27 05:52:42.08+00	\N	active
e31b8e82-8385-42e6-90dc-bb2fa3983779	Business	\N	2023-09-27 05:52:42.08+00	2023-09-27 05:52:42.08+00	\N	active
2bd27a59-3938-47fb-8e88-2850c60139f2	Personal	\N	2023-09-27 06:04:36.913+00	2023-09-27 06:04:36.913+00	\N	active
d839c84b-7ead-4c80-827f-e6bb02ab0ec6	Business	\N	2023-09-27 06:04:36.913+00	2023-09-27 06:04:36.913+00	\N	active
b55aa7e8-a18f-4833-94f6-648ed021f8fa	Personal	\N	2023-09-27 06:07:11.452+00	2023-09-27 06:07:11.452+00	\N	active
bf8a9d07-9218-4871-9182-32ea9714828d	Business	\N	2023-09-27 06:07:11.452+00	2023-09-27 06:07:11.452+00	\N	active
95b57c13-9737-4e9c-aa3e-379b28ec1fe0	Personal	\N	2023-09-27 06:11:29.711+00	2023-09-27 06:11:29.711+00	\N	active
70435a07-a396-4bc9-9812-31c1677a41e7	Business	\N	2023-09-27 06:11:29.711+00	2023-09-27 06:11:29.711+00	\N	active
527f6954-abec-4cac-8c00-33df7a22138c	Personal	\N	2023-09-27 06:18:10.496+00	2023-09-27 06:18:10.496+00	\N	active
3257c5f5-c4b9-4a7c-90b8-d7cff1d1e53c	Business	\N	2023-09-27 06:18:10.496+00	2023-09-27 06:18:10.496+00	\N	active
b424174e-0261-46ed-84fa-5b61d60f2bee	Personal	\N	2023-09-27 06:19:34.045+00	2023-09-27 06:19:34.045+00	\N	active
5ede76e0-a8ab-4c08-b9a2-e372c398b07e	Business	\N	2023-09-27 06:19:34.045+00	2023-09-27 06:19:34.045+00	\N	active
b1749a04-f3f7-4b87-8556-ecfe77db62b2	Personal	\N	2023-09-27 06:20:18.964+00	2023-09-27 06:20:18.964+00	\N	active
a75b3dda-b149-48b3-ae30-43aee2b813e0	Business	\N	2023-09-27 06:20:18.964+00	2023-09-27 06:20:18.964+00	\N	active
da25451c-1a11-48fe-bbbb-de20697f7319	Personal	\N	2023-09-27 06:33:45.971+00	2023-09-27 06:33:45.971+00	\N	active
9a004d95-18d0-463d-8463-48352637230a	Business	\N	2023-09-27 06:33:45.971+00	2023-09-27 06:33:45.971+00	\N	active
fbf9554a-1f91-4104-a5c2-6a0cea3fc10c	Personal	\N	2023-09-27 06:35:16.461+00	2023-09-27 06:35:16.461+00	\N	active
0d024f05-878c-4101-8e12-b2ca3ea454f0	Business	\N	2023-09-27 06:35:16.461+00	2023-09-27 06:35:16.461+00	\N	active
10a39c3d-7425-483f-9258-007bb6be6e10	Personal	\N	2023-09-27 06:37:31.208+00	2023-09-27 06:37:31.208+00	\N	active
29a1e5cb-df07-4804-8091-b995c6bd896c	Business	\N	2023-09-27 06:37:31.208+00	2023-09-27 06:37:31.208+00	\N	active
cbb9db05-e8c9-4176-ab9e-82467d79307e	Personal	\N	2023-09-27 06:42:29.456+00	2023-09-27 06:42:29.456+00	\N	active
9216e9e3-c3a9-45c0-b75b-c54cc30bca50	Business	\N	2023-09-27 06:42:29.456+00	2023-09-27 06:42:29.456+00	\N	active
930577b6-fe4b-4563-9b3a-7467f9a29474	Personal	\N	2023-09-27 06:54:48.368+00	2023-09-27 06:54:48.368+00	\N	active
0107bb80-7017-4696-b4bc-7ada5a0ddb37	Business	\N	2023-09-27 06:54:48.368+00	2023-09-27 06:54:48.368+00	\N	active
8328c79c-3fff-40ac-9226-882ce721cae5	Personal	\N	2023-09-27 07:08:57.261+00	2023-09-27 07:08:57.261+00	\N	active
1d778bd4-f42e-437f-85b7-ac4d9fc04098	Business	\N	2023-09-27 07:08:57.261+00	2023-09-27 07:08:57.261+00	\N	active
288c51d8-4bca-4cb8-a484-b8d253b545b7	Personal	\N	2023-09-27 08:01:12.564+00	2023-09-27 08:01:12.564+00	\N	active
e2120484-5798-4439-9838-853afe1b4bfb	Business	\N	2023-09-27 08:01:12.564+00	2023-09-27 08:01:12.564+00	\N	active
11220016-5665-418f-a82c-023c4d0f0776	Personal	\N	2023-09-27 09:20:12.325+00	2023-09-27 09:20:12.325+00	\N	active
3f0cdb2f-4867-4fed-a3d7-f6bb3bf5b6cd	Business	\N	2023-09-27 09:20:12.325+00	2023-09-27 09:20:12.325+00	\N	active
82b33564-e8dc-498f-ac27-71fcc130ea3b	Personal	\N	2023-09-27 09:23:39.571+00	2023-09-27 09:23:39.571+00	\N	active
c3eec78c-a1f9-4ad7-a4b9-5b74cb7f3a59	Business	\N	2023-09-27 09:23:39.571+00	2023-09-27 09:23:39.571+00	\N	active
f056cf4d-cb4b-4acf-a0bd-8e55b18a7cc9	Personal	\N	2023-09-27 09:32:09.588+00	2023-09-27 09:32:09.588+00	\N	active
c0eeac08-8a52-4322-b40e-99a8c11a45d7	Business	\N	2023-09-27 09:32:09.588+00	2023-09-27 09:32:09.588+00	\N	active
dfd1011e-ff8e-4b8e-bfb0-b4bb0fde3dae	Personal	\N	2023-09-27 09:44:12.934+00	2023-09-27 09:44:12.934+00	\N	active
a1ead57e-8011-4c23-913b-f7484f2bf050	Business	\N	2023-09-27 09:44:12.934+00	2023-09-27 09:44:12.934+00	\N	active
f545a6b7-5bc9-4fdd-bea5-7ed75bfef660	Personal	\N	2023-09-27 12:09:26.112+00	2023-09-27 12:09:26.112+00	\N	active
dba3747a-ab91-4253-9687-d5ed598f1b11	Business	\N	2023-09-27 12:09:26.112+00	2023-09-27 12:09:26.112+00	\N	active
ca278d39-4b46-4b0d-8bf4-1786c1527e75	Personal	\N	2023-09-27 12:47:24.156+00	2023-09-27 12:47:24.156+00	\N	active
0cf7c6ce-be12-49ac-a8d8-6810a3e2cb11	Business	\N	2023-09-27 12:47:24.156+00	2023-09-27 12:47:24.156+00	\N	active
5d11044d-646e-441e-9089-52dbbc81dede	Personal	\N	2023-09-27 12:49:20.873+00	2023-09-27 12:49:20.873+00	6b3ebe54-1049-4235-85f1-02a3c5d18432	active
bf49077f-7f50-48a6-ae48-ccf033d33ae5	Business	\N	2023-09-27 12:49:20.873+00	2023-09-27 12:49:20.873+00	6b3ebe54-1049-4235-85f1-02a3c5d18432	active
dfc4c8f6-109b-4a77-bb8b-d57c2f4a42b2	Personal	\N	2023-10-03 07:38:16.527+00	2023-10-03 07:38:16.527+00	1598fe0f-e1fe-4fe8-a892-90471e72fdc2	active
56273ffb-ecea-465d-a8ee-960173d5af08	Business	\N	2023-10-03 07:38:16.527+00	2023-10-03 07:38:16.527+00	1598fe0f-e1fe-4fe8-a892-90471e72fdc2	active
\.


--
-- Data for Name: PennyWise_budgets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_budgets" ("id", "title", "amount", "description", "created_at", "updated_at", "user_id", "account_id") FROM stdin;
\.


--
-- Data for Name: PennyWise_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_categories" ("id", "title", "description", "color", "created_at", "updated_at", "user_id", "status", "icon", "type") FROM stdin;
fe433a8c-1638-467e-a5d6-6587c2cf9d74	Travel	Here is the travel agency	#FF0000	2023-01-30 06:17:26.305+00	2023-01-30 06:17:26.305+00	\N	active	\N	\N
c75f6ca4-58e4-438b-af25-30ef59c0df2e	Custom	here is the custom 	#FFC0CB	2023-01-30 05:26:00.588+00	2023-01-30 05:26:00.588+00	\N	active	\N	\N
fe6e81a8-4ebf-4071-a66a-da035ece0cd8	Custom		#9ce7e8	2023-01-27 14:53:29.316+00	2023-01-27 14:53:29.316+00	\N	active	\N	\N
13824368-6501-4da6-944d-738f93e55874	Utilities		#655b77	2023-01-27 14:52:12.664+00	2023-01-27 14:52:12.664+00	\N	active	\N	\N
ce48d1fa-9c05-4752-ad94-88805a50d8c1	Transport		#f6ad85	2023-01-27 14:50:07.658+00	2023-01-27 14:50:07.658+00	\N	active	\N	\N
aa3ce70f-ab1c-41e2-8c15-98605fff663c	Property		#bbe3b6	2023-01-27 14:47:18.78+00	2023-01-27 14:47:18.78+00	\N	active	\N	\N
ecf0b781-708d-4680-a5cf-530ed6873275	Others		#bf96b8	2023-01-27 14:45:20.429+00	2023-01-27 14:45:20.429+00	\N	active	\N	\N
35a0c739-1785-41b0-a499-f04c42468d65	Office		#c3ebea	2023-01-27 14:44:50.694+00	2023-01-27 14:44:50.694+00	\N	active	\N	\N
0b4c9508-3d78-4407-807e-67381910a88d	Misc		#a37fc1	2023-01-27 14:44:07.598+00	2023-01-27 14:44:07.598+00	\N	active	\N	\N
31721b9e-490b-4685-995a-1d9beeac603e	Memberships	Netflix memberships	#82eef2	2023-02-21 10:17:57.649+00	2023-02-21 10:17:57.649+00	\N	active	\N	\N
ddab0be9-f1b7-45a5-a7cb-b48a5e518563	Creditcard		#00cba8	2023-01-27 14:33:58.015+00	2023-01-27 14:33:58.015+00	\N	active	\N	\N
140e3dbb-319f-449d-bbcd-323c7ac064a3	Shopping		#e2bd95	2023-01-27 14:32:01.179+00	2023-01-27 14:32:01.179+00	\N	active	\N	\N
45d2f57b-3e20-408a-9513-e3041fba5764	Medical		#4d9e1f	2023-01-27 14:43:24.816+00	2023-01-27 14:43:24.816+00	\N	active	\N	\N
60ce6fa2-8b87-4ec7-8065-620b996cd58b	Loan		#82a965	2023-01-27 14:42:39.387+00	2023-01-27 14:42:39.387+00	\N	active	\N	\N
ccaa95ec-ef8c-4463-aabe-520c8de8e4e1	Fitness		#e5b470	2023-01-27 14:41:43.204+00	2023-01-27 14:41:43.204+00	\N	active	\N	\N
707463c7-df11-4a56-9b63-995b31fde404	Groceries		#ebf50b	2023-01-27 14:40:43.182+00	2023-01-27 14:40:43.182+00	\N	active	\N	\N
bb5ec419-0c6c-43b2-b185-234f50005495	Petcares	Pet bathing soaps 	#000000	2023-02-02 06:33:25.745+00	2023-03-10 10:28:37.853+00	\N	active	\N	\N
bb9a74ce-1f00-4534-821a-d933eb3bbee4	Memberships	Netflix memberships	#82eef2	2023-02-09 12:21:38.087+00	2023-02-09 12:23:12.196+00	\N	active	\N	\N
5f30129e-36ee-444a-9457-713879700cb4	Car	Car light wiring	#9fd5ea	2023-02-09 11:45:12.208+00	2023-02-09 11:47:19.156+00	\N	active	\N	\N
4832a4a2-454d-4c6e-a25d-fcc835f68f8f	Donating	charitable gifts	#e896cb	2023-02-09 11:24:37.879+00	2023-02-09 11:24:37.879+00	\N	active	\N	\N
6d5297ea-17ad-4645-8ea9-a104db033681	Investment	wifi bill updated	#b0d66f	2023-02-03 13:41:56.174+00	2023-02-03 15:33:44.317+00	\N	active	\N	\N
a40ec691-a363-4bad-bafd-032f8529634d	Gaming	gaming headphones	#e0e24a	2023-02-09 11:15:02.179+00	2023-02-28 10:15:51.409+00	\N	active	\N	\N
d64260c0-dd14-48eb-838e-e6e732a5933b	income	this is the income\n	#000000	2023-02-02 14:12:31.872+00	2023-02-02 14:12:31.872+00	\N	active	\N	\N
694eb052-581b-40de-ad44-0497575e0f55	Travel	this is the travel agency	#eabaf6	2023-01-27 14:50:44.464+00	2023-01-30 06:35:28.159+00	\N	active	\N	\N
c5dece12-5f08-4163-b7f4-a8a9df64a3f0	Gift		#f46a44	2023-01-27 14:39:48.473+00	2023-01-27 14:39:48.473+00	\N	active	\N	\N
ceca8c1d-a8cd-4425-b1a1-1791ecabdebe	Gadget		#2ca3e8	2023-01-27 14:39:06.694+00	2023-01-27 14:39:06.694+00	\N	active	\N	\N
bea58b40-a728-4df5-9677-4ef07693bbcb	Furniture		#dbf713	2023-01-27 14:38:29.888+00	2023-01-27 14:38:29.888+00	\N	active	\N	\N
8ac561f3-0a89-4b73-8b6f-bcb31ee6d386	Entertainment		#ff37d6	2023-01-27 14:37:37.199+00	2023-01-27 14:37:37.199+00	\N	active	\N	\N
64b66da6-e696-4bd1-a8c7-f85a76925c26	Education		#b35900	2023-01-27 14:36:54.954+00	2023-01-27 14:36:54.954+00	\N	active	\N	\N
ea8bf55f-7741-430c-b93d-76fbff891865	Eating		#eecce3	2023-01-27 14:36:04.944+00	2023-01-27 14:36:04.944+00	\N	active	\N	\N
18dc919f-b9c6-4f6a-9809-a1ffc967c3fa	Childcare		#dbadea	2023-01-27 14:31:19.174+00	2023-01-27 14:31:19.174+00	\N	active	\N	\N
312d6206-e8c9-4598-a2ae-ea66e0f23a40	Charity		#6beda6	2023-01-27 14:30:11.962+00	2023-01-27 14:30:11.962+00	\N	active	\N	\N
3d71d2aa-feee-4a4d-9d7a-c90a8ccb907e	Cash		#22c9c9	2023-01-27 14:28:58.068+00	2023-01-27 14:28:58.068+00	\N	active	\N	\N
dadecb99-e84f-460b-8a0f-4d0430f10a1a	Bank		#2d0707	2023-01-27 14:28:06.474+00	2023-01-27 14:28:06.474+00	\N	active	\N	\N
b92f8d48-817d-4f25-8e3f-b58d7a380ba2	Memberships	Netflix memberships	#82eef2	2023-02-21 10:19:01.105+00	2023-02-21 10:19:01.105+00	\N	active	\N	\N
7ad2fee6-523c-4155-8f47-16bb8a73ac4b	Petcare	Purchase animals foods	#2e9b66	2023-03-10 09:55:38.877+00	2023-03-11 17:16:50.591+00	8959aaa0-7169-46cc-b012-3a7cf3c5a9b3	active	\N	\N
2a1031ef-0bed-4bfc-a421-86b61250978f	Refund	This is a income	#787D12	2023-03-21 09:30:49.158+00	2023-03-21 09:30:49.158+00	\N	active	\N	\N
94fb9003-bb0b-4a00-8fad-32df2aace95c	Freelencing	this is freelencing accounting	#b0d66f	2023-02-09 10:39:13.665+00	2023-02-09 10:39:13.665+00	\N	active	freelence	\N
21a89ab3-f38c-4fce-9514-c6635720f5ee	Refund	This is a income	#787D12	2023-05-09 10:44:56.082+00	2023-05-09 10:44:56.082+00	b599d4e2-5ab8-4743-909d-b47d1d5fb21a	active	refund	\N
e014525d-c511-4681-acc5-fecddd9a1e74	Refund	This is a income	#787D12	2023-05-09 10:48:04.866+00	2023-05-09 10:48:04.866+00	\N	active	refund	\N
826f5af8-dd6b-48fc-bc4f-1ca54fc4c01c	Rent		#30b3ff	2023-01-27 14:47:57.126+00	2023-01-27 14:47:57.126+00	\N	active	car-rental	\N
ef9d1ec0-ce99-4f00-afc9-fe6c9b215c5a	AIM  	\N	#6DECE0	2023-06-08 06:36:54.233+00	2023-06-08 06:36:54.233+00	46bf77df-2771-4512-8241-89649ab0aa85	active	\N	1
493493b0-fb00-45a8-bdcc-fa0eaf8b7dca	Automobile		#A9442F	2023-01-27 14:26:57.126+00	2023-01-27 14:26:57.126+00	\N	active	\N	0
a47895a8-77bb-44f5-88f6-56bc6fa35a97	Refund Category	\N	#6DECE0	2023-06-08 06:30:43.359+00	2023-09-08 11:51:06.973+00	e8a50789-6197-467b-8de1-cc592dad4f2e	active	\N	0
11fe4aad-ee39-42ae-8517-15942abbdbd6	Groceriessss	Car maintenance	#36454F	2023-09-08 11:52:33.249+00	2023-09-08 11:52:33.249+00	\N	active	shopping-bag	0
429c2100-ca7e-43b9-b07e-c90a73b199e7	Grocery	Car maintenance	#36454F	2023-09-08 15:09:18.394+00	2023-09-08 15:09:18.394+00	ee30fa2e-c7ca-46ff-aab8-80319114278a	active	shopping-bag	0
\.


--
-- Data for Name: PennyWise_budget_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_budget_items" ("id", "budget_id", "percentage", "created_at", "updated_at", "category_id") FROM stdin;
\.


--
-- Data for Name: PennyWise_fcm_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_fcm_tokens" ("id", "fcm_token", "device_info", "created_at", "updated_at", "user_id") FROM stdin;
2f93e686-58f1-4311-bd7a-e6d905c8eb3f	c3pWiETHSHmpDmpVo4qEJ7:APA91bFplAameNBM8wrxA9NqXfufcwxIJflVT-gHD886a1w6vCj0suMiMths6ZKZtwij6ghWJQbzF8Sr-LMmQZRqsTlP7Lua-H2aE2ISsPxgs1gbTYUXbnvs_LDQZE9cXGuOLqtd4pjd1	iiiii	2023-04-13 13:17:28.294+00	2023-04-13 17:23:28.049+00	b599d4e2-5ab8-4743-909d-b47d1d5fb21a
a3fa3528-da40-4368-a5bc-0e0e2d47b0a6	dvRDUD0qRf26AWXQEVpnKw:APA91bEarb983Dna8S449-SoO8ECQmHbegVfmXs5gRGGyVk9NpsTYdAQodhUypKO5dKH2L7CZtOpMpO23HAKzhG8dDxZJbSvb1-fziTkSFFBsMf3TuT72ckKEOQHvkwSjdLRgja7oaAN	{'deviceId':'goldfish_x86_64','device':'emu64x','baseOS':'','manufacturer':'Google','ApiLevel':33,'IpAddress':'10.0.2.16','maxMemory':201326592,'androidId':'00968e1161cb3dd4','usedMemory':341565440,'MacAddress':'','deviceName':'sdk_gphone64_x86_64'}	2023-04-07 15:55:14.775+00	2023-06-07 14:58:43.231+00	8eed2c02-a100-4995-b89e-4a70dcc1cf63
658c8009-3ff2-47e5-96be-1df8ea2f866f	dvRDUD0qRf26AWXQEVpnKw:APA91bEarb983Dna8S449-SoO8ECQmHbegVfmXs5gRGGyVk9NpsTYdAQodhUypKO5dKH2L7CZtOpMpO23HAKzhG8dDxZJbSvb1-fziTkSFFBsMf3TuT72ckKEOQHvkwSjdLRgja7oaAN	{'deviceId':'goldfish_x86_64','device':'emu64x','baseOS':'','manufacturer':'Google','ApiLevel':33,'IpAddress':'10.0.2.16','maxMemory':201326592,'androidId':'00968e1161cb3dd4','usedMemory':341565440,'MacAddress':'','deviceName':'sdk_gphone64_x86_64'}	2023-06-07 15:02:01.914+00	2023-06-07 15:02:01.914+00	46bf77df-2771-4512-8241-89649ab0aa85
\.


--
-- Data for Name: PennyWise_media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_media" ("id", "original_name", "path", "mime_data", "entity_id", "created_at", "updated_at", "key", "user_id") FROM stdin;
\.


--
-- Data for Name: PennyWise_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_transactions" ("id", "amount", "description", "type", "created_at", "updated_at", "user_id", "category_id", "transaction_date", "title", "last_run_date", "budget_id", "status", "account_id", "last_run_date_reminder") FROM stdin;
16f2b916-79e7-4dce-8189-442315926ddd	4100	This is a expense	0	2023-10-03 08:23:36.858+00	2023-10-03 08:23:36.858+00	1598fe0f-e1fe-4fe8-a892-90471e72fdc2	11fe4aad-ee39-42ae-8517-15942abbdbd6	2023-10-05 00:00:00+00	Grocery purchase	\N	\N	\N	dfc4c8f6-109b-4a77-bb8b-d57c2f4a42b2	\N
fa438341-e306-4372-b625-fcf7d80099e6	4200	This is a expense	1	2023-10-03 08:25:23.613+00	2023-10-03 08:25:23.613+00	1598fe0f-e1fe-4fe8-a892-90471e72fdc2	e014525d-c511-4681-acc5-fecddd9a1e74	2023-10-05 00:00:00+00	Refund	\N	\N	\N	dfc4c8f6-109b-4a77-bb8b-d57c2f4a42b2	\N
a8f3727d-8bae-4ea1-bec8-0205e69998fc	1100	This is a expense	0	2023-08-18 06:00:28.985+00	2023-09-01 11:33:00.929+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	3d71d2aa-feee-4a4d-9d7a-c90a8ccb907e	2023-07-10 00:00:00+00	cash withdrwal	\N	\N	\N	\N	\N
19241323-0e7a-40e8-98cd-bc3c5d9b8367	2700	This is a expense	0	2023-08-18 06:00:29.826+00	2023-09-01 11:37:10.898+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	5f30129e-36ee-444a-9457-713879700cb4	2023-07-10 00:00:00+00	cash withdrwal	\N	\N	\N	\N	\N
1b44fced-e13e-4e38-84f0-430212176dce	1900	This is a expense	1	2023-08-17 15:59:35.112+00	2023-08-17 15:59:35.112+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	3d71d2aa-feee-4a4d-9d7a-c90a8ccb907e	2023-07-08 00:00:00+00	cash withdrwal	\N	\N	\N	62d4f1db-c0a5-422f-a38c-32eb2267d093	\N
05dc79a4-6ee2-45f8-a58f-3f9833d799cc	1900	This is a expense	1	2023-08-08 07:28:34.463+00	2023-09-02 12:51:32.865+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	3d71d2aa-feee-4a4d-9d7a-c90a8ccb907e	2023-07-08 00:00:00+00	cash withdrwal	2023-08-17 15:59:35.324+00	\N	\N	62d4f1db-c0a5-422f-a38c-32eb2267d093	2023-09-02 12:51:32.865+00
2de4c5c2-23ae-42fd-bd76-18860b918421	2300	This is a expense	0	2023-08-17 15:59:35.958+00	2023-08-17 15:59:35.958+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	3d71d2aa-feee-4a4d-9d7a-c90a8ccb907e	2023-06-08 00:00:00+00	cash withdrwal	\N	\N	\N	62d4f1db-c0a5-422f-a38c-32eb2267d093	\N
6169228c-90e0-4477-98af-e1994010ec03	2300	This is a expense	0	2023-08-08 10:04:17.503+00	2023-09-02 12:51:35.315+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	3d71d2aa-feee-4a4d-9d7a-c90a8ccb907e	2023-06-08 00:00:00+00	cash withdrwal	2023-08-17 15:59:36.169+00	\N	\N	62d4f1db-c0a5-422f-a38c-32eb2267d093	2023-09-02 12:51:35.314+00
73dcf076-bcde-4939-94b4-4b527c6bac50	4700	This is a expense	0	2023-09-01 11:17:21.732+00	2023-09-02 12:51:46.019+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	a40ec691-a363-4bad-bafd-032f8529634d	2023-05-20 00:00:00+00	cash withdrwal	2023-09-02 12:50:48.023+00	\N	\N	118ece8c-c023-467b-88e6-44123945206d	2023-09-02 12:51:46.019+00
1f757aef-cd2a-4f4a-b39a-ea7f8fc25ccd	1700	This is a income	1	2023-09-01 11:24:42.376+00	2023-09-02 12:51:44.392+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	d64260c0-dd14-48eb-838e-e6e732a5933b	2023-05-20 00:00:00+00	cash withdrwal	\N	\N	\N	\N	2023-09-02 12:51:44.392+00
a3eb8e18-6d96-4c57-83d0-d7af1091c47e	4700	This is a expense	1	2023-09-01 11:18:07.422+00	2023-09-02 12:51:45.203+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	a40ec691-a363-4bad-bafd-032f8529634d	2023-05-20 00:00:00+00	cash withdrwal	\N	\N	\N	\N	2023-09-02 12:51:45.203+00
\.


--
-- Data for Name: PennyWise_notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_notifications" ("id", "description", "title", "created_at", "updated_at", "user_id", "transaction_id", "status") FROM stdin;
c01227da-e757-490c-bcd8-831dbec3c0d4	This is a expense	Repeated income/expense	2023-08-17 15:59:35.747+00	2023-08-17 15:59:35.747+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	05dc79a4-6ee2-45f8-a58f-3f9833d799cc	unread
97494c9a-c6ef-49fd-8f39-1dfccea8a90c	This is a expense	Repeated income/expense	2023-08-17 15:59:36.587+00	2023-08-17 15:59:36.587+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	6169228c-90e0-4477-98af-e1994010ec03	unread
aa2e06d1-cf42-4e85-8c6b-99c337ed18fa	This is a expense	Repeated income/expense	2023-09-02 12:50:48.539+00	2023-09-02 12:50:48.539+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	73dcf076-bcde-4939-94b4-4b527c6bac50	unread
02cb6c53-4b45-4867-9ad6-0b139e8a733b	This is a expense	Reminded income/expense	2023-09-02 12:51:33.138+00	2023-09-02 12:51:33.138+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	05dc79a4-6ee2-45f8-a58f-3f9833d799cc	unread
d2124310-64a5-4977-9061-38fa2998077b	This is a expense	Reminded income/expense	2023-09-02 12:51:35.585+00	2023-09-02 12:51:35.585+00	78533c97-7d6a-44f2-b4e9-c4abf9360300	6169228c-90e0-4477-98af-e1994010ec03	unread
acc46bad-40cf-450f-9c18-ef1c2b1d60a8	This is a income	Reminded income/expense	2023-09-02 12:51:44.663+00	2023-09-02 12:51:44.663+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	1f757aef-cd2a-4f4a-b39a-ea7f8fc25ccd	unread
1a10b4d3-f7a0-40c4-bb53-6ae8e8d564d1	This is a expense	Reminded income/expense	2023-09-02 12:51:45.474+00	2023-09-02 12:51:45.474+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	a3eb8e18-6d96-4c57-83d0-d7af1091c47e	unread
8eb71711-6237-44a5-800d-fb017276f166	This is a expense	Reminded income/expense	2023-09-02 12:51:46.29+00	2023-09-02 12:51:46.29+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487	73dcf076-bcde-4939-94b4-4b527c6bac50	unread
\.


--
-- Data for Name: PennyWise_subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_subscriptions" ("id", "created_at", "updated_at", "user_id", "platform", "expire_date", "product_id", "plan_type", "transaction_data", "auto_renewal", "transaction_date", "transaction_id", "price", "currency", "country_code", "localized_price") FROM stdin;
ab99bbda-b9bd-42c5-96e7-bc1fa9dac6fa	2023-10-10 10:10:35.566+00	2023-10-10 10:38:24.253+00	1598fe0f-e1fe-4fe8-a892-90471e72fdc2	android	2024-11-29	sub_no_02	Semi-annual	{"piecodes": {"price": "₹570.00", "currency": "INR", "platform": "android", "device_info": "{\\"deviceId\\":\\"merlin\\",\\"device\\":\\"merlin\\",\\"baseOS\\":\\"\\",\\"manufacturer\\":\\"Xiaomi\\",\\"ApiLevel\\":30,\\"IpAddress\\":\\"192.168.1.7\\",\\"maxMemory\\":268435456,\\"androidId\\":\\"cbd3ef8967c7b38d\\",\\"usedMemory\\":477420544,\\"MacAddress\\":\\"\\",\\"deviceName\\":\\"Redmi Note 9\\"}", "localizedPrice": "₹590.00"}, "productId": "sub_no_02", "productIds": ["sub_no_02"], "dataAndroid": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1696859688034,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "purchaseToken": "loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ", "transactionId": "GPA.3317-6943-9198-09508", "transactionDate": 1716977163, "signatureAndroid": "cQw7dp7BVcJrl3ysbZOx84zD9bpzvmUb7kEpRaKl8ieBR60Z+p2mylxbLHSzJVyDkChMQSK6guiH5OX3bx3yNYPMIwhSI7rjTa2MfBk5EPVoLA+CEGybwl9CLXFggXInxRjjNdlgejXaKxY0xPJdS8XHsibkpf5bM+brxHyagXPuOG+QSWgrAZGpCHBtOIn8boridzYAg+KUybxIdZOKcN0d31ud5aCynBDU+pODaT2ZZwLljFNMJ2XjR9uS94XDRU/FQWSQwYrYrXSZOz1LScl0hB18BSbji7RAST3G8g2WzDNJ2dNgRhvKj16mMnKqvtBnGA5x0PO+bTci9XCgEA==", "packageNameAndroid": "com.pennywises.app", "transactionReceipt": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1699599161,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "autoRenewingAndroid": true, "purchaseStateAndroid": 1, "isAcknowledgedAndroid": false, "developerPayloadAndroid": "", "obfuscatedAccountIdAndroid": "", "obfuscatedProfileIdAndroid": ""}	t	1970-01-20 20:56:17.163+00	GPA.3317-6943-9198-09508	₹570.00	INR	\N	₹590.00
ecd1a65a-10ec-4a8c-95a5-6aa3a2620020	2023-10-11 12:29:52.637+00	2023-10-11 12:29:52.637+00	1598fe0f-e1fe-4fe8-a892-90471e72fdc2	ios	2024-10-06	sub_no_03	Annual	{"piecodes": {"type": "iap", "price": "9.99", "title": "annual", "currency": "USD", "platform": "ios", "discounts": [], "productId": "sub_no_03", "countryCode": "USA", "description": "Billed annually.", "device_info": "{\\"deviceId\\":\\"iPhone13,1\\",\\"device\\":\\"unknown\\",\\"baseOS\\":\\"unknown\\",\\"manufacturer\\":\\"Apple\\",\\"ApiLevel\\":-1,\\"IpAddress\\":\\"192.168.1.19\\",\\"maxMemory\\":-1,\\"androidId\\":\\"unknown\\",\\"usedMemory\\":131039232,\\"MacAddress\\":\\"02:00:00:00:00:00\\",\\"deviceName\\":\\"iPhone\\"}", "localizedPrice": "$5.99", "introductoryPrice": "", "subscriptionPeriodUnitIOS": "", "subscriptionPeriodNumberIOS": "0", "introductoryPriceAsAmountIOS": "", "introductoryPricePaymentModeIOS": "", "introductoryPriceNumberOfPeriodsIOS": "", "introductoryPriceSubscriptionPeriodIOS": ""}, "productId": "sub_no_03", "transactionId": "2000000429884337", "transactionDate": 1696602574000, "transactionReceipt": "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"}	\N	2023-10-06 14:29:34+00	2000000429884337	9.99	USD	USA	$5.99
\.


--
-- Data for Name: PennyWise_payments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_payments" ("id", "amount", "status", "payment_mode", "payment_data", "created_at", "updated_at", "subscription_id", "user_id") FROM stdin;
\.


--
-- Data for Name: PennyWise_reminders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_reminders" ("id", "status", "created_at", "updated_at", "user_id", "transaction_id", "remind_at") FROM stdin;
\.


--
-- Data for Name: PennyWise_schedules; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_schedules" ("id", "frequency", "repeat_on", "created_at", "updated_at", "transaction_id", "user_id", "status") FROM stdin;
ed63efb5-6f5a-40bf-879f-cca414967f46	\N	\N	2023-02-08 12:36:04.791+00	2023-02-08 12:36:04.791+00	\N	\N	\N
77c42ca6-5bb9-476b-8409-68513b56c5f1	\N	\N	2023-02-20 09:04:15.17+00	2023-02-20 09:04:15.17+00	\N	\N	\N
3e109395-ccb0-4abe-b526-e2cf6503a4f3	\N	\N	2023-02-09 10:32:55.057+00	2023-02-09 10:32:55.057+00	\N	\N	\N
38605026-c335-4b4e-bb91-bf6df2541b7e	\N	\N	2023-02-24 11:56:57.06+00	2023-02-24 11:56:57.06+00	\N	\N	\N
9cfed93c-9d2d-40f7-8229-3b8bfd85a871	\N	\N	2023-02-16 14:27:13.69+00	2023-02-16 14:27:13.69+00	\N	\N	
ec329c50-c7b6-4611-b580-ca590fc0f001	\N	\N	2023-03-24 11:33:14.606+00	2023-03-24 11:33:14.606+00	\N	\N	active
b14140e6-c28b-4ad6-b183-f83709c08c43	\N	\N	2023-04-08 11:48:44.287+00	2023-04-08 11:48:44.287+00	\N	\N	active
b75ab7e9-4d0a-45b5-bd5c-179790a398ee	\N	\N	2023-02-16 14:24:00.316+00	2023-02-16 14:24:00.316+00	\N	\N	\N
6dbcfcef-cad8-40a5-84a0-a6dd425e482c	\N	\N	2023-02-15 18:23:43.264+00	2023-02-15 18:23:43.264+00	\N	\N	\N
d58b825a-b57e-4893-aca0-28fb9a1ff1c9	\N	\N	2023-02-16 14:29:13.273+00	2023-02-16 14:29:13.273+00	\N	\N	\N
f5f62254-7f9e-4cc8-abe2-ca5a726c63f1	\N	\N	2023-02-16 14:49:07.983+00	2023-02-16 14:49:07.983+00	\N	\N	\N
49754a16-304b-4b3e-8304-2b8dd5ca3d98	days	tuesday	2023-02-03 15:06:11.467+00	2023-02-03 15:48:08.653+00	\N	\N	\N
0ca6d934-ca64-475c-95f4-dd32319d8ac5	\N	\N	2023-02-03 15:53:31.607+00	2023-02-03 15:53:31.607+00	\N	\N	\N
af0c659c-0bb5-4907-b3eb-f1c993f1b8e3	\N	\N	2023-02-24 13:01:33.46+00	2023-02-24 13:01:33.46+00	\N	\N	\N
940038fa-9c53-4530-9102-27e60ecf1809	\N	\N	2023-02-24 13:23:38.501+00	2023-02-24 13:23:38.501+00	\N	\N	\N
6d40dc66-4e07-4db0-b462-d436fed797b9	\N	\N	2023-02-25 10:15:07.429+00	2023-02-25 10:15:07.429+00	\N	\N	\N
7ae7231e-125c-4e87-8601-51ead5f824c8	\N	\N	2023-02-28 14:24:54.008+00	2023-02-28 14:24:54.008+00	\N	\N	\N
989a2a09-88fb-405a-8e28-67a1a255e206	weeks	tuesday	2023-02-28 14:28:03.424+00	2023-02-28 14:28:03.424+00	\N	b599d4e2-5ab8-4743-909d-b47d1d5fb21a	active
198c9d57-f949-4acc-90f9-7e5ceb2b1387	\N	\N	2023-03-24 15:53:19.755+00	2023-03-24 15:53:19.755+00	\N	\N	active
2a8fffbc-eddd-4bcb-86bf-e1e91d704744	\N	\N	2023-03-28 14:45:23.019+00	2023-03-28 14:45:23.019+00	\N	\N	active
214b014c-a5b7-4092-9ebb-f30e7d95958b	\N	\N	2023-03-23 11:16:50.226+00	2023-03-23 11:16:50.226+00	\N	\N	active
e2da8df7-e03d-4c64-bf47-fe12b5d6fc2a	\N	\N	2023-03-20 13:26:15.79+00	2023-03-20 13:26:15.79+00	\N	\N	active
589a2b10-b97f-4c77-982c-10f6a7f6eeb9	\N	\N	2023-03-20 13:28:53.892+00	2023-03-20 13:28:53.892+00	\N	\N	active
84de3236-3707-4969-b955-5987070ce919	\N	\N	2023-04-08 11:57:49.602+00	2023-04-08 11:57:49.602+00	\N	\N	active
3a059572-b0e4-4d30-a1d4-322dd82633ec	\N	\N	2023-04-08 12:26:44.324+00	2023-04-08 12:26:44.324+00	\N	\N	active
52725541-1166-484a-aabc-ca2d52a876f9	\N	\N	2023-04-12 06:59:10.099+00	2023-04-12 06:59:10.099+00	\N	\N	active
cd8040eb-be16-4c86-8b80-81236393ebd2	\N	\N	2023-04-12 08:12:47.895+00	2023-04-12 08:12:47.895+00	\N	\N	active
c2690a16-9fdc-4ba4-8df2-5a3c271e7692	\N	\N	2023-04-06 12:49:02.162+00	2023-04-06 12:49:02.162+00	\N	\N	active
c8370bb8-bcae-4378-8f6b-b2aa1be264bd	\N	\N	2023-03-17 14:02:01.284+00	2023-03-17 14:02:01.284+00	\N	\N	active
de73242b-ee1e-4408-b66e-521fa6f3e713	\N	\N	2023-03-17 13:06:00.66+00	2023-03-17 13:06:00.66+00	\N	\N	active
71c037f4-4d55-4ffc-8f45-598e8cf500f8	\N	\N	2023-03-17 13:24:52.117+00	2023-03-17 13:24:52.117+00	\N	\N	active
8c87fe24-ea02-49a6-ac85-bd63bd3044fe	\N	\N	2023-03-17 13:27:12.7+00	2023-03-17 13:27:12.7+00	\N	\N	active
59b07339-64b8-4ee9-ab8e-80b2f9bf7940	\N	\N	2023-03-17 13:38:54.276+00	2023-03-17 13:38:54.276+00	\N	\N	active
63d6beb7-035b-4394-a2c2-6a1bd67993ff	\N	\N	2023-04-12 15:03:41.219+00	2023-04-12 15:03:41.219+00	\N	\N	active
2ebbaec7-33bd-46b0-bfd6-d8b792857521	\N	\N	2023-03-17 09:57:30.527+00	2023-03-17 09:57:30.527+00	\N	\N	active
1b355771-cbf0-4f57-9d1e-6504b209b317	\N	\N	2023-03-17 13:33:20.628+00	2023-03-17 13:33:20.628+00	\N	\N	active
c7cf28e2-2f38-4e17-a426-934d033dc9c6	\N	\N	2023-03-17 09:47:38.099+00	2023-03-17 09:47:38.099+00	\N	\N	active
a123e63b-2cdc-4d54-a5f9-619ea0c739a7	\N	\N	2023-03-17 10:02:09.541+00	2023-03-17 10:02:09.541+00	\N	\N	active
303328cf-841f-44ba-b106-3211b8febe3a	\N	\N	2023-03-17 13:41:24.277+00	2023-03-17 13:41:24.277+00	\N	\N	active
be907d92-0421-4b4c-804f-fbea4da68a39	\N	\N	2023-03-17 13:35:46.928+00	2023-03-17 13:35:46.928+00	\N	\N	active
f2f7ec30-953b-4eac-ade8-6e57523a2459	\N	\N	2023-03-17 13:48:46.307+00	2023-03-17 13:48:46.307+00	\N	\N	active
9fee775c-2278-43e1-88a9-936cc2153668	\N	\N	2023-03-17 13:58:44.46+00	2023-03-17 13:58:44.46+00	\N	\N	active
af39e5ca-3379-4004-8bce-6dda56d4fd1e	\N	\N	2023-03-16 10:08:14.495+00	2023-03-16 10:08:14.495+00	\N	\N	active
6b017ad0-77f6-4976-9621-540a48e5d37b	\N	\N	2023-03-16 10:09:54.765+00	2023-03-16 10:09:54.765+00	\N	\N	active
ed4b6e38-eb7c-4166-bd09-db0d354fe6c7	\N	\N	2023-04-11 09:33:00.877+00	2023-04-11 09:33:00.877+00	\N	\N	active
d872edf1-17c9-4a08-b504-92071e343735	\N	\N	2023-03-16 18:53:29.618+00	2023-03-16 18:53:29.618+00	\N	\N	active
a913d8d3-b0b5-40d9-b79b-79661ee70fc2	\N	\N	2023-05-18 06:32:50.07+00	2023-05-18 06:32:50.07+00	\N	\N	active
a7bfb9d7-c5d7-43f0-847f-eb3714a9123d	\N	\N	2023-05-18 05:21:01.148+00	2023-05-18 05:21:01.148+00	\N	\N	active
adf2b394-80df-4a69-b88c-a5bbd2715237	\N	\N	2023-05-18 06:27:07.186+00	2023-05-18 06:27:07.186+00	\N	\N	active
f42d8743-5973-4735-8eb4-c7a049990a57	\N	\N	2023-05-18 06:26:03.519+00	2023-05-18 06:26:03.519+00	\N	\N	active
32e0cfcc-33cd-4f6b-b0d3-4abbd319a11c	\N	\N	2023-03-17 12:50:10.209+00	2023-03-17 12:50:10.209+00	\N	\N	active
243244dc-dc55-469b-9dcf-99f37351228c	\N	\N	2023-05-18 06:35:23.619+00	2023-05-18 06:35:23.619+00	\N	\N	active
6e927292-a560-4de3-8dbf-3ad0830ed425	\N	\N	2023-03-17 11:27:58.903+00	2023-03-17 11:27:58.903+00	\N	\N	active
c521ac7c-046e-4047-8e5d-c40a9c6b3bd0	\N	\N	2023-05-18 13:17:19.351+00	2023-05-18 13:17:19.351+00	\N	\N	active
8c69714e-80db-4458-a6a5-7a7a72d80866	\N	\N	2023-05-18 14:38:33.33+00	2023-05-18 14:38:33.33+00	\N	\N	active
bcc1e2e9-739f-43b6-b703-93f662faa32e	\N	\N	2023-03-17 13:03:14.148+00	2023-03-17 13:03:14.148+00	\N	\N	active
6b14f2bd-d788-49fd-bc47-3fa6a525945d	\N	\N	2023-03-17 13:08:14.101+00	2023-03-17 13:08:14.101+00	\N	\N	active
4eb84083-f537-4a4f-9d1b-2bf08e121517	\N	\N	2023-03-17 13:17:56.582+00	2023-03-17 13:17:56.582+00	\N	\N	active
81c80a24-315e-4cdd-97cf-c88de4d53097	\N	\N	2023-04-11 19:06:58.743+00	2023-04-11 19:06:58.743+00	\N	\N	active
29c7732d-e6c0-4b06-8e97-6c50d847dc78	\N	\N	2023-04-12 15:02:46.431+00	2023-04-12 15:02:46.431+00	\N	\N	active
442527ac-d368-456c-a56e-5c7b60ee92fd	\N	\N	2023-05-08 10:50:11.835+00	2023-05-08 10:50:11.835+00	\N	\N	active
a5e59ae1-7fd2-45c1-ab98-ef57b5e21106	\N	\N	2023-05-09 12:38:56.525+00	2023-05-09 12:38:56.525+00	\N	\N	active
bc89faef-8dfe-4f7f-a887-0f826c580c79	\N	\N	2023-05-11 05:45:55.92+00	2023-05-11 05:45:55.92+00	\N	\N	active
fb5e8d2e-4019-4051-bfb0-a08d0cfd0afe	\N	\N	2023-05-17 10:38:28.614+00	2023-05-17 10:38:28.614+00	\N	\N	active
644c8ac3-d46f-4220-84fa-9235bf307b7c	\N	\N	2023-05-18 06:43:46.898+00	2023-05-18 06:43:46.898+00	\N	\N	active
c05660e2-5428-4beb-a028-2cc4f292a938	\N	\N	2023-05-18 06:45:15.689+00	2023-05-18 06:45:15.689+00	\N	\N	active
6ce4cc09-a474-4021-b452-2535640ec534	\N	\N	2023-05-18 06:47:13.225+00	2023-05-18 06:47:13.225+00	\N	\N	active
c09d80f3-8ad2-4dd8-aff5-6b4e92e67b24	\N	\N	2023-05-18 06:47:56.968+00	2023-05-18 06:47:56.968+00	\N	\N	active
7f25436a-a460-4b56-a7ca-76643428155d	\N	\N	2023-05-18 06:48:10.248+00	2023-05-18 06:48:10.248+00	\N	\N	active
a0943b56-ecb9-4f8a-a5d7-ffa148d894e6	\N	\N	2023-05-18 07:04:02.902+00	2023-05-18 07:04:02.902+00	\N	\N	active
3268498a-4420-4423-b377-4a985d422366	\N	\N	2023-05-18 07:05:47.479+00	2023-05-18 07:05:47.479+00	\N	\N	active
2d33c4f0-19ab-4fa3-bd57-210daf2e1707	\N	\N	2023-05-18 07:06:18.785+00	2023-05-18 07:06:18.785+00	\N	\N	active
43929807-ad71-4c14-840f-eb6506f2f2ab	\N	\N	2023-05-18 07:06:26.76+00	2023-05-18 07:06:26.76+00	\N	\N	active
5bfc7530-5eaa-408f-a010-dbc796c05e8f	\N	\N	2023-05-18 07:06:45.517+00	2023-05-18 07:06:45.517+00	\N	\N	active
49ece1a6-f2a2-449a-8ab4-d56067550d44	\N	\N	2023-05-18 07:07:10.864+00	2023-05-18 07:07:10.864+00	\N	\N	active
49e9cfbf-273e-45d8-a129-3486d71c65be	\N	\N	2023-05-18 07:07:31.035+00	2023-05-18 07:07:31.035+00	\N	\N	active
66bf8b91-aae6-4703-b6b3-c7ea238a37b4	\N	\N	2023-05-18 07:09:20.84+00	2023-05-18 07:09:20.84+00	\N	\N	active
463bee69-e185-46d7-92dd-f562d10cb84f	\N	\N	2023-05-18 07:09:36.077+00	2023-05-18 07:09:36.077+00	\N	\N	active
753d9ea9-4e32-4de7-807d-a825e2b7274c	\N	\N	2023-05-18 07:10:07.044+00	2023-05-18 07:10:07.044+00	\N	\N	active
7929d541-5b68-4d10-849f-645d112d8f97	\N	\N	2023-05-18 07:23:26.963+00	2023-05-18 07:23:26.963+00	\N	\N	active
662f0167-61c5-4bd8-b1b1-f909564aca5b	\N	\N	2023-05-18 07:23:34.091+00	2023-05-18 07:23:34.091+00	\N	\N	active
a273ec45-dfcd-4645-85bf-dbf7e4caa468	\N	\N	2023-05-18 08:36:48.422+00	2023-05-18 08:36:48.422+00	\N	\N	active
f2bf0d0d-d40a-487d-a31a-321a3a4bac1a	\N	\N	2023-05-18 08:38:53.263+00	2023-05-18 08:38:53.263+00	\N	\N	active
f6b2b102-8380-4553-9cd7-f74c1e70ff39	\N	\N	2023-05-18 08:39:20.02+00	2023-05-18 08:39:20.02+00	\N	\N	active
026a5e22-a1f5-4af1-ba42-63fcd5560d4e	\N	\N	2023-05-18 08:39:44.603+00	2023-05-18 08:39:44.603+00	\N	\N	active
d7cdec7d-7765-45af-8308-8668a8edcf60	\N	\N	2023-05-18 08:39:50.754+00	2023-05-18 08:39:50.754+00	\N	\N	active
38a317c0-9027-45ff-a9ea-ff3f39d5e103	\N	\N	2023-05-18 08:40:49.526+00	2023-05-18 08:40:49.526+00	\N	\N	active
88fcffdd-57ae-4ae2-9331-b256daacb716	\N	\N	2023-05-18 10:29:39.946+00	2023-05-18 10:29:39.946+00	\N	\N	active
2311be68-e6de-492a-9725-c5b7571dc270	\N	\N	2023-05-18 12:18:19.44+00	2023-05-18 12:18:19.44+00	\N	\N	active
7ee9acc8-89a0-4cf8-86d4-d65863bc352a	\N	\N	2023-05-18 13:38:38.87+00	2023-05-18 13:38:38.87+00	\N	\N	active
08b0604d-63fc-4444-9592-bed23c2395e6	\N	\N	2023-05-18 15:30:35.367+00	2023-05-18 15:30:35.367+00	\N	\N	active
b37da8a5-bd1b-4ded-bbef-2f99aa1fcdd6	weeks	tuesday	2023-02-28 11:03:26.23+00	2023-03-15 15:13:41.69+00	\N	\N	active
\.


--
-- Data for Name: PennyWise_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_sessions" ("id", "device_id", "access_token", "created_at", "updated_at", "user_id") FROM stdin;
498dda15-bb56-4d8b-8c0c-9ff6e8dbfd0e	oppof9pro	56b7fd59-7257-4178-93da-7c30d3f93119	2023-08-08 06:55:47.165+00	2023-08-08 06:55:47.165+00	78533c97-7d6a-44f2-b4e9-c4abf9360300
60910f9c-b798-4a02-9a9f-2693444e1d23	oppof9pro	f637b49f-be1e-4b93-a615-0377b29f83d5	2023-08-28 06:41:51.157+00	2023-08-28 06:41:51.157+00	c4ebf5ca-96d5-4b82-a3b7-1c534bf2cd07
8a370d25-2320-4d95-a41a-3dd49adfdfc8	oppof9pro	5e5777b3-3543-4282-98e2-1458dfd2e825	2023-06-01 04:51:47.169+00	2023-06-01 04:51:47.169+00	00291f83-377b-4c30-9dfa-a8ebfc9fab1c
04423f56-122c-4be1-be30-f97ff5fcfc79	oppof9pro	bf5818be-fd82-48b0-995b-6723234ff10b	2023-04-13 17:26:06.844+00	2023-04-13 17:26:06.844+00	5316c741-0641-43fe-bd43-9b224e3aa731
98c5a210-ea07-4da7-be3a-cb1eb7131e7a	oppof9pro	60f43a48-6e99-4b4b-a212-c48b24fa755a	2023-06-02 06:04:07.069+00	2023-06-02 06:04:07.069+00	48d32692-d16a-4efe-a81f-8cd3ad52141e
c12c9dc1-4c34-4162-885c-1233bc3c4d91	oppof9pro	78a8f2d7-3467-4302-ac8f-bc060beb492b	2023-06-07 14:59:58.857+00	2023-06-07 14:59:58.857+00	46bf77df-2771-4512-8241-89649ab0aa85
bbfa5c74-1a54-40be-9c30-69734846596c	oppof9pro	3f7af406-a911-473d-a7fe-c36a90438308	2023-06-09 07:14:06.731+00	2023-06-09 07:14:06.731+00	8223f0f1-9a19-466d-8f5a-b52ce95f03ff
5b33d888-e5f1-4473-aec0-c8eadb6d979d	oppof9pro	aabd37dd-60c7-41a9-a26a-47c59686a7e9	2023-04-07 12:56:56.066+00	2023-04-07 12:56:56.066+00	7234bbf7-190b-418d-9d3d-6fba89bc254c
380c7856-c896-4a19-8103-61f49bf41e84	oppof9pro	3247536f-2a38-4e25-afcf-777acb379dc0	2023-06-09 09:32:34.333+00	2023-06-09 09:32:34.333+00	2fa69c48-67e7-45ae-9dec-8a7ff33a3af6
8ce10343-c9bb-4ad0-8df5-a186ec304fa8	oppof9pro	018685e3-b90e-4997-a9f9-ed2a31cad4bc	2023-09-08 13:17:57.692+00	2023-09-08 13:17:57.692+00	e8a50789-6197-467b-8de1-cc592dad4f2e
bc7d9387-8092-42d7-af71-5707d3997fb5	oppof9pro	4fe2b875-147d-4b1f-9c90-054299fedf10	2023-04-11 18:38:26.886+00	2023-04-11 18:38:26.886+00	8959aaa0-7169-46cc-b012-3a7cf3c5a9b3
194662ca-bd7c-484a-8755-80e0c1b438c9	oppof9pro	f02cef2e-2a32-4f4b-9bd7-565cfdff7037	2023-09-08 15:40:35.202+00	2023-09-08 15:40:35.202+00	ee30fa2e-c7ca-46ff-aab8-80319114278a
cdfd6e96-1267-4749-81ac-f83228c01f76	oppof9pro	f80e207f-e160-4644-b4d9-bf2919bfe672	2023-04-06 14:49:48.723+00	2023-04-06 14:49:48.723+00	edf65f4f-c01f-46fe-b4a0-910bfaea737d
a79328aa-2182-4e48-ab3c-fe65a73a24a5	oppof9pro	a9dc1c5d-3405-430b-92a0-78b0bf7127e9	2023-06-21 07:03:49.84+00	2023-06-21 07:03:49.84+00	2c4d4f22-9b4a-43bc-af3f-c25c4c4fe33d
c77c51d8-21a0-440f-bf52-6d2f2a9d8929	oppof9pro	e2c6ef4b-8760-4198-ab3f-548be118cb7b	2023-09-09 11:28:58.095+00	2023-09-09 11:28:58.095+00	e0c54801-0f69-4a9a-8cc2-8fb17de41358
1a7df409-a4a5-46f2-9774-81af90d4cf6a	oppof9pro	7ad2357d-e1fe-42b6-a542-e1ee8e4a5cee	2023-06-21 07:16:07.452+00	2023-06-21 07:16:07.452+00	689e00f0-ff76-4404-844e-eeafcb0fc042
26af7175-29f8-4297-96d3-5b7e648d9c5a	oppof9pro	0c3bc748-0245-482e-94a8-97fdb353145c	2023-05-10 11:39:26.898+00	2023-05-10 11:39:26.898+00	b599d4e2-5ab8-4743-909d-b47d1d5fb21a
26437326-5c75-4013-9c6b-5af6d21ddf30	oppof9pro	cabf5f80-3aa2-48d6-8e99-36e9726d4f35	2023-09-19 14:14:44.329+00	2023-09-19 14:14:44.329+00	07a954ce-6c81-45ab-8235-09175e417e06
3fdc5145-fefa-4f85-9788-d4ecbf732a5a	oppof9pro	6cc997a8-118c-48cd-8e84-d3f43d8675e5	2023-05-15 06:27:01.862+00	2023-05-15 06:27:01.862+00	29870436-05a6-4283-919f-59f089b1cea9
592f2215-18ce-4031-80d2-fbbd97f8212f	oppof9pro	cce13958-6aeb-4b17-a84c-378ffcfe8b63	2023-05-18 07:25:15.316+00	2023-05-18 07:25:15.316+00	18b6a9d3-26b1-44d2-bee9-a59c096bcda9
a985d805-67fb-4185-9482-a3cb25631f5b	oppof9pro	bb36f88a-ac0e-4d11-8b3b-20a57c79fa77	2023-05-19 17:14:11.27+00	2023-05-19 17:14:11.27+00	0717aa19-3b6b-474b-b3ab-4f11f6aed66d
ae3d980d-79f2-49de-bf38-b49c81f5f50f	oppof9pro	ef7018f2-a46d-4004-93b5-f3d1d3002690	2023-09-23 11:50:39.712+00	2023-09-23 11:50:39.712+00	6b926272-8f0f-42c9-9fc1-974da8f2cb36
3f3cc754-be79-4f8a-bd0b-b77358f298fa	oppof9pro	4f459f6b-5ea6-40d1-999e-bf353730fc86	2023-09-27 12:49:21.43+00	2023-09-27 12:49:21.43+00	6b3ebe54-1049-4235-85f1-02a3c5d18432
62c2494f-cb44-4322-a9b0-491de7fdadfc	oppof9pro	b333ff79-38ae-4ad0-baec-ce5c90211411	2023-09-27 12:50:15.457+00	2023-09-27 12:50:15.457+00	6b3ebe54-1049-4235-85f1-02a3c5d18432
0257f690-41cf-4376-86f1-ed768dca3178	oppof9pro	066202b9-4b89-40c7-b7e1-df347aaa576d	2023-05-26 06:39:46.083+00	2023-05-26 06:39:46.083+00	af6a7cbb-5fb4-4ec6-bc5c-1e7d969b40cf
7a6b585d-47e3-4606-a005-62b4e2f77e82	oppof9pro	f964d4e1-51e6-4d79-a23e-1e1702a19d6e	2023-05-26 06:42:43.734+00	2023-05-26 06:42:43.734+00	de5ef8eb-582a-4f8e-b6d2-3530deebc5e9
75e93503-173a-4eef-8210-56323d4bf2e0	oppof9pro	4c7f3ff8-b4e6-4200-b479-01f065232b69	2023-10-06 11:40:50.604+00	2023-10-06 11:40:50.604+00	511e6dee-3a7b-4d01-9133-c5c587876a29
91c2c196-34dd-4f2c-831b-78622067951c	oppof9pro	a7018100-ba69-47c5-9cee-118887f146f6	2023-05-31 16:02:49.514+00	2023-05-31 16:02:49.514+00	157646bb-8d3b-4bb2-89c8-d7e8944bee4f
6b3b017d-61ea-4112-8c17-d82a44f9e03f	oppof9pro	7faacf43-8517-4463-9949-577b9e382583	2023-08-07 09:00:28.964+00	2023-08-07 09:00:28.964+00	c38f5612-ef98-4f39-9b19-1265f445a8d2
54eb65e9-ea70-4a11-ad0c-fe5bb7ea3c92	oppof9pro	9363e378-d568-4516-8424-4275148d90a9	2023-10-11 12:08:22.287+00	2023-10-11 12:08:22.287+00	1598fe0f-e1fe-4fe8-a892-90471e72fdc2
903e9c06-5256-40f1-9461-67f184c271e3	oppof9pro	89c26f60-de46-417a-8873-6b6f36359b05	2023-10-12 05:05:00.464+00	2023-10-12 05:05:00.464+00	8cccbc7a-d258-4a3f-b8ac-5a39eeeed487
\.


--
-- Data for Name: PennyWise_subscription_transactions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_subscription_transactions" ("id", "created_at", "updated_at", "subscription_id", "transaction_data", "platform", "transaction_date", "price", "localized_price", "currency", "country_code") FROM stdin;
7ee50daa-ab8b-41bd-90ac-0c52ebe454eb	2023-10-10 10:10:36.096+00	2023-10-10 10:10:36.096+00	ab99bbda-b9bd-42c5-96e7-bc1fa9dac6fa	{"piecodes": {"price": "₹570.00", "currency": "INR", "platform": "android", "device_info": "{\\"deviceId\\":\\"merlin\\",\\"device\\":\\"merlin\\",\\"baseOS\\":\\"\\",\\"manufacturer\\":\\"Xiaomi\\",\\"ApiLevel\\":30,\\"IpAddress\\":\\"192.168.1.7\\",\\"maxMemory\\":268435456,\\"androidId\\":\\"cbd3ef8967c7b38d\\",\\"usedMemory\\":477420544,\\"MacAddress\\":\\"\\",\\"deviceName\\":\\"Redmi Note 9\\"}", "localizedPrice": "₹590.00"}, "productId": "sub_no_02", "productIds": ["sub_no_02"], "dataAndroid": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1696859688034,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "purchaseToken": "loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ", "transactionId": "GPA.3317-6943-9198-09508", "transactionDate": 1716977163, "signatureAndroid": "cQw7dp7BVcJrl3ysbZOx84zD9bpzvmUb7kEpRaKl8ieBR60Z+p2mylxbLHSzJVyDkChMQSK6guiH5OX3bx3yNYPMIwhSI7rjTa2MfBk5EPVoLA+CEGybwl9CLXFggXInxRjjNdlgejXaKxY0xPJdS8XHsibkpf5bM+brxHyagXPuOG+QSWgrAZGpCHBtOIn8boridzYAg+KUybxIdZOKcN0d31ud5aCynBDU+pODaT2ZZwLljFNMJ2XjR9uS94XDRU/FQWSQwYrYrXSZOz1LScl0hB18BSbji7RAST3G8g2WzDNJ2dNgRhvKj16mMnKqvtBnGA5x0PO+bTci9XCgEA==", "packageNameAndroid": "com.pennywises.app", "transactionReceipt": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1699599161,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "autoRenewingAndroid": true, "purchaseStateAndroid": 1, "isAcknowledgedAndroid": false, "developerPayloadAndroid": "", "obfuscatedAccountIdAndroid": "", "obfuscatedProfileIdAndroid": ""}	android	1970-01-20 20:56:17.163+00	₹570.00	₹590.00	INR	\N
cb9c370b-e8a4-4b87-9f29-1f0a725691eb	2023-10-10 10:13:06.621+00	2023-10-10 10:13:06.621+00	ab99bbda-b9bd-42c5-96e7-bc1fa9dac6fa	{"piecodes": {"price": "₹570.00", "currency": "INR", "platform": "android", "device_info": "{\\"deviceId\\":\\"merlin\\",\\"device\\":\\"merlin\\",\\"baseOS\\":\\"\\",\\"manufacturer\\":\\"Xiaomi\\",\\"ApiLevel\\":30,\\"IpAddress\\":\\"192.168.1.7\\",\\"maxMemory\\":268435456,\\"androidId\\":\\"cbd3ef8967c7b38d\\",\\"usedMemory\\":477420544,\\"MacAddress\\":\\"\\",\\"deviceName\\":\\"Redmi Note 9\\"}", "localizedPrice": "₹590.00"}, "productId": "sub_no_02", "productIds": ["sub_no_02"], "dataAndroid": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1696859688034,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "purchaseToken": "loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ", "transactionId": "GPA.3317-6943-9198-09508", "transactionDate": 1716977163, "signatureAndroid": "cQw7dp7BVcJrl3ysbZOx84zD9bpzvmUb7kEpRaKl8ieBR60Z+p2mylxbLHSzJVyDkChMQSK6guiH5OX3bx3yNYPMIwhSI7rjTa2MfBk5EPVoLA+CEGybwl9CLXFggXInxRjjNdlgejXaKxY0xPJdS8XHsibkpf5bM+brxHyagXPuOG+QSWgrAZGpCHBtOIn8boridzYAg+KUybxIdZOKcN0d31ud5aCynBDU+pODaT2ZZwLljFNMJ2XjR9uS94XDRU/FQWSQwYrYrXSZOz1LScl0hB18BSbji7RAST3G8g2WzDNJ2dNgRhvKj16mMnKqvtBnGA5x0PO+bTci9XCgEA==", "packageNameAndroid": "com.pennywises.app", "transactionReceipt": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1699599161,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "autoRenewingAndroid": true, "purchaseStateAndroid": 1, "isAcknowledgedAndroid": false, "developerPayloadAndroid": "", "obfuscatedAccountIdAndroid": "", "obfuscatedProfileIdAndroid": ""}	android	1970-01-20 20:56:17.163+00	₹570.00	₹590.00	INR	\N
832e2324-f750-40e8-b24a-6b175ecafe7a	2023-10-10 10:32:16.772+00	2023-10-10 10:32:16.772+00	ab99bbda-b9bd-42c5-96e7-bc1fa9dac6fa	{"piecodes": {"price": "₹570.00", "currency": "INR", "platform": "android", "device_info": "{\\"deviceId\\":\\"merlin\\",\\"device\\":\\"merlin\\",\\"baseOS\\":\\"\\",\\"manufacturer\\":\\"Xiaomi\\",\\"ApiLevel\\":30,\\"IpAddress\\":\\"192.168.1.7\\",\\"maxMemory\\":268435456,\\"androidId\\":\\"cbd3ef8967c7b38d\\",\\"usedMemory\\":477420544,\\"MacAddress\\":\\"\\",\\"deviceName\\":\\"Redmi Note 9\\"}", "localizedPrice": "₹590.00"}, "productId": "sub_no_02", "productIds": ["sub_no_02"], "dataAndroid": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1696859688034,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "purchaseToken": "loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ", "transactionId": "GPA.3317-6943-9198-09508", "transactionDate": 1716977163000, "signatureAndroid": "cQw7dp7BVcJrl3ysbZOx84zD9bpzvmUb7kEpRaKl8ieBR60Z+p2mylxbLHSzJVyDkChMQSK6guiH5OX3bx3yNYPMIwhSI7rjTa2MfBk5EPVoLA+CEGybwl9CLXFggXInxRjjNdlgejXaKxY0xPJdS8XHsibkpf5bM+brxHyagXPuOG+QSWgrAZGpCHBtOIn8boridzYAg+KUybxIdZOKcN0d31ud5aCynBDU+pODaT2ZZwLljFNMJ2XjR9uS94XDRU/FQWSQwYrYrXSZOz1LScl0hB18BSbji7RAST3G8g2WzDNJ2dNgRhvKj16mMnKqvtBnGA5x0PO+bTci9XCgEA==", "packageNameAndroid": "com.pennywises.app", "transactionReceipt": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1699599161,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "autoRenewingAndroid": true, "purchaseStateAndroid": 1, "isAcknowledgedAndroid": false, "developerPayloadAndroid": "", "obfuscatedAccountIdAndroid": "", "obfuscatedProfileIdAndroid": ""}	android	2024-05-29 10:06:03+00	₹570.00	₹590.00	INR	\N
b783278a-ca53-4c6b-b2c7-9ff6759d6fc2	2023-10-10 10:35:45.787+00	2023-10-10 10:35:45.787+00	ab99bbda-b9bd-42c5-96e7-bc1fa9dac6fa	{"piecodes": {"price": "₹570.00", "currency": "INR", "platform": "android", "device_info": "{\\"deviceId\\":\\"merlin\\",\\"device\\":\\"merlin\\",\\"baseOS\\":\\"\\",\\"manufacturer\\":\\"Xiaomi\\",\\"ApiLevel\\":30,\\"IpAddress\\":\\"192.168.1.7\\",\\"maxMemory\\":268435456,\\"androidId\\":\\"cbd3ef8967c7b38d\\",\\"usedMemory\\":477420544,\\"MacAddress\\":\\"\\",\\"deviceName\\":\\"Redmi Note 9\\"}", "localizedPrice": "₹590.00"}, "productId": "sub_no_02", "productIds": ["sub_no_02"], "dataAndroid": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1696859688034,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "purchaseToken": "loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ", "transactionId": "GPA.3317-6943-9198-09508", "transactionDate": 1716977163000, "signatureAndroid": "cQw7dp7BVcJrl3ysbZOx84zD9bpzvmUb7kEpRaKl8ieBR60Z+p2mylxbLHSzJVyDkChMQSK6guiH5OX3bx3yNYPMIwhSI7rjTa2MfBk5EPVoLA+CEGybwl9CLXFggXInxRjjNdlgejXaKxY0xPJdS8XHsibkpf5bM+brxHyagXPuOG+QSWgrAZGpCHBtOIn8boridzYAg+KUybxIdZOKcN0d31ud5aCynBDU+pODaT2ZZwLljFNMJ2XjR9uS94XDRU/FQWSQwYrYrXSZOz1LScl0hB18BSbji7RAST3G8g2WzDNJ2dNgRhvKj16mMnKqvtBnGA5x0PO+bTci9XCgEA==", "packageNameAndroid": "com.pennywises.app", "transactionReceipt": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1699599161,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "autoRenewingAndroid": true, "purchaseStateAndroid": 1, "isAcknowledgedAndroid": false, "developerPayloadAndroid": "", "obfuscatedAccountIdAndroid": "", "obfuscatedProfileIdAndroid": ""}	android	2024-05-29 10:06:03+00	₹570.00	₹590.00	INR	\N
88d48c25-fa01-46ca-8cf3-1d5e0b494954	2023-10-10 10:38:24.794+00	2023-10-10 10:38:24.794+00	ab99bbda-b9bd-42c5-96e7-bc1fa9dac6fa	{"piecodes": {"price": "₹570.00", "currency": "INR", "platform": "android", "device_info": "{\\"deviceId\\":\\"merlin\\",\\"device\\":\\"merlin\\",\\"baseOS\\":\\"\\",\\"manufacturer\\":\\"Xiaomi\\",\\"ApiLevel\\":30,\\"IpAddress\\":\\"192.168.1.7\\",\\"maxMemory\\":268435456,\\"androidId\\":\\"cbd3ef8967c7b38d\\",\\"usedMemory\\":477420544,\\"MacAddress\\":\\"\\",\\"deviceName\\":\\"Redmi Note 9\\"}", "localizedPrice": "₹590.00"}, "productId": "sub_no_02", "productIds": ["sub_no_02"], "dataAndroid": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1696859688034,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "purchaseToken": "loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ", "transactionId": "GPA.3317-6943-9198-09508", "transactionDate": 1716977163000, "signatureAndroid": "cQw7dp7BVcJrl3ysbZOx84zD9bpzvmUb7kEpRaKl8ieBR60Z+p2mylxbLHSzJVyDkChMQSK6guiH5OX3bx3yNYPMIwhSI7rjTa2MfBk5EPVoLA+CEGybwl9CLXFggXInxRjjNdlgejXaKxY0xPJdS8XHsibkpf5bM+brxHyagXPuOG+QSWgrAZGpCHBtOIn8boridzYAg+KUybxIdZOKcN0d31ud5aCynBDU+pODaT2ZZwLljFNMJ2XjR9uS94XDRU/FQWSQwYrYrXSZOz1LScl0hB18BSbji7RAST3G8g2WzDNJ2dNgRhvKj16mMnKqvtBnGA5x0PO+bTci9XCgEA==", "packageNameAndroid": "com.pennywises.app", "transactionReceipt": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1699599161,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "autoRenewingAndroid": true, "purchaseStateAndroid": 1, "isAcknowledgedAndroid": false, "developerPayloadAndroid": "", "obfuscatedAccountIdAndroid": "", "obfuscatedProfileIdAndroid": ""}	android	2024-05-29 10:06:03+00	₹570.00	₹590.00	INR	\N
02120005-882e-4c2b-b94f-64f0ed2febe4	2023-10-11 12:29:53.753+00	2023-10-11 12:29:53.753+00	ecd1a65a-10ec-4a8c-95a5-6aa3a2620020	{"piecodes": {"type": "iap", "price": "9.99", "title": "annual", "currency": "USD", "platform": "ios", "discounts": [], "productId": "sub_no_03", "countryCode": "USA", "description": "Billed annually.", "device_info": "{\\"deviceId\\":\\"iPhone13,1\\",\\"device\\":\\"unknown\\",\\"baseOS\\":\\"unknown\\",\\"manufacturer\\":\\"Apple\\",\\"ApiLevel\\":-1,\\"IpAddress\\":\\"192.168.1.19\\",\\"maxMemory\\":-1,\\"androidId\\":\\"unknown\\",\\"usedMemory\\":131039232,\\"MacAddress\\":\\"02:00:00:00:00:00\\",\\"deviceName\\":\\"iPhone\\"}", "localizedPrice": "$5.99", "introductoryPrice": "", "subscriptionPeriodUnitIOS": "", "subscriptionPeriodNumberIOS": "0", "introductoryPriceAsAmountIOS": "", "introductoryPricePaymentModeIOS": "", "introductoryPriceNumberOfPeriodsIOS": "", "introductoryPriceSubscriptionPeriodIOS": ""}, "productId": "sub_no_03", "transactionId": "2000000429884337", "transactionDate": 1696602574000, "transactionReceipt": "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"}	ios	2023-10-06 14:29:34+00	9.99	$5.99	USD	USA
3d8674e7-de0d-42d6-839a-e60a185d58d6	2023-10-10 10:19:07.706+00	2023-10-10 10:19:07.706+00	ab99bbda-b9bd-42c5-96e7-bc1fa9dac6fa	{"piecodes": {"price": "₹570.00", "currency": "INR", "platform": "android", "device_info": "{\\"deviceId\\":\\"merlin\\",\\"device\\":\\"merlin\\",\\"baseOS\\":\\"\\",\\"manufacturer\\":\\"Xiaomi\\",\\"ApiLevel\\":30,\\"IpAddress\\":\\"192.168.1.7\\",\\"maxMemory\\":268435456,\\"androidId\\":\\"cbd3ef8967c7b38d\\",\\"usedMemory\\":477420544,\\"MacAddress\\":\\"\\",\\"deviceName\\":\\"Redmi Note 9\\"}", "localizedPrice": "₹590.00"}, "productId": "sub_no_02", "productIds": ["sub_no_02"], "dataAndroid": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1696859688034,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "purchaseToken": "loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ", "transactionId": "GPA.3317-6943-9198-09508", "transactionDate": 1716977163, "signatureAndroid": "cQw7dp7BVcJrl3ysbZOx84zD9bpzvmUb7kEpRaKl8ieBR60Z+p2mylxbLHSzJVyDkChMQSK6guiH5OX3bx3yNYPMIwhSI7rjTa2MfBk5EPVoLA+CEGybwl9CLXFggXInxRjjNdlgejXaKxY0xPJdS8XHsibkpf5bM+brxHyagXPuOG+QSWgrAZGpCHBtOIn8boridzYAg+KUybxIdZOKcN0d31ud5aCynBDU+pODaT2ZZwLljFNMJ2XjR9uS94XDRU/FQWSQwYrYrXSZOz1LScl0hB18BSbji7RAST3G8g2WzDNJ2dNgRhvKj16mMnKqvtBnGA5x0PO+bTci9XCgEA==", "packageNameAndroid": "com.pennywises.app", "transactionReceipt": "{\\"orderId\\":\\"GPA.3317-6943-9198-09508\\",\\"packageName\\":\\"com.pennywises.app\\",\\"productId\\":\\"sub_no_02\\",\\"purchaseTime\\":1699599161,\\"purchaseState\\":0,\\"purchaseToken\\":\\"loggnedabemdheeffmehemff.AO-J1OyEpfMevLLhLqHdxsE-Lj9VcnYT4mEskGViISh1ZT74yRFiRQopZmQzLQmNfYlOGZYwBtiLjHwg4BlthztUmmBCnerItQ\\",\\"quantity\\":1,\\"autoRenewing\\":true,\\"acknowledged\\":false}", "autoRenewingAndroid": true, "purchaseStateAndroid": 1, "isAcknowledgedAndroid": false, "developerPayloadAndroid": "", "obfuscatedAccountIdAndroid": "", "obfuscatedProfileIdAndroid": ""}	android	2023-08-21 20:56:17+00	₹570.00	₹590.00	INR	\N
\.


--
-- Data for Name: PennyWise_support_tickets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_support_tickets" ("id", "description", "status", "created_at", "updated_at", "user_id", "media_id") FROM stdin;
1e1f3c1e-b42a-4ec5-9f3e-99e8fda85df6	heyy	processing	2023-03-07 16:34:29.248+00	2023-03-07 16:34:29.248+00	b599d4e2-5ab8-4743-909d-b47d1d5fb21a	\N
\.


--
-- Data for Name: PennyWise_support_ticket_comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_support_ticket_comments" ("id", "description", "created_at", "updated_at", "user_id", "ticket_id") FROM stdin;
e0f4b8f3-4cb5-4ace-ab08-7f2e8fd33664	hiii	2023-03-09 10:35:36.102+00	2023-03-09 10:35:36.102+00	b599d4e2-5ab8-4743-909d-b47d1d5fb21a	1e1f3c1e-b42a-4ec5-9f3e-99e8fda85df6
\.


--
-- Data for Name: PennyWise_transactions_meta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."PennyWise_transactions_meta" ("id", "created_at", "entity_id", "meta_key", "meta_value", "updated_at", "parent_id") FROM stdin;
325e4cbb-54f4-4e97-9ca3-de38a63ba54e	2023-07-14 13:25:53.382+00	d0fab305-dc29-4258-8fad-e9bb2c7f724b	repeat	monthly	2023-07-14 13:25:53.382+00	d0fab305-dc29-4258-8fad-e9bb2c7f724b
9f5414ab-ed52-4a48-806d-66bd94a374bd	2023-07-14 13:25:53.592+00	d0fab305-dc29-4258-8fad-e9bb2c7f724b	reminder	2daysbefore	2023-07-14 13:25:53.592+00	d0fab305-dc29-4258-8fad-e9bb2c7f724b
0fa2f6ef-3ee6-470b-a635-6a833c9647f3	2023-07-18 06:47:21.779+00	fac0227d-5872-44f5-bbde-f53a52124c4a	repeat	monthly	2023-07-18 06:47:21.779+00	fac0227d-5872-44f5-bbde-f53a52124c4a
a2387b1b-31f2-471d-afaa-db7a83e650d2	2023-07-18 06:47:22+00	fac0227d-5872-44f5-bbde-f53a52124c4a	reminder	2daysbefore	2023-07-18 06:47:22+00	fac0227d-5872-44f5-bbde-f53a52124c4a
89f75eea-1c6e-482a-8904-e6dc73cdbaad	2023-07-18 09:59:18.142+00	89183c7d-f7e0-412f-b7a6-82023e74b992	repeat	monthly	2023-07-18 09:59:18.142+00	89183c7d-f7e0-412f-b7a6-82023e74b992
a6c986b7-c767-4197-bbed-5f3b0fc9885a	2023-07-18 09:59:18.353+00	89183c7d-f7e0-412f-b7a6-82023e74b992	reminder	2daysbefore	2023-07-18 09:59:18.353+00	89183c7d-f7e0-412f-b7a6-82023e74b992
a4576913-5b40-4841-a5f3-cecbfd6f5e7f	2023-07-18 10:33:32.028+00	54be5d65-58ff-4a42-9a0c-43e93f4023cb	repeat	monthly	2023-07-18 10:33:32.028+00	54be5d65-58ff-4a42-9a0c-43e93f4023cb
158d78f0-69e6-47d2-a4bb-36993612bfb1	2023-07-18 10:33:32.259+00	54be5d65-58ff-4a42-9a0c-43e93f4023cb	reminder	2daysbefore	2023-07-18 10:33:32.259+00	54be5d65-58ff-4a42-9a0c-43e93f4023cb
c1f91e98-be00-4050-b05b-36b0b14c9f20	2023-07-19 06:36:19.033+00	671bf3e4-a2b2-4a56-b34c-85210b958a7b	repeat	monthly	2023-07-19 06:36:19.033+00	671bf3e4-a2b2-4a56-b34c-85210b958a7b
973b82d0-b370-4a90-b0a5-d4e9fba0af17	2023-07-19 06:36:19.264+00	671bf3e4-a2b2-4a56-b34c-85210b958a7b	reminder	2daysbefore	2023-07-19 06:36:19.264+00	671bf3e4-a2b2-4a56-b34c-85210b958a7b
7581e1a5-7cb4-4e93-b29b-d0077786ba90	2023-07-19 06:37:45.38+00	d9d0d032-488d-4e0c-9d9a-57bc45f2977d	repeat	monthly	2023-07-19 06:37:45.38+00	d9d0d032-488d-4e0c-9d9a-57bc45f2977d
a01e215a-cea6-430f-99c7-91a004d70cc0	2023-07-19 06:37:45.598+00	d9d0d032-488d-4e0c-9d9a-57bc45f2977d	reminder	2daysbefore	2023-07-19 06:37:45.598+00	d9d0d032-488d-4e0c-9d9a-57bc45f2977d
7aec05de-6c11-42d7-9595-0fd2ab1c11a0	2023-07-19 06:41:37.364+00	044847c9-9b04-44e5-9267-007dc7a416cb	repeat	monthly	2023-07-19 06:41:37.364+00	044847c9-9b04-44e5-9267-007dc7a416cb
fbccb498-68c7-4fa9-a324-0d8435ea1881	2023-07-19 06:41:37.6+00	044847c9-9b04-44e5-9267-007dc7a416cb	reminder	2daysbefore	2023-07-19 06:41:37.6+00	044847c9-9b04-44e5-9267-007dc7a416cb
9dc6e706-8cfb-46c2-a3a6-1365287b1849	2023-07-19 06:42:50.417+00	198607cf-2be9-4a2a-b25b-f3caa3df1d97	repeat	monthly	2023-07-19 06:42:50.417+00	198607cf-2be9-4a2a-b25b-f3caa3df1d97
032fc826-b418-4b01-afcf-7a5c68efe44e	2023-07-19 06:42:50.638+00	198607cf-2be9-4a2a-b25b-f3caa3df1d97	reminder	2daysbefore	2023-07-19 06:42:50.638+00	198607cf-2be9-4a2a-b25b-f3caa3df1d97
836ce770-330e-4b4c-ae30-417ec7158969	2023-07-19 06:47:01.253+00	ded275d2-683a-46c0-ac41-355cecd5bfe1	repeat	monthly	2023-07-19 06:47:01.253+00	ded275d2-683a-46c0-ac41-355cecd5bfe1
12bcb6c8-07d3-405a-a2f9-d6ddf52f17cc	2023-07-19 06:47:01.476+00	ded275d2-683a-46c0-ac41-355cecd5bfe1	reminder	2daysbefore	2023-07-19 06:47:01.476+00	ded275d2-683a-46c0-ac41-355cecd5bfe1
06a7c2aa-5d55-4f8e-a272-de868c64348e	2023-07-19 06:50:20.449+00	e9d73709-52df-4bc3-bab6-bf8d9110575b	repeat	monthly	2023-07-19 06:50:20.449+00	e9d73709-52df-4bc3-bab6-bf8d9110575b
1b551f07-9737-426b-af35-b82259a9137e	2023-07-19 06:50:20.675+00	e9d73709-52df-4bc3-bab6-bf8d9110575b	reminder	2daysbefore	2023-07-19 06:50:20.675+00	e9d73709-52df-4bc3-bab6-bf8d9110575b
15621a75-acdc-46dd-aa14-509609ca5421	2023-07-19 06:51:28.596+00	c9e9bbd5-6e3d-4010-8c43-e0f04e8a8d94	repeat	monthly	2023-07-19 06:51:28.596+00	c9e9bbd5-6e3d-4010-8c43-e0f04e8a8d94
61916431-ddc7-4e39-b29a-e1e1622d53f0	2023-07-19 06:51:28.802+00	c9e9bbd5-6e3d-4010-8c43-e0f04e8a8d94	reminder	2daysbefore	2023-07-19 06:51:28.802+00	c9e9bbd5-6e3d-4010-8c43-e0f04e8a8d94
ab0e0afd-07ac-49f1-9cad-a03086a2f656	2023-07-19 06:57:13.878+00	f4042516-d8c0-4ed4-99ec-f9da04bbda2f	repeat	monthly	2023-07-19 06:57:13.878+00	f4042516-d8c0-4ed4-99ec-f9da04bbda2f
64fc7b9d-b6b3-47e1-b32e-00ada5ae578d	2023-07-19 06:57:14.103+00	f4042516-d8c0-4ed4-99ec-f9da04bbda2f	reminder	2daysbefore	2023-07-19 06:57:14.103+00	f4042516-d8c0-4ed4-99ec-f9da04bbda2f
77266871-6977-4a70-bf0f-811e9f81386e	2023-07-19 07:03:21.842+00	bf063420-ca60-4725-bb48-d30631360406	repeat	yearly	2023-07-19 07:03:21.842+00	bf063420-ca60-4725-bb48-d30631360406
c6e0eb55-60c2-439e-adfb-3f8bb0a6679f	2023-07-19 07:03:22.074+00	bf063420-ca60-4725-bb48-d30631360406	reminder	2daysbefore	2023-07-19 07:03:22.074+00	bf063420-ca60-4725-bb48-d30631360406
49f6bbb1-551a-443c-af17-1976f1815ad0	2023-07-19 07:07:00.867+00	d916586b-e35a-4dbb-8143-e264ceeb26e7	repeat	yearly	2023-07-19 07:07:00.867+00	d916586b-e35a-4dbb-8143-e264ceeb26e7
955eddd7-4049-4bac-a99c-0aabb1cc4ae3	2023-07-19 07:07:01.098+00	d916586b-e35a-4dbb-8143-e264ceeb26e7	reminder	2daysbefore	2023-07-19 07:07:01.098+00	d916586b-e35a-4dbb-8143-e264ceeb26e7
6d6986a6-525f-4611-8f8c-10e0e25c6eb4	2023-07-19 07:08:23.633+00	083df6c8-8fb0-42bc-8050-1bc782a5aa70	repeat	yearly	2023-07-19 07:08:23.633+00	083df6c8-8fb0-42bc-8050-1bc782a5aa70
d84e0519-43ff-4d70-8e70-ffd9ce8a9ca2	2023-07-19 07:08:23.855+00	083df6c8-8fb0-42bc-8050-1bc782a5aa70	reminder	2daysbefore	2023-07-19 07:08:23.855+00	083df6c8-8fb0-42bc-8050-1bc782a5aa70
badb69df-2fe0-4ac1-8b88-25d6e72b8cdf	2023-07-19 07:19:32.659+00	d38b0f32-60e0-4c4d-a478-495762d08276	repeat	yearly	2023-07-19 07:19:32.659+00	d38b0f32-60e0-4c4d-a478-495762d08276
b13fc8fb-7eca-4070-b611-81ae2d233e69	2023-07-19 07:19:32.899+00	d38b0f32-60e0-4c4d-a478-495762d08276	reminder	2daysbefore	2023-07-19 07:19:32.899+00	d38b0f32-60e0-4c4d-a478-495762d08276
cccd5bde-b1f5-4c4d-b60f-116bd9a0e74f	2023-07-19 07:25:02.106+00	de43f17f-4420-4458-b33d-69568676dfa8	repeat	yearly	2023-07-19 07:25:02.106+00	de43f17f-4420-4458-b33d-69568676dfa8
88968278-440d-4de9-819e-6788c6e6a03a	2023-07-19 07:25:02.329+00	de43f17f-4420-4458-b33d-69568676dfa8	reminder	2daysbefore	2023-07-19 07:25:02.329+00	de43f17f-4420-4458-b33d-69568676dfa8
f0ff6518-b6b0-45f7-b570-52c72339268f	2023-07-19 08:50:57.784+00	d07ce1e0-96f1-429b-95bb-b09ac9843532	repeat	yearly	2023-07-19 08:50:57.784+00	d07ce1e0-96f1-429b-95bb-b09ac9843532
2efbd769-9989-4dc9-8880-8a38376e42dd	2023-07-19 08:50:58.018+00	d07ce1e0-96f1-429b-95bb-b09ac9843532	reminder	2daysbefore	2023-07-19 08:50:58.018+00	d07ce1e0-96f1-429b-95bb-b09ac9843532
6ce1ef8e-879b-443d-b533-46f136198470	2023-07-19 09:06:59.802+00	79cd3a41-f554-458e-8f7d-2fd93b5035e0	repeat	yearly	2023-07-19 09:06:59.802+00	79cd3a41-f554-458e-8f7d-2fd93b5035e0
0e0796bf-130f-4ebc-a364-8c9fa60c984c	2023-07-19 09:07:00.009+00	79cd3a41-f554-458e-8f7d-2fd93b5035e0	reminder	2daysbefore	2023-07-19 09:07:00.009+00	79cd3a41-f554-458e-8f7d-2fd93b5035e0
1f279b6b-f0da-4130-baed-e3342534fe91	2023-07-19 11:20:12.673+00	bb89572b-7188-46c5-b851-b6e590f1c165	repeat	monthly	2023-07-19 11:20:12.673+00	bb89572b-7188-46c5-b851-b6e590f1c165
9097c9fc-14cd-413a-ac66-6dde1c63e364	2023-07-19 11:20:12.905+00	bb89572b-7188-46c5-b851-b6e590f1c165	reminder	2daysbefore	2023-07-19 11:20:12.905+00	bb89572b-7188-46c5-b851-b6e590f1c165
945fd055-b53c-4af0-8f63-3063b7e9db3a	2023-07-19 12:12:08.984+00	0d4f1785-b16c-43ec-94ca-220e378bcb47	repeat	monthly	2023-07-19 12:12:08.984+00	0d4f1785-b16c-43ec-94ca-220e378bcb47
ea08a308-6c40-49cb-90f4-936d88c940d9	2023-07-19 12:12:09.391+00	0d4f1785-b16c-43ec-94ca-220e378bcb47	reminder	2daysbefore	2023-07-19 12:12:09.391+00	0d4f1785-b16c-43ec-94ca-220e378bcb47
f0cfca44-b801-45db-a545-96504e8353ec	2023-07-19 13:00:41.597+00	cc81403b-820d-4725-94e5-92b82c3b6298	repeat	monthly	2023-07-19 13:00:41.597+00	cc81403b-820d-4725-94e5-92b82c3b6298
f2cba10f-2275-4f77-aa3e-532c3a8722e7	2023-07-19 13:00:41.821+00	cc81403b-820d-4725-94e5-92b82c3b6298	reminder	2daysbefore	2023-07-19 13:00:41.821+00	cc81403b-820d-4725-94e5-92b82c3b6298
709e065e-c589-4f99-9036-d48d99324d68	2023-07-19 13:08:53.668+00	3aec17a4-4702-41f2-8b14-8d9cba620975	repeat	monthly	2023-07-19 13:08:53.668+00	3aec17a4-4702-41f2-8b14-8d9cba620975
15bd9b41-b8e4-4871-985e-62b38d55db26	2023-07-19 13:08:53.913+00	3aec17a4-4702-41f2-8b14-8d9cba620975	reminder	2daysbefore	2023-07-19 13:08:53.913+00	3aec17a4-4702-41f2-8b14-8d9cba620975
a8938075-4ae1-4b69-96f2-3d2cd43bd0ed	2023-07-20 05:38:24.483+00	eeb84a7a-aedf-45a1-987d-3597ea5d770e	repeat	monthly	2023-07-20 05:38:24.483+00	eeb84a7a-aedf-45a1-987d-3597ea5d770e
015d14ae-8f8f-4672-8170-de9fbe316771	2023-07-20 05:38:24.704+00	eeb84a7a-aedf-45a1-987d-3597ea5d770e	reminder	2daysbefore	2023-07-20 05:38:24.704+00	eeb84a7a-aedf-45a1-987d-3597ea5d770e
f34ba09f-5f25-4ad2-9756-f49a6baecca8	2023-07-20 07:12:42.538+00	5b779632-0672-4b59-a95e-fd3b8745b768	repeat	monthly	2023-07-20 07:12:42.538+00	5b779632-0672-4b59-a95e-fd3b8745b768
49fe409e-df37-47bf-b6ab-d684ab650256	2023-07-20 07:12:42.761+00	5b779632-0672-4b59-a95e-fd3b8745b768	reminder	2daysbefore	2023-07-20 07:12:42.761+00	5b779632-0672-4b59-a95e-fd3b8745b768
c0aa4e26-6e83-47db-a492-a4e55cf8d2a0	2023-07-20 07:13:31.871+00	54496c6b-1e38-4338-86c0-f2a48ae6c2f2	repeat	monthly	2023-07-20 07:13:31.871+00	54496c6b-1e38-4338-86c0-f2a48ae6c2f2
f8bf8b22-1600-4462-abf4-f09908b63261	2023-07-20 07:13:32.093+00	54496c6b-1e38-4338-86c0-f2a48ae6c2f2	reminder	2daysbefore	2023-07-20 07:13:32.093+00	54496c6b-1e38-4338-86c0-f2a48ae6c2f2
2eb880b3-172f-471c-b9d3-f717723e66db	2023-07-20 07:13:57.089+00	1802f093-ce55-4779-a0bc-043405505017	repeat	monthly	2023-07-20 07:13:57.089+00	1802f093-ce55-4779-a0bc-043405505017
de569f8e-63cc-4a46-b873-5868d1f27db8	2023-07-20 07:13:57.311+00	1802f093-ce55-4779-a0bc-043405505017	reminder	2daysbefore	2023-07-20 07:13:57.311+00	1802f093-ce55-4779-a0bc-043405505017
6202b1bf-a6e3-42f4-afeb-9cbc18d0ea0d	2023-07-20 10:20:03.705+00	9a353aba-9a6b-4d11-b9f0-d937011ad695	repeat	monthly	2023-07-20 10:20:03.705+00	9a353aba-9a6b-4d11-b9f0-d937011ad695
8cd5f696-467a-40d6-a659-af00ceb8dd63	2023-07-20 10:20:03.935+00	9a353aba-9a6b-4d11-b9f0-d937011ad695	reminder	2daysbefore	2023-07-20 10:20:03.935+00	9a353aba-9a6b-4d11-b9f0-d937011ad695
1b138fa6-7c0f-4bd2-97db-206ecb3dc84f	2023-07-20 10:52:57.262+00	879bb260-f705-4833-86b2-858d5c466fc5	repeat	monthly	2023-07-20 10:52:57.262+00	879bb260-f705-4833-86b2-858d5c466fc5
641b1db5-4eb8-4a2c-8239-85b92682683c	2023-07-20 10:52:57.478+00	879bb260-f705-4833-86b2-858d5c466fc5	reminder	2daysbefore	2023-07-20 10:52:57.478+00	879bb260-f705-4833-86b2-858d5c466fc5
fb33666f-6fd4-43ac-9d3c-7c8082aa3415	2023-07-20 11:04:51.84+00	8982df99-878d-43aa-a445-93a91bda80ec	repeat	monthly	2023-07-20 11:04:51.84+00	8982df99-878d-43aa-a445-93a91bda80ec
1acd8349-d1ca-495e-b8bb-4d9d009a1f72	2023-07-20 11:04:52.057+00	8982df99-878d-43aa-a445-93a91bda80ec	reminder	2daysbefore	2023-07-20 11:04:52.057+00	8982df99-878d-43aa-a445-93a91bda80ec
2bb5fc24-e8df-410e-83f9-c6aad5984dee	2023-07-20 11:40:45.35+00	dd40f778-7dea-4b3b-a01d-960fdb4717d5	repeat	monthly	2023-07-20 11:40:45.35+00	dd40f778-7dea-4b3b-a01d-960fdb4717d5
ca9a12ce-d98d-4428-be4a-131907351ac6	2023-07-20 11:40:45.577+00	dd40f778-7dea-4b3b-a01d-960fdb4717d5	reminder	2daysbefore	2023-07-20 11:40:45.577+00	dd40f778-7dea-4b3b-a01d-960fdb4717d5
48ace6cb-1c14-41cb-a055-89d3a9e32431	2023-07-20 11:41:48.14+00	51ad09fa-75b4-44fc-a7e8-1d05cb1aa34d	repeat	monthly	2023-07-20 11:41:48.14+00	51ad09fa-75b4-44fc-a7e8-1d05cb1aa34d
8297bfc4-ebbd-494a-ba7f-2e54e0e65350	2023-07-20 11:41:48.382+00	51ad09fa-75b4-44fc-a7e8-1d05cb1aa34d	reminder	2daysbefore	2023-07-20 11:41:48.382+00	51ad09fa-75b4-44fc-a7e8-1d05cb1aa34d
9f770d89-57d8-4789-a693-468be3513adc	2023-07-21 08:40:55.869+00	de30b116-2791-4d99-96c0-f87c05e78753	repeat	monthly	2023-07-21 08:40:55.869+00	de30b116-2791-4d99-96c0-f87c05e78753
c292d6af-0982-461a-ab87-a6ed05890602	2023-07-21 08:40:56.09+00	de30b116-2791-4d99-96c0-f87c05e78753	reminder	2daysbefore	2023-07-21 08:40:56.09+00	de30b116-2791-4d99-96c0-f87c05e78753
febd443d-de2f-423c-a8e5-fb2b0993cac0	2023-07-24 09:43:57.888+00	f2fc08cc-3331-441f-85ae-2fee59b1665c	repeat	monthly	2023-07-24 09:43:57.888+00	f2fc08cc-3331-441f-85ae-2fee59b1665c
40f3af07-ec60-4621-bde2-2cfc7a0ecbed	2023-07-24 09:43:58.142+00	f2fc08cc-3331-441f-85ae-2fee59b1665c	reminder	2daysbefore	2023-07-24 09:43:58.142+00	f2fc08cc-3331-441f-85ae-2fee59b1665c
1dfc4f15-ea24-4d45-b838-1e4f66e992f0	2023-07-24 12:57:44.69+00	ba151ae9-31d4-44ec-9966-56ccb59e858f	repeat	monthly	2023-07-24 12:57:44.69+00	ba151ae9-31d4-44ec-9966-56ccb59e858f
ae696a1c-fd63-42f2-8d05-9baf6be11e2b	2023-07-24 12:57:44.925+00	ba151ae9-31d4-44ec-9966-56ccb59e858f	reminder	2daysbefore	2023-07-24 12:57:44.925+00	ba151ae9-31d4-44ec-9966-56ccb59e858f
6733eff1-d06c-4e58-bbaa-10086f54c48f	2023-08-08 07:28:34.722+00	05dc79a4-6ee2-45f8-a58f-3f9833d799cc	repeat	monthly	2023-08-08 07:28:34.722+00	05dc79a4-6ee2-45f8-a58f-3f9833d799cc
a8c1d317-daf7-4c8b-909b-368beb1bc9ee	2023-08-08 07:28:34.965+00	05dc79a4-6ee2-45f8-a58f-3f9833d799cc	reminder	2daysbefore	2023-08-08 07:28:34.965+00	05dc79a4-6ee2-45f8-a58f-3f9833d799cc
78cf1709-adca-44cc-84ac-c6857ff5ff3f	2023-08-08 10:04:17.741+00	6169228c-90e0-4477-98af-e1994010ec03	repeat	monthly	2023-08-08 10:04:17.741+00	6169228c-90e0-4477-98af-e1994010ec03
c22c15b4-48d4-4d8a-8a1e-536d1b3f2d20	2023-08-08 10:04:18.037+00	6169228c-90e0-4477-98af-e1994010ec03	reminder	2daysbefore	2023-08-08 10:04:18.037+00	6169228c-90e0-4477-98af-e1994010ec03
344126dc-aaa2-4d63-9bd0-43679a302857	2023-08-17 15:59:13.324+00	73585bad-247a-4fc2-b2e4-f0118a4ca8c5	repeat	monthly	2023-08-17 15:59:13.324+00	73585bad-247a-4fc2-b2e4-f0118a4ca8c5
345beb53-c772-4c79-a9cc-cc25ab76647c	2023-08-17 15:59:13.565+00	73585bad-247a-4fc2-b2e4-f0118a4ca8c5	reminder	2daysbefore	2023-08-17 15:59:13.565+00	73585bad-247a-4fc2-b2e4-f0118a4ca8c5
5cb79f67-4bfd-48dc-82a0-c48c2c0c7400	2023-08-17 16:03:33.292+00	d81db2ec-eef7-45c6-b438-6da5a79efd36	repeat	monthly	2023-08-17 16:03:33.292+00	d81db2ec-eef7-45c6-b438-6da5a79efd36
27366a44-34e5-471c-a901-c043f6b92237	2023-08-17 16:03:33.509+00	d81db2ec-eef7-45c6-b438-6da5a79efd36	reminder	2daysbefore	2023-08-17 16:03:33.509+00	d81db2ec-eef7-45c6-b438-6da5a79efd36
fe658d1d-1c36-4179-b64e-29e50328f0fb	2023-08-18 06:00:07.227+00	9eefc317-38e5-4472-b7a7-690910f69b10	repeat	monthly	2023-08-18 06:00:07.227+00	9eefc317-38e5-4472-b7a7-690910f69b10
1a83750c-9c74-4bd1-9185-61f4f3b848c4	2023-08-18 06:00:07.459+00	9eefc317-38e5-4472-b7a7-690910f69b10	reminder	2daysbefore	2023-08-18 06:00:07.459+00	9eefc317-38e5-4472-b7a7-690910f69b10
563c84f4-f174-49fa-a14d-a2248854ad36	2023-08-18 06:01:22.295+00	fed671ff-51e7-4acd-a093-ade32713c1d9	repeat	monthly	2023-08-18 06:01:22.295+00	fed671ff-51e7-4acd-a093-ade32713c1d9
c708aabf-7d10-432f-b202-48f91185c673	2023-08-18 06:01:22.515+00	fed671ff-51e7-4acd-a093-ade32713c1d9	reminder	2daysbefore	2023-08-18 06:01:22.515+00	fed671ff-51e7-4acd-a093-ade32713c1d9
f1d5544e-16ff-4b81-aa99-ed454652f2bc	2023-08-18 06:03:08.582+00	cfac1333-9043-4a13-9390-bada76c759a4	repeat	monthly	2023-08-18 06:03:08.582+00	cfac1333-9043-4a13-9390-bada76c759a4
cb47beda-307a-46b8-8893-e69d391eaed7	2023-08-18 06:03:08.813+00	cfac1333-9043-4a13-9390-bada76c759a4	reminder	2daysbefore	2023-08-18 06:03:08.813+00	cfac1333-9043-4a13-9390-bada76c759a4
d14d4871-e59b-4f89-a63d-a86c515378ea	2023-08-18 06:04:40.215+00	d326369e-a570-4dc1-a6a1-c3581272d72e	repeat	monthly	2023-08-18 06:04:40.215+00	d326369e-a570-4dc1-a6a1-c3581272d72e
f3783e86-f565-4cbc-9f2b-d69b6783e47f	2023-08-18 06:04:40.452+00	d326369e-a570-4dc1-a6a1-c3581272d72e	reminder	2daysbefore	2023-08-18 06:04:40.452+00	d326369e-a570-4dc1-a6a1-c3581272d72e
34baa5b5-380d-442a-aa04-2bbac729e6ac	2023-08-18 06:16:13.44+00	829e2cea-de73-419a-a5e2-3beaebcc4c09	repeat	monthly	2023-08-18 06:16:13.44+00	829e2cea-de73-419a-a5e2-3beaebcc4c09
094ee8d6-536e-4b6b-b718-69ebd4afa003	2023-08-18 06:16:13.675+00	829e2cea-de73-419a-a5e2-3beaebcc4c09	reminder	2daysbefore	2023-08-18 06:16:13.675+00	829e2cea-de73-419a-a5e2-3beaebcc4c09
29d08f08-5c8a-4060-a56b-1d5c049ee3e8	2023-08-18 06:17:17.249+00	9980066b-3b05-4c86-8f31-1144fc07ff38	repeat	monthly	2023-08-18 06:17:17.249+00	9980066b-3b05-4c86-8f31-1144fc07ff38
57f38867-e2bc-41da-9fd5-823dabccea04	2023-08-18 06:17:17.483+00	9980066b-3b05-4c86-8f31-1144fc07ff38	reminder	2daysbefore	2023-08-18 06:17:17.483+00	9980066b-3b05-4c86-8f31-1144fc07ff38
067a372f-08f8-4be7-a089-c5122070eca3	2023-09-01 11:17:22.019+00	73dcf076-bcde-4939-94b4-4b527c6bac50	repeat	monthly	2023-09-01 11:17:22.019+00	73dcf076-bcde-4939-94b4-4b527c6bac50
74cf009e-d57f-4211-8cc2-dd6ff256c347	2023-09-01 11:17:22.285+00	73dcf076-bcde-4939-94b4-4b527c6bac50	reminder	2daysbefore	2023-09-01 11:17:22.285+00	73dcf076-bcde-4939-94b4-4b527c6bac50
bc396a31-0df8-47fb-a68e-e4e9933775d2	2023-09-01 11:18:07.691+00	a3eb8e18-6d96-4c57-83d0-d7af1091c47e	repeat	monthly	2023-09-01 11:18:07.691+00	a3eb8e18-6d96-4c57-83d0-d7af1091c47e
6009c6e2-2bc0-4784-b707-c8c13bf3d4b2	2023-09-01 11:18:07.953+00	a3eb8e18-6d96-4c57-83d0-d7af1091c47e	reminder	2daysbefore	2023-09-01 11:18:07.953+00	a3eb8e18-6d96-4c57-83d0-d7af1091c47e
ece1df84-8adf-4032-986d-cf8f0f1eaa98	2023-09-01 11:24:42.638+00	1f757aef-cd2a-4f4a-b39a-ea7f8fc25ccd	repeat	monthly	2023-09-01 11:24:42.638+00	1f757aef-cd2a-4f4a-b39a-ea7f8fc25ccd
81bad010-1fd5-4473-b9f1-03b4cdcc4b2f	2023-09-01 11:24:42.897+00	1f757aef-cd2a-4f4a-b39a-ea7f8fc25ccd	reminder	2daysbefore	2023-09-01 11:24:42.897+00	1f757aef-cd2a-4f4a-b39a-ea7f8fc25ccd
8c2e960c-ac81-4878-a9fa-f46393d07e05	2023-10-03 08:23:37.129+00	16f2b916-79e7-4dce-8189-442315926ddd	repeat	monthly	2023-10-03 08:23:37.129+00	16f2b916-79e7-4dce-8189-442315926ddd
62fee82f-836e-4e09-87bc-8a8cf86c514a	2023-10-03 08:23:37.391+00	16f2b916-79e7-4dce-8189-442315926ddd	reminder	2daysbefore	2023-10-03 08:23:37.391+00	16f2b916-79e7-4dce-8189-442315926ddd
ccade545-8df6-4de9-8188-90aee284e913	2023-10-03 08:25:23.899+00	fa438341-e306-4372-b625-fcf7d80099e6	repeat	monthly	2023-10-03 08:25:23.899+00	fa438341-e306-4372-b625-fcf7d80099e6
f2d1b918-2c65-4f7d-9e53-b26e143ae952	2023-10-03 08:25:24.178+00	fa438341-e306-4372-b625-fcf7d80099e6	reminder	2daysbefore	2023-10-03 08:25:24.178+00	fa438341-e306-4372-b625-fcf7d80099e6
\.


--
-- Data for Name: _users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_users" ("id", "username", "first_name", "last_name", "email", "gender", "dob", "otp", "status", "created_at", "updated_at", "working_hours_days", "working_hours_time", "sleeping_hours_days", "sleeping_hours_time", "longitude", "latitude", "fcm_token", "device_info") FROM stdin;
c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	Gk007	GK	Bhargava	gk@piecode.in	other	\N	\N	active	2023-09-11 05:08:38.352541+00	2023-09-11 05:08:38.352541+00	\N	\N	\N	\N	\N	\N	\N	\N
a1910359-9cb4-4f48-b3f9-e7eeeecb537f	arya@007	Arya	\N	gaurav@pic.in	other	\N	\N	active	2023-09-06 16:36:55.151845+00	2023-09-06 16:36:55.151845+00	\N	\N	\N	\N	\N	\N	dvRDUD0qRf26AWXQEVpnKw:APA91bEarb983Dna8S449-SoO8ECQmHbegVfmXs5gRGGyVk9NpsTYdAQodhUypKO5dKH2L7CZtOpMpO23HAKzhG8dDxZJbSvb1-fziTkSFFBsMf3YuT72ckKEOQHvkwSjdLRgja7oaAN	\N
8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	om	om	Singh	om@mailinator.com	other	2012-09-20	\N	active	2023-09-20 10:43:22.760126+00	2023-09-20 10:43:22.760126+00	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	c3IEfA3nSxat13KkTOVUCI:APA91bGHjps-vT2t6Cj_gu7eBLM3f1SfbmbtFFY06ln2O5T9IUil3nUz96AwKvTd9AEFyWNXAA4P41y83_xdKaIH2e7yBp4ed_Z8dOtlJh58mvhy_P4rRXnAjM-6NW9mj7rIvOo0XYuB	{"deviceId":"TE1A.220922.031","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}
045e7ee9-9fa2-433d-aa4d-47533d65544a	SS12	Sourabh	Shrivastava	sourabh@piecodes.in	\N	\N	\N	active	2023-08-26 06:52:36.674033+00	2023-08-26 06:52:36.674033+00	\N	\N	\N	\N	\N	\N	\N	\N
51533294-1540-4ad0-a1ca-99e20372653e	isa_date	isa	Date	isa@mailinator.com	other	1956-09-22	\N	active	2023-09-22 11:20:52.149604+00	2023-09-22 11:20:52.149604+00	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	fwjvnPduT1uxgnrr2Ox19a:APA91bEYnqx8nEuwP5f23kuoBGkUWS2evTYCP3-8sP3AJoYdjrsnEolcUtJ-TeBtoxreDe0U8lhpFR4XAIS6rRac6sOfy488I5bC_1F0rgRxnZtgtttGMHlcL5_iIYSV6lKHy4yArOZ4	{"deviceId":"TE1A.220922.031","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}
4b30aa38-b085-4824-9407-e97d40df7c70	\N	\N	\N	mahesh@mailinator.com	other	\N	365142	deleted	2023-09-27 13:56:38.543862+00	2023-09-27 13:56:38.543862+00	\N	\N	\N	\N	\N	\N	\N	\N
8d90efd0-7ecf-4dba-99f6-eb8c90b8a83d	f	f	f	test@mailinator.com	other	2023-11-22	\N	active	2023-09-22 13:14:45.301134+00	2023-09-22 13:14:45.301134+00	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	, Mon, Tue, Wed	23:00 - 06:00	\N	\N	fwjvnPduT1uxgnrr2Ox19a:APA91bEYnqx8nEuwP5f23kuoBGkUWS2evTYCP3-8sP3AJoYdjrsnEolcUtJ-TeBtoxreDe0U8lhpFR4XAIS6rRac6sOfy488I5bC_1F0rgRxnZtgtttGMHlcL5_iIYSV6lKHy4yArOZ4	{"deviceId":"TE1A.220922.031","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}
6df0604d-ef1e-48b5-8bc2-7275b0f669ef	krishna	Krishna	Singh	krishna@mailinator.com	other	2023-09-22	\N	active	2023-09-22 14:35:41.714201+00	2023-09-22 14:35:41.714201+00	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	22:00 - 06:00	\N	\N	dru4BQ8oRmywDBPCvDClyr:APA91bGt4D7R97jI2vv0fsBPUmDaC_qBNWQD-EVR5aZvlJ7oXg5DsHeUx6N1pCSJOW3ia1ebWSTtCoEAaFvPGZULORXB119SQbEiMV_PS9R8QaCIfKf_5F5E6XamUeNu9jTEXPX-WJ_S	{"deviceId":"TE1A.220922.031","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}
fb9f7ac8-bdb2-4239-b9ac-58b7b52c6a34	\N	\N	\N	s@mailinator.com	other	\N	\N	active	2023-09-22 13:20:50.57063+00	2023-09-22 13:20:50.57063+00	\N	\N	\N	\N	\N	\N	\N	\N
37d48533-2cbe-4e68-bf17-2f0a507a3e75	\N	\N	\N	mahesh@piecodes.in	other	\N	198394	active	2023-09-27 13:35:29.446052+00	2023-09-27 13:35:29.446052+00	\N	\N	\N	\N	\N	\N	\N	\N
b23787cb-1c0b-452f-af87-9d7276146e51	code_sandbox	Code	Sandbox	lockedsandbox@gmail.com	other	1999-09-21	\N	active	2023-09-21 11:29:33.505217+00	2023-09-21 11:29:33.505217+00	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	77.1609	24.4348	c3fQlpt4EkSymlFp2RMyiP:APA91bEUv0inNSHVBUUTHlAjZHpa0LSWA86TaiX0-qnmrUxZpFqxd-qi1HneLuGgZR94pmOMQyAzwltPsGcppRn_QSalR6To6F6qraDFUnbLs2ntb_yi1ittPh7OAyU1gsBZw3e0exBw	{"deviceId":"DD891133-487E-4B8F-8E32-E3D3D1488126","device":"iPhone","baseOS":"","manufacturer":"Apple","apiLevel":"17.0","IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"iPhone 15 Plus"}
f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	krishna1	Krishna	Singh	krishnapal@piecodes.in	other	1994-07-23	522500	active	2023-09-23 13:13:15.76066+00	2023-09-23 13:13:15.76066+00	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	23:00 - 06:00	\N	\N	cMvXdOOjS9KRa7pBQ3uY0W:APA91bE1F9MqR8i_HpfDdrELbo3ZjyE_zIm5mbJvtd1F9RBcugR97T3sB5lqMeiQt_4-0b0npCuJxAV1p4ehBwQZnOlLJNYSEKrNVRccPRDd-u32s-aIdTRwiIc7xPjshMq2QgTFJOUj	{"deviceId":"TE1A.220922.012","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}
b0e3d24a-0400-4615-aabf-20f717689aa7	\N	\N	\N	gaurav@data.in	other	\N	\N	active	2023-09-27 10:16:34.40675+00	2023-09-27 10:16:34.40675+00	\N	\N	\N	\N	\N	\N	\N	\N
92f686cd-10eb-46c4-9738-fa14589bd536	ravi@007	Ravi	Sharma	ravi@piecodes.in	male	\N	\N	active	2023-08-10 11:00:53.98134+00	2023-08-10 11:00:53.98134+00	\N	\N	\N	\N	\N	\N	\N	\N
11404476-acd0-4da5-9b60-9cfae5bc12c4	Gaurav@007	Gaurav	Bhargava	gaurav@piecodes.in	\N	1994-03-28	796368	active	2023-07-31 15:29:52.762748+00	2023-07-31 15:29:52.983289+00	\N	\N	\N	\N	77.3113	24.6469	dvRDUD0qRf26AWXQEVpnKw:APA91bEarb983Dna8S449-SoO8ECQmHbegVfmXs5gRGGyVk9NpsTYdAQodhUypKO5dKH2L7CZtOpMpO23HAKzhG8dDxZJbSvb1-fziTkSFFBsMf3TuT72ckKEOQHvkwSjdLRgja7oaAN	{'deviceId':'goldfish_x86_64','device':'emu64x','baseOS':'','manufacturer':'Google','ApiLevel':33,'IpAddress':'10.0.2.16','maxMemory':201326592,'androidId':'00968e1161cb3dd4','usedMemory':341565440,'MacAddress':'','deviceName':'sdk_gphone64_x86_64'}
a59fc3e7-56f5-4df1-9523-02d24b791bd9	\N	\N	\N	gaurav@piecode.in	other	\N	\N	active	2023-09-29 12:23:01.049942+00	2023-09-29 12:23:01.049942+00	\N	\N	\N	\N	\N	24.6319446315	\N	\N
28850701-5473-44c2-99c9-747ad8013ec5	rahul@007	Rahul	Raikwar	rahul@piecodes.in	other	\N	\N	active	2023-09-13 05:56:45.147376+00	2023-09-13 05:56:45.147376+00	\N	\N	\N	\N	77.30684	24.64346	\N	\N
ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	isadate_test	Isadate	Test	isadate@mailinator.com	other	1972-04-19	\N	active	2023-09-19 15:40:05.054248+00	2023-09-19 15:40:05.054248+00	Mon, Tue, Wed, Thu, Fri	10:00 - 19:00	Mon, Tue, Wed, Thu, Fri, Sat, Sun	22:00 - 06:00	77.2889302677	24.6319446315	d3ggzpO6T2CwnRy5Y3fzZe:APA91bHcPQE8hIs9SaNIA0sCksKbbsHSGecctGy0jPj4iwNwNZSrylvhjPtZ4_Xi7LrpppFAlozCgXOsiYr336EYTGR38DfxSbqrCxwt8mK6p8jZQV5H4Gior3_xEY8N-0kT1NaA094I	{"deviceId":"TE1A.220922.033","device":"emu64a","baseOS":"","manufacturer":"Google","apiLevel":33,"IpAddress":"","maxMemory":"","androidId":"","usedMemory":"","MacAddress":"","deviceName":"sdk_gphone64_arm64"}
\.


--
-- Data for Name: _chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_chats" ("id", "user_id", "created_at", "updated_at", "chat_type", "chat_name", "status") FROM stdin;
5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4	2023-10-05 11:14:38.687083+00	2023-10-05 11:14:38.687083+00	onetoone	Isa&Gaurav	active
5d00d466-65a3-4981-a364-f3bb7b8f9464	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-10-05 11:16:19.811332+00	2023-10-05 11:16:19.811332+00	onetoone	Isadate Test&Gaurav Bhargava	active
17728571-d471-499f-ae9a-e293ab57a784	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-10-05 11:17:24.90846+00	2023-10-05 11:17:24.90846+00	onetoone	Isadate Test&Krishna Singh	active
c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-10-05 11:19:55.91338+00	2023-10-05 11:19:55.91338+00	onetoone	Isadate Test&Rahul Raikwar	active
73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-10-13 07:03:30.073891+00	2023-10-13 07:03:30.073891+00	onetoone	Isadate & Krishna	active
54eba229-b4e6-4a17-8cd3-85157ed87179	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-10-13 11:42:57.77123+00	2023-10-13 11:42:57.77123+00	group	Group	active
c1cd836f-ded9-4af4-9caa-d0dfcdc4e73e	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-10-13 12:05:56.314608+00	2023-10-13 12:05:56.314608+00	group	Group2	active
\.


--
-- Data for Name: _chat_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_chat_audiences" ("id", "role", "status", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
56569e69-774c-4267-b747-e817d1ff2a24	user	active	2023-10-05 11:14:38.97303+00	2023-10-05 11:14:38.97303+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
74fd6daa-1916-43ef-b590-ceb680164e3b	user	active	2023-10-05 11:14:38.97303+00	2023-10-05 11:14:38.97303+00	5b335904-dab1-4fb8-8ec0-0283008517b4	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
3b0f0527-cfa7-4967-9be2-47716604f990	user	active	2023-10-05 11:16:20.084339+00	2023-10-05 11:16:20.084339+00	5d00d466-65a3-4981-a364-f3bb7b8f9464	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
e3aa164b-07da-4fbc-8c5d-827e7e509ceb	user	active	2023-10-05 11:16:20.084339+00	2023-10-05 11:16:20.084339+00	5d00d466-65a3-4981-a364-f3bb7b8f9464	11404476-acd0-4da5-9b60-9cfae5bc12c4
93a86a1a-c9eb-4872-9024-714b8b643c11	user	active	2023-10-05 11:17:25.20947+00	2023-10-05 11:17:25.20947+00	17728571-d471-499f-ae9a-e293ab57a784	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
b7d5d89a-c7b1-45de-9cb1-2406c3887e44	user	active	2023-10-05 11:17:25.20947+00	2023-10-05 11:17:25.20947+00	17728571-d471-499f-ae9a-e293ab57a784	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23
7985ad5f-fd98-4771-bf1f-db89c8470fc9	user	active	2023-10-05 11:19:56.201329+00	2023-10-05 11:19:56.201329+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
4acca3ad-b39e-456c-af09-43076328e082	user	active	2023-10-05 11:19:56.201329+00	2023-10-05 11:19:56.201329+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	28850701-5473-44c2-99c9-747ad8013ec5
5a05a7b5-c388-4651-a84f-e96c707b3af0	user	active	2023-10-13 07:03:30.360937+00	2023-10-13 07:03:30.360937+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
bff30104-fc07-4c89-8acf-f99a448aa723	user	active	2023-10-13 07:03:30.360937+00	2023-10-13 07:03:30.360937+00	73b1b640-e576-4d78-938c-d289f388e94c	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23
df92a427-1425-4867-85f7-18bb96fd5b83	user	active	2023-10-13 11:42:58.058662+00	2023-10-13 11:42:58.058662+00	54eba229-b4e6-4a17-8cd3-85157ed87179	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23
06b9e855-3d8d-4af3-99ec-a4d0d480c57d	user	active	2023-10-13 11:42:58.058662+00	2023-10-13 11:42:58.058662+00	54eba229-b4e6-4a17-8cd3-85157ed87179	b23787cb-1c0b-452f-af87-9d7276146e51
dd6c756f-ddb7-47d6-81ec-c0bff5d9cef6	user	active	2023-10-13 11:42:58.058662+00	2023-10-13 11:42:58.058662+00	54eba229-b4e6-4a17-8cd3-85157ed87179	28850701-5473-44c2-99c9-747ad8013ec5
76b6fa29-5ce5-4021-aca5-076956190110	user	active	2023-10-13 11:42:58.058662+00	2023-10-13 11:42:58.058662+00	54eba229-b4e6-4a17-8cd3-85157ed87179	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4
426f281d-210a-499a-ade7-7c8bdfd09580	user	active	2023-10-13 11:42:58.058662+00	2023-10-13 11:42:58.058662+00	54eba229-b4e6-4a17-8cd3-85157ed87179	11404476-acd0-4da5-9b60-9cfae5bc12c4
fa55179f-a0e9-439d-991a-1523ee5680ac	admin	active	2023-10-13 11:42:58.058662+00	2023-10-13 11:42:58.058662+00	54eba229-b4e6-4a17-8cd3-85157ed87179	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
2921daa5-3bb4-43cc-b2c9-22206a899008	user	active	2023-10-13 12:05:56.599086+00	2023-10-13 12:05:56.599086+00	c1cd836f-ded9-4af4-9caa-d0dfcdc4e73e	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23
954fc040-df94-4090-9273-d00f413a6f27	user	active	2023-10-13 12:05:56.599086+00	2023-10-13 12:05:56.599086+00	c1cd836f-ded9-4af4-9caa-d0dfcdc4e73e	b23787cb-1c0b-452f-af87-9d7276146e51
77ff66ad-a0b7-4705-bede-9086ff5ed4a0	user	active	2023-10-13 12:05:56.599086+00	2023-10-13 12:05:56.599086+00	c1cd836f-ded9-4af4-9caa-d0dfcdc4e73e	28850701-5473-44c2-99c9-747ad8013ec5
3697f7df-a444-4265-8a4a-8ee4dcbb9842	user	active	2023-10-13 12:05:56.599086+00	2023-10-13 12:05:56.599086+00	c1cd836f-ded9-4af4-9caa-d0dfcdc4e73e	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4
37067ec1-be9f-4ee6-9a2e-94bd2c44ec28	admin	active	2023-10-13 12:05:56.599086+00	2023-10-13 12:05:56.599086+00	c1cd836f-ded9-4af4-9caa-d0dfcdc4e73e	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
\.


--
-- Data for Name: _chat_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_chat_messages" ("id", "message", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
81fe3083-5d3d-4ffd-a426-d0368a183ccc	hey.......@@@	2023-10-10 08:44:56.57938+00	2023-10-10 08:44:56.57938+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
4f76af10-8d9f-453e-b3ae-97e5e175d847	hey.......@@@	2023-10-10 08:45:57.826867+00	2023-10-10 08:45:57.826867+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
20d88151-4900-4e37-a94a-83c1a6165c42	hey.......@@@	2023-10-10 08:48:19.726391+00	2023-10-10 08:48:19.726391+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
5ba3c2fd-e228-4dc7-8d30-e3826f86627c	hey.......@@@	2023-10-10 08:52:48.778959+00	2023-10-10 08:52:48.778959+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
09593f91-5539-44e4-8e7a-7ddcc790d175	hey.......@@@	2023-10-10 09:04:44.041423+00	2023-10-10 09:04:44.041423+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
4b522eba-4b30-4085-b67f-2de83a3229c2	hey.......@@@	2023-10-10 09:05:32.317967+00	2023-10-10 09:05:32.317967+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
39180616-8ef0-44e3-b62f-1052a53689f6	hey.......@@@	2023-10-10 09:06:35.995891+00	2023-10-10 09:06:35.995891+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
7a3d2dd9-713c-4f95-ba3a-c3da8b2bc12e	hey.......@@@	2023-10-10 09:09:51.976321+00	2023-10-10 09:09:51.976321+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
5750cb99-e63c-4fe5-a34e-9415baf13c77	hey.......@@@	2023-10-10 09:10:55.137307+00	2023-10-10 09:10:55.137307+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
6913064b-21e9-4e40-9c7d-0bdbce20dea3	hey.......@@@	2023-10-10 09:11:09.318916+00	2023-10-10 09:11:09.318916+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
d50aeb81-04d7-45ec-8474-ce5fea60ea81	hey.......@@@	2023-10-10 09:19:02.787796+00	2023-10-10 09:19:02.787796+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
d4284db5-09bc-48e7-a3e4-c476acd1a7c5	hey.......@@@	2023-10-10 09:37:23.41115+00	2023-10-10 09:37:23.41115+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
f4845491-b1fd-45c5-a352-b3aefd42648a	hey.......@@@	2023-10-10 12:30:26.590442+00	2023-10-10 12:30:26.590442+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
f6e6f931-36fd-4e41-85ea-44b391d0fa06	hey.......@@@	2023-10-10 12:32:19.873099+00	2023-10-10 12:32:19.873099+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
b401599f-a474-4ca3-b59f-bbd05f012a1b	hey.......@@@	2023-10-10 12:32:20.14118+00	2023-10-10 12:32:20.14118+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
860cfe99-48ab-49d0-b345-4d380a773fb4	hey.......@@@	2023-10-10 12:41:56.694617+00	2023-10-10 12:41:56.694617+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
b82be44f-12b3-4d93-bffd-8f0c6b01bf6b	hey.......@@@	2023-10-10 12:42:09.372573+00	2023-10-10 12:42:09.372573+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
4cf58476-d77e-4af1-8f9d-4197304ab02d	hey.......@@@	2023-10-10 13:25:32.908894+00	2023-10-10 13:25:32.908894+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
8f22f64b-4a5f-4889-b1c9-3c4ac9974c09	hey.......@@@	2023-10-10 13:25:44.248061+00	2023-10-10 13:25:44.248061+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
0ebfaf9c-0318-4549-976c-abd8fe05dbb5	hey, this is vanue photosssss	2023-10-12 11:05:33.540327+00	2023-10-12 11:05:33.540327+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
786309ed-10e4-4306-818d-980cc8a8f1cd	What about this plan	2023-10-12 14:30:12.690233+00	2023-10-12 14:30:12.690233+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
96d0857e-6338-4ea0-9856-bac30d17b06d	hi	2023-10-13 07:03:32.311876+00	2023-10-13 07:03:32.311876+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
a7d5907e-ff47-4f53-8af4-4d114ec59e1c	hello	2023-10-13 07:03:51.461916+00	2023-10-13 07:03:51.461916+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
f107952a-5a9d-4265-ba05-6884d1a74757	how r u	2023-10-13 07:03:59.794743+00	2023-10-13 07:03:59.794743+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
039feef7-4af9-4e0f-ac1d-c8cc82385574	fine	2023-10-13 07:23:39.857084+00	2023-10-13 07:23:39.857084+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
bbce13b8-51c2-45fb-b0bc-b622d35597c2	hello	2023-10-13 07:53:58.832634+00	2023-10-13 07:53:58.832634+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
0babc7a4-cbe2-4782-ba6c-9d20efe8aa8b	hoi	2023-10-13 07:55:29.914459+00	2023-10-13 07:55:29.914459+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
81e255c5-e2ee-4c7c-ad1e-75cee0759280	hi	2023-10-13 07:55:58.522187+00	2023-10-13 07:55:58.522187+00	73b1b640-e576-4d78-938c-d289f388e94c	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
f3b593cf-5d01-4580-919a-db26a87f4c86	hello.....frnd	2023-10-13 10:19:35.449569+00	2023-10-13 10:19:35.449569+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
da218867-3254-48a2-a804-dd62196a21de	hello.....frnd	2023-10-13 10:19:55.805487+00	2023-10-13 10:19:55.805487+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
6aebb8f4-500e-4781-99c9-9fbdfadc65c9	hello.....frnd	2023-10-13 10:20:17.708394+00	2023-10-13 10:20:17.708394+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
f6e2d82c-4a30-4e39-88d7-e216aa4cc1c4	Lets take a vote	2023-10-13 10:43:57.564013+00	2023-10-13 10:43:57.564013+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
69ff080d-1396-4a21-876b-3a9490572785	Suggest plan	2023-10-13 10:58:13.480861+00	2023-10-13 10:58:13.480861+00	c6638bbb-012c-448d-9384-5ee1d9eb4b2b	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
d5482c5a-679e-418b-9147-579653f27f3a	last messages	2023-10-10 13:26:05.550944+00	2023-10-10 13:26:05.550944+00	5b335904-dab1-4fb8-8ec0-0283008517b4	11404476-acd0-4da5-9b60-9cfae5bc12c4
\.


--
-- Data for Name: _events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_events" ("id", "title", "venue", "description", "reminder", "is_solo", "is_important", "start_date", "end_date", "start_time", "end_time", "created_at", "updated_at", "user_id", "venue_long", "venue_lat", "is_reminder_sent", "status", "is_early_reminder") FROM stdin;
a4b2b475-20d7-4aff-bb9b-d3fd9881f0b9	Chanderiiiiii	Chanderi	ETFF	30minsbefore	f	f	2023-09-30	2023-10-05	1300	1900	2023-09-29 09:09:22.257007+00	2023-09-29 09:09:22.257007+00	a1910359-9cb4-4f48-b3f9-e7eeeecb537f	\N	\N	t	\N	f
909f85b9-b7d2-43cc-a209-79d805567d5f	Meeting	we		sameday	t	t	2023-09-22	2023-09-22	0	100	2023-09-22 06:07:07.592574+00	2023-09-22 06:07:07.592574+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	f	\N	f
78743eb9-75e3-431f-bd7a-dd4b5c1fa688	Meeting	we		sameday	t	t	2023-09-22	2023-09-22	0	100	2023-09-22 06:08:35.649249+00	2023-09-22 06:08:35.649249+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	f	\N	f
9dbed63a-fc86-4890-837f-716f33ce2ac6	Meeting	as		sameday	t	t	2023-09-22	2023-09-22	1200	1300	2023-09-22 06:09:52.644656+00	2023-09-22 06:09:52.644656+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	f	\N	f
81c6e46e-17da-47eb-bfa3-aa7e6d191729	Dinner	fg		sameday	t	f	2023-09-22	2023-09-22	0	100	2023-09-22 06:10:11.899045+00	2023-09-22 06:10:11.899045+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	f	\N	f
f86d0d1b-61a3-4843-82d6-38ee4b3157f9	Final meeting	raj vilas hotel	ETFF	30minsbefore	f	f	2023-10-28	2023-10-29	1300	1900	2023-10-10 05:55:58.418001+00	2023-10-10 05:55:58.418001+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	active	f
df42b8d4-5bea-4283-8135-2d3536e16c35	Get together meeting	Raj villas hotel	ETFF	30minsbefore	f	f	2023-10-28	2023-10-29	1300	1900	2023-10-10 10:54:43.757486+00	2023-10-10 10:54:43.757486+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	active	f
2e1c607b-8b67-4a02-bdb3-1fc6f1283283	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:12:52.621973+00	2023-10-13 09:12:52.621973+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
27e07d22-42c6-4aed-b9ed-f8422bd57347	Trip Planning	Chanderi	ETFF	30minsbefore	f	f	2023-10-05	2023-10-05	1300	1900	2023-10-03 06:55:10.597683+00	2023-10-03 06:55:10.597683+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8	Chanderi planning	Chanderi	ETFF	30minsbefore	f	f	2023-09-30	2023-10-05	1300	1900	2023-09-29 11:24:43.268505+00	2023-09-29 11:24:43.268505+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	\N	\N	t	\N	f
dbbc98ac-7c75-4324-9b86-c4835e6c247a	Brunch meeting	Indore		sameday	f	t	2023-09-23	2023-09-23	1100	1200	2023-09-23 05:04:26.105018+00	2023-09-23 05:04:26.105018+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
4ea824b3-c621-45ef-9f85-87501cccb68a	Planning	Chanderi	ETFF	30minsbefore	f	f	2023-09-30	2023-10-05	1300	1900	2023-09-29 14:07:51.557648+00	2023-09-29 14:07:51.557648+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
0bbf85bb-95c7-46dc-bdce-0d61686fcaf4	Trip Planning	Chanderi	ETFF	30minsbefore	f	f	2023-09-30	2023-10-05	1300	1900	2023-09-29 15:01:46.457073+00	2023-09-29 15:01:46.457073+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
cab51dad-f284-44d7-acfb-657825980bce	Meeting	tyui		sameday	f	t	2023-09-29	2023-09-29	2300	0	2023-09-29 15:51:29.401877+00	2023-09-29 15:51:29.401877+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
7899be19-b8a6-4c86-b494-acf40aea5ee8	Annual meetinggg	delhi6	ETF	30minsbefore	f	f	2023-09-27	2023-09-28	1300	1900	2023-09-22 13:08:36.933236+00	2023-09-22 13:08:36.933236+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
2506cba0-b615-40ba-8c12-7a585bf792c7	Trivago	Moon	ETFF	30minsbefore	t	f	2023-10-10	2023-10-10	1300	1900	2023-10-06 11:06:15.720278+00	2023-10-06 11:06:15.720278+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	f	\N	f
39da1675-8575-426e-8d09-065389d73893	Meeting	Yt		sameday	t	t	2023-09-22	2023-09-22	0	100	2023-09-22 05:53:12.530713+00	2023-09-22 05:53:12.530713+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	f	\N	f
a556e5f0-a097-4582-81ea-a178764c8688	Dinner	varun		sameday	f	t	2023-09-22	2023-09-22	1900	2000	2023-09-22 12:54:33.084146+00	2023-09-22 12:54:33.084146+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
7de60274-4b65-41aa-ab71-bf5997ebf7c2	Monthly meeting	indore	ETFF	30minsbefore	f	f	2023-09-27	2023-09-28	1300	1900	2023-09-26 10:40:13.536914+00	2023-09-26 10:40:13.536914+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
374e7995-5a7d-442d-8db0-a04dcf8d924b	Last meeting	indore	ETFF	30minsbefore	f	f	2023-09-27	2023-09-28	1300	1900	2023-09-27 10:50:26.247117+00	2023-09-27 10:50:26.247117+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
1fb1c2ca-e44f-4f62-b47c-afd3cca390ff	Meeting awsdad dad dasd adasd 	Guna		sameday	f	t	2023-09-30	2023-09-30	2200	2300	2023-09-29 15:56:34.604601+00	2023-09-29 15:56:34.604601+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
0be0ea0e-2100-48e5-bf9f-0f2a5473ada9	Meeting	varun		sameday	f	t	2023-09-22	2023-09-22	2000	2100	2023-09-22 13:30:57.718533+00	2023-09-22 13:30:57.718533+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
972e5cc2-18b7-4b17-948a-6175ff766da0	Meeting	kolkata		sameday	t	f	2023-09-22	0002-09-28	1900	2000	2023-09-22 12:54:11.900137+00	2023-09-22 12:54:11.900137+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	f	\N	f
3f896e5c-2a78-4c59-9370-210390f1c4f7	Brunch	Guna		sameday	f	f	2023-09-27	2023-09-28	1200	1300	2023-09-26 06:18:15.616615+00	2023-09-26 06:18:15.616615+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
d796974c-5238-4830-bef3-4231298642c0	Final meeting	indore	ETFF	30minsbefore	f	f	2023-09-28	2023-09-29	1300	1900	2023-09-27 11:54:03.138856+00	2023-09-27 11:54:03.138856+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
830d94aa-d7a7-482e-95ef-286b1412aa8b	Brunch meeting	Goa		sameday	f	t	2023-09-24	2023-09-24	1100	1200	2023-09-22 10:22:24.955466+00	2023-09-22 10:22:24.955466+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
d2d6d79a-f002-4b7a-9515-0a699b5ef842	Meetting	Indore		sameday	t	t	2023-09-29	2023-09-29	2200	2300	2023-09-29 15:33:05.898207+00	2023-09-29 15:33:05.898207+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	f	\N	f
e1d7d470-8b41-4b41-bf0d-e70686071bbb	Testingggggggg meeting	hotel sayaji, indore	ETF	30minsbefore	f	f	2023-09-27	2023-09-28	1300	1900	2023-09-22 13:10:08.023079+00	2023-09-22 13:10:08.023079+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	75.8577	22.7196	t	\N	f
d2eb1bcd-e88b-42d7-b861-382782b98c68	Chanderi meeting	Chanderi	ETFF	30minsbefore	t	f	2023-09-30	2023-10-05	1300	1900	2023-09-29 09:03:32.559836+00	2023-09-29 09:03:32.559836+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
b6d5bfad-188f-42b5-a0d1-fb22b5f85ec8	Meeting	Guna		sameday	f	t	2023-10-10	2023-10-10	1500	1600	2023-10-10 07:44:13.20054+00	2023-10-10 07:44:13.20054+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	\N	f
4b40f895-bc39-490a-ad83-f0a6034809d9	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:15:01.222416+00	2023-10-13 09:15:01.222416+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
993288dc-8adc-4a45-bb9d-9acdb50be5df	Chaturthi meeting	indore	ETFF	30minsbefore	t	f	2023-09-28	2023-09-29	1531	1900	2023-09-28 08:45:09.923972+00	2023-09-28 08:45:09.923972+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	\N	t	\N	f
4576f9fe-9b8b-4dda-a190-b7a8843543de	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:16:57.442195+00	2023-10-13 09:16:57.442195+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
7c6be7e7-d33a-4465-8ee2-2bd72dc50808	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:18:42.828814+00	2023-10-13 09:18:42.828814+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
94c72471-dfce-441d-bb8d-8f3f5867fdad	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:24:26.140231+00	2023-10-13 09:24:26.140231+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
c7830546-56d7-45cd-809f-ffd8c0c2af4c	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:19:22.130004+00	2023-10-13 09:19:22.130004+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
745d0021-6424-47ee-b86d-7d417140388f	meeting	hotel vyas	ETFF	30minsbefore	f	f	2023-10-28	2023-10-29	1300	1900	2023-10-10 11:07:23.664018+00	2023-10-10 11:07:23.664018+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	\N	24.6721739	t	\N	f
d4d5017c-26a5-4021-b012-999059602bd4	meeting	hotel paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 07:31:05.594319+00	2023-10-13 07:31:05.594319+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
dd70e12c-f98e-41a3-84ef-e60ec0ca0eb1	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:19:36.82768+00	2023-10-13 09:19:36.82768+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
73d719d2-dc44-47c7-85c4-76813aeb2a35	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:21:11.326287+00	2023-10-13 09:21:11.326287+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
61302e1c-1927-4773-9a19-a40d54dd7250	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:24:08.278282+00	2023-10-13 09:24:08.278282+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
1f9e0609-460d-4f77-98ab-8668fa2c3e97	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:25:33.478091+00	2023-10-13 09:25:33.478091+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
81b8c152-76d8-4e35-91eb-65567e0a18da	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:37:10.131807+00	2023-10-13 09:37:10.131807+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
cc3d1554-c455-451f-af5b-3418bb918851	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:39:28.497812+00	2023-10-13 09:39:28.497812+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
3ca41b3b-09a6-40c4-8047-f12fd9d3b78a	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:47:00.368663+00	2023-10-13 09:47:00.368663+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
4a07564b-adb4-42b5-b826-bf5c8c750579	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:48:06.701979+00	2023-10-13 09:48:06.701979+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
bff9c85b-5ac5-4694-9219-eb2893e59827	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 09:48:56.500194+00	2023-10-13 09:48:56.500194+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
a1fdbfb3-fdbc-4518-9116-a6053c8c1f4b	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:00:37.447207+00	2023-10-13 10:00:37.447207+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
d8464d29-fc5a-492c-8e3f-5f5eee6f508a	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:04:46.001196+00	2023-10-13 10:04:46.001196+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
afe445ba-b946-4c41-9a8a-2077fff6af94	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:05:11.40484+00	2023-10-13 10:05:11.40484+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
ac929539-fbf2-4d1b-93f7-e7f271d800fe	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:06:58.583608+00	2023-10-13 10:06:58.583608+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
636146bb-96c6-4ef3-8d5c-a5e7a2f5db0f	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:28:30.30801+00	2023-10-13 10:28:30.30801+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
92bdc75a-7785-43d2-bb6a-ca705c3c2b33	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:29:19.056199+00	2023-10-13 10:29:19.056199+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
518f2ac1-802c-4a88-8377-eafa73721ab4	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:32:03.711388+00	2023-10-13 10:32:03.711388+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
63395380-438a-4c9e-b17c-5826cacc69b0	meeting	hotel vyas	ETFF	30minsbefore	f	f	2023-10-28	2023-10-13	2200	2300	2023-10-13 10:34:18.15351+00	2023-10-13 10:34:18.15351+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	draft	f
9ef21513-3ba5-4202-a036-f1af9eaf99e0	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:39:10.299721+00	2023-10-13 10:39:10.299721+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
b29ce0df-6a5a-4fd5-a003-0ec861ca91ab	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:39:25.732899+00	2023-10-13 10:39:25.732899+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	f	\N	f
d6900aa2-2c96-4f4d-8e3a-fd99c9c1e7fc	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:39:45.804897+00	2023-10-13 10:39:45.804897+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
8ae7eca2-00fe-4afc-aa21-aabec1032792	last meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-11-28	2023-11-29	1300	1900	2023-10-13 10:48:47.78512+00	2023-10-13 10:48:47.78512+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	\N	f
7c55ddba-d0a8-48e1-9e50-287a51bbf786	B2B meeting	hotel the paramjeet	ETFF	30minsbefore	f	f	2023-10-13	2023-10-13	1460	1900	2023-10-13 13:39:46.220467+00	2023-10-13 13:39:46.220467+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	77.3317288	24.6721739	t	active	f
8b50e0dd-d97b-4afe-be41-5bd589823ada	Meeting	Guna		sameday	f	t	2023-10-14	2023-10-14	0	100	2023-10-13 16:08:39.051401+00	2023-10-13 16:08:39.051401+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	active	f
a275e48e-8245-4632-8d49-5b2da091382a	Meeting	Kolkata		sameday	f	f	2023-10-13	2023-10-13	2200	2400	2023-10-13 10:58:10.933347+00	2023-10-13 10:58:10.933347+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	\N	\N	t	active	f
\.


--
-- Data for Name: _chat_message_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_chat_message_attachments" ("id", "created_at", "updated_at", "file_name", "url", "chat_id", "message_id", "event_id") FROM stdin;
ffb31125-55a1-44e8-b439-e98f66c341b5	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-05-12 11-34-12.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-12 11-34-12.png	\N	\N	\N
5d159d9e-c6ec-4e4e-8791-5c371bf85e34	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-05-24 11-44-27.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-24 11-44-27.png	\N	\N	\N
7409a96e-f605-4ffe-82c5-08c4b2183db2	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-05-31 19-37-51.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 19-37-51.png	\N	\N	\N
d34526ce-f169-49e6-aa33-d398c522d4e3	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-05-31 23-14-24.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-14-24.png	\N	\N	\N
8e5d17c1-605e-4c65-b33b-8cf210136621	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-05-31 23-14-32.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-14-32.png	\N	\N	\N
1b890708-8c92-4eca-ace9-ff2fa549c508	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-05-31 23-17-48.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-17-48.png	\N	\N	\N
bc19cab0-55e7-4033-8564-94b7d87e172b	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-06-08 20-44-37.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-08 20-44-37.png	\N	\N	\N
57b177c8-8958-48a5-ad90-540d40e6b496	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-06-20 12-25-02.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-20 12-25-02.png	\N	\N	\N
389ec325-dba3-4696-bf45-624dbd17ebe7	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-06-21 15-45-02.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-21 15-45-02.png	\N	\N	\N
8c0fbd8f-d3b5-4313-859c-950c2e515291	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-07-05 11-40-26.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-05 11-40-26.png	\N	\N	\N
9725ccf1-dbe0-4353-8da2-8f3189f29650	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-07-18 20-00-01.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-18 20-00-01.png	\N	\N	\N
bcd7e602-4ff9-4807-a912-4a2464024984	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-07-27 12-52-22.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-27 12-52-22.png	\N	\N	\N
a13da0d3-fa2d-4c35-8666-ad197ed9202e	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-08-02 12-23-04.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-02 12-23-04.png	\N	\N	\N
2e30160c-c59b-4f89-8b98-36550cf0f615	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-08-11 21-22-50.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-11 21-22-50.png	\N	\N	\N
3bb590fd-b553-4347-ba8e-c24eff4d9f21	2023-08-28 10:54:41.522958+00	2023-08-28 10:54:41.522958+00	Screenshot from 2023-08-17 12-09-43.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-17 12-09-43.png	\N	\N	\N
0d193770-c1be-448e-8fa4-f38607cb6f01	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-05-12 11-34-12.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-12 11-34-12.png	\N	\N	\N
b4a9c0dc-76f1-4b98-87d4-e48b288f3c69	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-05-24 11-44-27.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-24 11-44-27.png	\N	\N	\N
eebd0b84-0d54-4cd6-8f68-6f2a91e4c9d3	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-05-31 19-37-51.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 19-37-51.png	\N	\N	\N
10dab540-8d75-41c8-85c6-65bd7c77f4fa	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-05-31 23-14-24.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-14-24.png	\N	\N	\N
089cd2fb-10bb-4344-ac4f-6f86ed4f28bc	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-05-31 23-14-32.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-14-32.png	\N	\N	\N
df31479d-a324-42f1-b5ad-8dfd6ed80cfa	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-05-31 23-17-48.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-17-48.png	\N	\N	\N
508d150e-8008-4257-9dab-c8c78ef916d6	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-06-08 20-44-37.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-08 20-44-37.png	\N	\N	\N
fa42667b-7cf1-489b-910d-3b446676616a	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-06-20 12-25-02.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-20 12-25-02.png	\N	\N	\N
5bf88d8d-5938-4d88-a1fa-a5430402adf0	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-06-21 15-45-02.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-21 15-45-02.png	\N	\N	\N
9c085e41-270e-4903-bdba-bfca8ca58e70	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-07-05 11-40-26.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-05 11-40-26.png	\N	\N	\N
90bba001-30ea-4f96-b835-95f60fb33081	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-07-18 20-00-01.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-18 20-00-01.png	\N	\N	\N
f658c735-b237-4c5b-89be-5d8660aaccbb	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-07-27 12-52-22.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-27 12-52-22.png	\N	\N	\N
0b7ad1a9-efb5-444c-b61f-1434f374fa07	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-08-02 12-23-04.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-02 12-23-04.png	\N	\N	\N
6b928e63-f13e-4d59-a871-b4b972348575	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-08-11 21-22-50.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-11 21-22-50.png	\N	\N	\N
8471a46b-67c9-4140-ab61-71f43ed5e2da	2023-08-28 10:55:43.553154+00	2023-08-28 10:55:43.553154+00	Screenshot from 2023-08-17 12-09-43.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-17 12-09-43.png	\N	\N	\N
2528d43d-aec3-4d88-861d-422e766c6cc4	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-05-12 11-34-12.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-12 11-34-12.dba1d28c-da55-4a2b-b6ce-d18c7ee65717.png	\N	\N	\N
7d9f9c91-c501-45f3-8c6f-3cfc1ae8697b	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-05-24 11-44-27.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-24 11-44-27.23b15996-16ec-4568-b6be-de26755c98ab.png	\N	\N	\N
1f618e43-c9a3-41a2-a432-fe5c95602470	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-05-31 19-37-51.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 19-37-51.29dcd6b7-7ef8-4032-be05-4af34fd01984.png	\N	\N	\N
473e401d-6ed2-4ad1-ac3e-210ee6921c7e	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-05-31 23-14-24.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-14-24.a22d0e99-e407-408f-aeb8-6a29e5eae7ff.png	\N	\N	\N
80290b0e-9202-419e-af3c-cadf0828d729	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-05-31 23-14-32.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-14-32.c36c54d8-b301-41a4-9cc9-74746003c734.png	\N	\N	\N
3c452f5e-0d24-4dde-8beb-25d117a9f89b	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-05-31 23-17-48.png	http://localhost:8000/mediaclear==/Screenshot from 2023-05-31 23-17-48.51711521-2c30-4f0d-aa1e-b6d266f0a2c9.png	\N	\N	\N
212ef770-aaf3-4343-8951-1a8ac6412b53	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-06-08 20-44-37.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-08 20-44-37.6a0bd6a4-0d46-4737-a5e4-a59607786963.png	\N	\N	\N
dbdf4fdf-1f00-4353-bf68-4e5eb556904e	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-06-20 12-25-02.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-20 12-25-02.f9687569-bf12-4389-8f0c-fae82f32917b.png	\N	\N	\N
d1e2c73e-fc71-4c00-9a2c-773fa24931d5	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-06-21 15-45-02.png	http://localhost:8000/mediaclear==/Screenshot from 2023-06-21 15-45-02.f0936e8b-3174-4af6-8df5-a0ecc8b8f730.png	\N	\N	\N
876a76bf-0955-4d8e-9dbd-10130a9f0c63	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-07-05 11-40-26.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-05 11-40-26.2c503c3d-8389-49ae-89c8-3a6b157b3603.png	\N	\N	\N
669bd15a-8eaa-4446-a02a-7ae556cba349	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-07-18 20-00-01.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-18 20-00-01.d74d0a1f-d34b-49f9-a979-ece0ef961a6b.png	\N	\N	\N
bb105003-5982-498c-baff-39351e945ac4	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-07-27 12-52-22.png	http://localhost:8000/mediaclear==/Screenshot from 2023-07-27 12-52-22.34957876-7b91-42ac-9e71-c5df8f5d2e79.png	\N	\N	\N
c956ae69-8ba9-4c9e-b106-71c198f08419	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-08-02 12-23-04.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-02 12-23-04.a076563d-7cb1-4a9e-9f5a-04825e718210.png	\N	\N	\N
be491d9f-542d-424a-81e0-39e049ac7e43	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-08-11 21-22-50.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-11 21-22-50.ad94ae27-fde0-4332-b9dd-c04761f09187.png	\N	\N	\N
25c3fb59-6d27-4a70-9aac-52ccc5f839f1	2023-08-28 10:56:07.605127+00	2023-08-28 10:56:07.605127+00	Screenshot from 2023-08-17 12-09-43.png	http://localhost:8000/mediaclear==/Screenshot from 2023-08-17 12-09-43.96f2fbac-9831-4ddb-a294-5ddc3ae224c0.png	\N	\N	\N
4586312d-5156-47ea-b38f-fd377d465f6f	2023-08-28 12:37:32.617251+00	2023-08-28 12:37:32.617251+00	Piechat.jpeg	http://localhost:8000/mediaclear==/Piechat.e6c01984-41a5-4696-9791-cbed5ce8273a.jpeg	\N	\N	\N
a7416e26-a2cd-4f88-8e8c-5cf518c9c5f1	2023-08-29 06:36:55.603068+00	2023-08-29 06:36:55.603068+00	Loan.svg	http://localhost:8000/mediaclear==/Loan.4e5dd84b-9368-49bd-bc19-e078bbee0096.svg	\N	\N	\N
26387797-569b-443d-9793-8b6bbdb38c8a	2023-09-08 05:11:54.305259+00	2023-09-08 05:11:54.305259+00	findlocation.png	https://pennywise.piecodes.in/findlocation.483a97a8-1505-488b-8b69-cdbd8fe9ae8f.png	\N	\N	\N
824dde1d-38e3-48a1-8786-8d415153b4ef	2023-09-08 05:18:44.511985+00	2023-09-08 05:18:44.511985+00	2023_RE_Bullet_350_m4_444da418e9.jpg	https://pennywise.piecodes.in/2023_RE_Bullet_350_m4_444da418e9.caf4c7bf-2e7d-4e6c-bd45-64189fef4880.jpg	\N	\N	\N
b06b7344-1b71-4334-ba40-ca6062caff53	2023-09-08 05:20:43.173917+00	2023-09-08 05:20:43.173917+00	2023_RE_Bullet_350_m4_444da418e9.jpg	http://localhost:8040/2023_RE_Bullet_350_m4_444da418e9.b08ceee2-0b79-441e-89d0-a3258337d762.jpg	\N	\N	\N
4591b8a6-25b3-4929-ba73-8c658181bde0	2023-09-08 05:21:06.470896+00	2023-09-08 05:21:06.470896+00	2023_RE_Bullet_350_m4_444da418e9.jpg	http://localhost:8040/2023_RE_Bullet_350_m4_444da418e9.29b193e4-063a-48fd-b0ac-b2ef5e66aa28.jpg	\N	\N	\N
6b3c3d76-b1ca-4814-94bd-b53b8508ddda	2023-09-08 05:28:36.036023+00	2023-09-08 05:28:36.036023+00	2023_RE_Bullet_350_m4_444da418e9.jpg	http://localhost:8040/2023_RE_Bullet_350_m4_444da418e9.7fbd9a5b-eb0b-4776-8771-1ccdb9b810cb.jpg	\N	\N	\N
bf36d4ba-525d-4da1-94b1-6d81385ec753	2023-10-06 11:06:57.109909+00	2023-10-06 11:06:57.109909+00	findlocation.png	http://localhost:8000/findlocation.f1471028-461d-492d-8430-4bcefd4f93ed.png	\N	\N	2506cba0-b615-40ba-8c12-7a585bf792c7
0bf419e3-7903-47f5-8b2a-54f862f6bc3f	2023-10-09 05:38:46.857078+00	2023-10-09 05:38:46.857078+00	2023_RE_Bullet_350_m4_444da418e9.jpg	http://localhost:8000/2023_RE_Bullet_350_m4_444da418e9.40721ee8-38bc-421c-92e8-819b9bb2bfc1.jpg	\N	\N	2506cba0-b615-40ba-8c12-7a585bf792c7
dcdd2e32-9d20-444e-8882-8ab544948568	2023-10-10 05:56:51.770801+00	2023-10-10 05:56:51.770801+00	Screenshot_20230919_212919.png	http://localhost:8000/Screenshot_20230919_212919.d9170a02-cc9b-4187-8345-eb0953f24743.png	\N	\N	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
b5433df2-d0f5-4c60-bd42-a0e273d7c6ba	2023-10-10 06:01:16.10466+00	2023-10-10 06:01:16.10466+00	Zugpsitze_mountain.jpg	http://localhost:8000/Zugpsitze_mountain.9ebde0a2-7fa8-481d-8a1b-d578ac6eb5cd.jpg	\N	\N	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
05870e57-47bf-4edd-bf31-12b77fe20dcc	2023-10-10 06:03:18.379416+00	2023-10-10 06:03:18.379416+00	Zugpsitze_mountain.jpg	http://localhost:8000/mediaZugpsitze_mountain.3d17c569-ce13-4796-8f97-abfd44da333e.jpg	\N	\N	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
e6da2ffe-0cae-4a3f-be81-78cf8b9f814b	2023-10-10 06:03:38.185713+00	2023-10-10 06:03:38.185713+00	Zugpsitze_mountain.jpg	http://localhost:8000/media/Zugpsitze_mountain.9c66eadd-6ca0-4819-9f97-c6b840692dea.jpg	\N	\N	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
8b0fd2b2-cb6c-4ced-92e4-13118ca9da3d	2023-10-10 07:21:05.435091+00	2023-10-10 07:21:05.435091+00	Screenshot 2023-10-10 at 12.50.52 PM.png	http://localhost:8000/media/Screenshot 2023-10-10 at 12.a64c42e3-96fc-428e-aaa0-2ce9db77a1ca.50.52 PM.png	\N	\N	\N
515d2cf1-7870-4739-8a37-de594241e70b	2023-10-10 07:23:02.696148+00	2023-10-10 07:23:02.696148+00	download.jpeg	http://localhost:8000/media/download.f4221e3c-4a35-48e8-92d1-effb5543c08d.jpeg	\N	\N	\N
1a0935c8-cf27-451c-819d-6b19654d821a	2023-10-10 07:24:06.138239+00	2023-10-10 07:24:06.138239+00	Screenshot 2023-10-10 at 12.53.43 PM.png	http://localhost:8000/media/Screenshot 2023-10-10 at 12.91328f39-ad22-4257-8b66-19f537dcf25d.53.43 PM.png	\N	\N	\N
b7d17be7-2c75-4a88-8871-0a1a38c5a023	2023-10-10 07:26:17.791622+00	2023-10-10 07:26:17.791622+00	Screenshot from 2023-09-20 21-20-38.png	http://localhost:8000/media/Screenshot from 2023-09-20 21-20-38.ad9e3008-a741-42c2-8b70-05b0ee9c5708.png	\N	\N	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
293b302b-bfe2-4b39-9948-205b54c639b9	2023-10-10 07:27:38.872897+00	2023-10-10 07:27:38.872897+00	Zugpsitze_mountain.jpg	http://localhost:8000/Zugpsitze_mountain.f7a38b6b-3fa3-4a38-bdf7-b1323baca634.jpg	\N	\N	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
6ee284c2-aa6d-42d4-8513-287a194ed072	2023-10-10 07:33:16.106724+00	2023-10-10 07:33:16.106724+00	download.jpeg	http://localhost:8000/media/download.e1441df3-8780-41b4-b9ff-9cde9b3f6b22.jpeg	\N	\N	\N
ef88d1a5-b7b3-4354-a487-58c2c06aa481	2023-10-10 08:48:20.006413+00	2023-10-10 08:48:20.006413+00	Zugpsitze_mountain.jpg	http://localhost:8000/media/Zugpsitze_mountain.f00ded45-6383-4651-850d-cde54e7f57aa.jpg	\N	20d88151-4900-4e37-a94a-83c1a6165c42	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
51f428be-e036-42f6-8643-f7cca49a22a3	2023-10-10 09:05:32.58897+00	2023-10-10 09:05:32.58897+00	Zugpsitze_mountain.jpg	http://localhost:8000/media/Zugpsitze_mountain.5bdad256-ea6b-4c14-bc1c-f423b4066d3a.jpg	\N	4b522eba-4b30-4085-b67f-2de83a3229c2	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
244b8a0a-42b2-45e7-97ee-7054ea84c0e8	2023-10-10 09:11:09.581942+00	2023-10-10 09:11:09.581942+00	Zugpsitze_mountain.jpg	http://localhost:8000/media/Zugpsitze_mountain.0f4160fd-a592-45d1-b7ac-cbc5c16ac23e.jpg	\N	\N	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
d4b764e5-581a-44c1-8f98-dfa8a59d3c30	2023-10-10 12:41:57.025207+00	2023-10-10 12:41:57.025207+00	\N	\N	\N	860cfe99-48ab-49d0-b345-4d380a773fb4	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
8876ae13-7e2b-47b6-accf-af7a5bc679e6	2023-10-10 12:42:09.634551+00	2023-10-10 12:42:09.634551+00	Zugpsitze_mountain.jpg	http://localhost:8000/media/Zugpsitze_mountain.4f0e15e6-d916-49b9-bb5a-f21608b8e132.jpg	\N	b82be44f-12b3-4d93-bffd-8f0c6b01bf6b	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
8327938f-7f36-4749-97ef-60854306bbcf	2023-10-10 13:25:33.179896+00	2023-10-10 13:25:33.179896+00	Zugpsitze_mountain.jpg	http://localhost:8000/media/Zugpsitze_mountain.3a75980e-a676-4b4e-99ff-d43b2438581c.jpg	\N	4cf58476-d77e-4af1-8f9d-4197304ab02d	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
66e2c6fc-4b36-4ba8-a4fe-c10cc71c164a	2023-10-10 13:26:05.825464+00	2023-10-10 13:26:05.825464+00	\N	\N	\N	d5482c5a-679e-418b-9147-579653f27f3a	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
b735e3b8-8f0b-4cc8-a85b-7b6c8bcdf526	2023-10-12 11:05:33.817338+00	2023-10-12 11:05:33.817338+00	\N	\N	\N	0ebfaf9c-0318-4549-976c-abd8fe05dbb5	f86d0d1b-61a3-4843-82d6-38ee4b3157f9
9223f72b-18f6-4375-9a6d-b12d3acaf4fb	2023-10-12 14:30:12.986178+00	2023-10-12 14:30:12.986178+00	\N	\N	\N	786309ed-10e4-4306-818d-980cc8a8f1cd	df42b8d4-5bea-4283-8135-2d3536e16c35
95725c61-ce2a-4f08-8a71-e4e2e34ab9d0	2023-10-13 07:03:32.618345+00	2023-10-13 07:03:32.618345+00	\N	\N	\N	96d0857e-6338-4ea0-9856-bac30d17b06d	\N
7408f683-9364-4210-b27e-2ad57eb87929	2023-10-13 07:03:51.768496+00	2023-10-13 07:03:51.768496+00	\N	\N	\N	a7d5907e-ff47-4f53-8af4-4d114ec59e1c	\N
0ab0a883-302c-42be-82ed-5cb8fbbaf09e	2023-10-13 07:04:00.085282+00	2023-10-13 07:04:00.085282+00	\N	\N	\N	f107952a-5a9d-4265-ba05-6884d1a74757	\N
55cffdbd-6a9d-4317-945d-18083e1a4f1c	2023-10-13 07:23:40.131577+00	2023-10-13 07:23:40.131577+00	\N	\N	\N	039feef7-4af9-4e0f-ac1d-c8cc82385574	\N
cfc2454d-e1f8-4854-850c-b1db546f562f	2023-10-13 07:53:59.113618+00	2023-10-13 07:53:59.113618+00	\N	\N	\N	bbce13b8-51c2-45fb-b0bc-b622d35597c2	\N
ea1d281b-1cfe-4ace-a706-487ad6423ebf	2023-10-13 07:55:30.224023+00	2023-10-13 07:55:30.224023+00	\N	\N	\N	0babc7a4-cbe2-4782-ba6c-9d20efe8aa8b	\N
adeedd69-c184-4f39-8f56-f61961f45d73	2023-10-13 07:55:58.813852+00	2023-10-13 07:55:58.813852+00	\N	\N	\N	81e255c5-e2ee-4c7c-ad1e-75cee0759280	\N
04080eff-d6b2-46bb-bad8-7094296ea0c1	2023-10-13 10:20:18.023492+00	2023-10-13 10:20:18.023492+00	\N	\N	\N	6aebb8f4-500e-4781-99c9-9fbdfadc65c9	\N
62fe3ee0-19ce-470c-8abf-a09dfd3e42b3	2023-10-13 10:43:57.860551+00	2023-10-13 10:43:57.860551+00	\N	\N	\N	f6e2d82c-4a30-4e39-88d7-e216aa4cc1c4	\N
1500dee5-2106-4292-bf93-0fc755f0e496	2023-10-13 10:58:13.791876+00	2023-10-13 10:58:13.791876+00	\N	\N	\N	69ff080d-1396-4a21-876b-3a9490572785	a275e48e-8245-4632-8d49-5b2da091382a
\.


--
-- Data for Name: _event_attendences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_event_attendences" ("id", "note", "status", "created_at", "updated_at", "user_id", "event_id") FROM stdin;
\.


--
-- Data for Name: _event_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_event_audiences" ("id", "created_at", "updated_at", "user_id", "event_id", "status", "role") FROM stdin;
1d3382fb-6d3c-4170-a65f-7f4f17ed766e	2023-09-23 11:24:43.139663+00	2023-09-23 11:24:43.139663+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	dbbc98ac-7c75-4324-9b86-c4835e6c247a	accepted	participant
00e7eb46-eecf-4eac-b536-9a14fb3a9c8f	2023-09-26 06:43:08.910921+00	2023-09-26 06:43:08.910921+00	28850701-5473-44c2-99c9-747ad8013ec5	7899be19-b8a6-4c86-b494-acf40aea5ee8	accepted	participant
49b19963-7a13-4eba-9dd6-c5c0de7d9b6d	2023-09-26 06:29:32.866505+00	2023-09-26 06:29:32.866505+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	3f896e5c-2a78-4c59-9370-210390f1c4f7	accepted	participant
862ae1b5-10b6-495f-87ff-cbab242bb236	2023-09-26 10:40:13.815899+00	2023-09-26 10:40:13.815899+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	7de60274-4b65-41aa-ab71-bf5997ebf7c2	accepted	participant
ade57b25-db93-4ca4-89e1-1da356b1738c	2023-09-22 13:10:08.286182+00	2023-09-22 13:10:08.286182+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	e1d7d470-8b41-4b41-bf0d-e70686071bbb	accepted	participant
c4b56230-2512-4814-b035-7f5211cd7dfc	2023-09-26 10:40:13.815899+00	2023-09-26 10:40:13.815899+00	6df0604d-ef1e-48b5-8bc2-7275b0f669ef	7de60274-4b65-41aa-ab71-bf5997ebf7c2	accepted	participant
bf4a1a9c-b070-47a5-9cbc-6952f2d7e89c	2023-09-27 10:50:26.537134+00	2023-09-27 10:50:26.537134+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	374e7995-5a7d-442d-8db0-a04dcf8d924b	accepted	host
5b13bf8d-d8df-484a-8387-b1f61bef7bfd	2023-09-26 06:43:08.910921+00	2023-09-26 06:43:08.910921+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	7899be19-b8a6-4c86-b494-acf40aea5ee8	accepted	host
ff831f88-aad1-41f0-b129-1e8023da7949	2023-09-22 13:10:08.286182+00	2023-09-22 13:10:08.286182+00	b23787cb-1c0b-452f-af87-9d7276146e51	e1d7d470-8b41-4b41-bf0d-e70686071bbb	accepted	participant
e5b65a54-9778-4633-93bb-4fcfe063cd1e	2023-09-27 11:54:03.424351+00	2023-09-27 11:54:03.424351+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	d796974c-5238-4830-bef3-4231298642c0	accepted	host
594f7f68-cb46-4322-9f68-b7f95e5f8709	2023-09-22 12:54:33.364108+00	2023-09-22 12:54:33.364108+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	a556e5f0-a097-4582-81ea-a178764c8688	pending	participant
db976958-58e5-4c1e-9fe1-41a1992f1a4d	2023-09-22 12:54:33.364108+00	2023-09-22 12:54:33.364108+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	a556e5f0-a097-4582-81ea-a178764c8688	pending	participant
5771a39b-8049-42ac-9ad6-5313a4a85d02	2023-09-22 12:54:33.364108+00	2023-09-22 12:54:33.364108+00	b23787cb-1c0b-452f-af87-9d7276146e51	a556e5f0-a097-4582-81ea-a178764c8688	pending	participant
7cce4a0c-88f8-4dfc-b7b5-a5faaeff1966	2023-09-22 13:10:08.286182+00	2023-09-22 13:10:08.286182+00	28850701-5473-44c2-99c9-747ad8013ec5	e1d7d470-8b41-4b41-bf0d-e70686071bbb	pending	participant
e02c5e41-44b1-4714-8431-881d6cb96592	2023-09-22 13:30:57.986449+00	2023-09-22 13:30:57.986449+00	b23787cb-1c0b-452f-af87-9d7276146e51	0be0ea0e-2100-48e5-bf9f-0f2a5473ada9	pending	participant
12a4178c-0ba0-44cd-b0fb-97036d4c4890	2023-09-27 10:50:26.537134+00	2023-09-27 10:50:26.537134+00	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	374e7995-5a7d-442d-8db0-a04dcf8d924b	pending	participant
3d8602e4-63c3-410f-ad35-9e20f756fc7c	2023-09-27 11:54:03.424351+00	2023-09-27 11:54:03.424351+00	92f686cd-10eb-46c4-9738-fa14589bd536	d796974c-5238-4830-bef3-4231298642c0	pending	participant
4d4bf58c-5ed9-466a-9712-5bf1bf67cd09	2023-09-22 13:30:57.986449+00	2023-09-22 13:30:57.986449+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	0be0ea0e-2100-48e5-bf9f-0f2a5473ada9	pending	participant
f9d5b6a7-913b-4cc3-b270-bbd002467013	2023-09-23 11:24:43.139663+00	2023-09-23 11:24:43.139663+00	92f686cd-10eb-46c4-9738-fa14589bd536	dbbc98ac-7c75-4324-9b86-c4835e6c247a	pending	participant
d08e09af-6154-4f9c-abc1-f3a9b4f51873	2023-09-23 14:04:09.209219+00	2023-09-23 14:04:09.209219+00	b23787cb-1c0b-452f-af87-9d7276146e51	830d94aa-d7a7-482e-95ef-286b1412aa8b	pending	participant
3ebe9d8e-87b2-46a4-ac0d-ddc74b9bebf7	2023-09-23 14:04:09.209219+00	2023-09-23 14:04:09.209219+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	830d94aa-d7a7-482e-95ef-286b1412aa8b	pending	participant
7a6a18cf-68ed-42c1-9b34-3d92849442aa	2023-09-26 06:29:32.866505+00	2023-09-26 06:29:32.866505+00	b23787cb-1c0b-452f-af87-9d7276146e51	3f896e5c-2a78-4c59-9370-210390f1c4f7	pending	participant
4cf7287c-9332-4a6f-8e63-67542ae1f902	2023-09-26 06:29:32.866505+00	2023-09-26 06:29:32.866505+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	3f896e5c-2a78-4c59-9370-210390f1c4f7	pending	participant
af27f24b-cf85-4bb5-bbd3-5bcc89a641fe	2023-09-27 11:54:03.424351+00	2023-09-27 11:54:03.424351+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	d796974c-5238-4830-bef3-4231298642c0	accepted	participant
9e592658-0c7c-4609-b463-590569088e19	2023-09-29 09:09:22.531031+00	2023-09-29 09:09:22.531031+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	a4b2b475-20d7-4aff-bb9b-d3fd9881f0b9	pending	participant
3d523138-3902-4f28-a252-37b7ce900cbb	2023-09-29 09:09:22.531031+00	2023-09-29 09:09:22.531031+00	a1910359-9cb4-4f48-b3f9-e7eeeecb537f	a4b2b475-20d7-4aff-bb9b-d3fd9881f0b9	accepted	host
303adf5a-71fe-40b1-b730-7444eac65cc5	2023-09-29 11:42:23.052956+00	2023-09-29 11:42:23.052956+00	28850701-5473-44c2-99c9-747ad8013ec5	f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8	pending	participant
cdbc3e82-4da1-4524-a92a-4eaddb060dcf	2023-09-29 11:42:23.052956+00	2023-09-29 11:42:23.052956+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8	accepted	host
cc0e6204-8430-4061-bed4-da6d67dacc44	2023-09-29 14:07:51.83318+00	2023-09-29 14:07:51.83318+00	6df0604d-ef1e-48b5-8bc2-7275b0f669ef	4ea824b3-c621-45ef-9f85-87501cccb68a	pending	participant
4020cdda-3f81-41e5-a3db-fc89222a8594	2023-09-29 14:07:51.83318+00	2023-09-29 14:07:51.83318+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	4ea824b3-c621-45ef-9f85-87501cccb68a	accepted	host
0cb0fedd-4f77-499e-a548-704447b6be80	2023-09-29 15:01:46.728127+00	2023-09-29 15:01:46.728127+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	0bbf85bb-95c7-46dc-bdce-0d61686fcaf4	pending	participant
69ebb293-2b64-49d3-a06e-fcd93126f33c	2023-09-29 15:01:46.728127+00	2023-09-29 15:01:46.728127+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	0bbf85bb-95c7-46dc-bdce-0d61686fcaf4	accepted	host
4e21da28-f46c-4c4e-bd3b-8d04ffa62f86	2023-09-29 15:51:29.677356+00	2023-09-29 15:51:29.677356+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	cab51dad-f284-44d7-acfb-657825980bce	pending	participant
54460f54-1181-406c-98ba-388caf3ae7d7	2023-09-29 15:51:29.677356+00	2023-09-29 15:51:29.677356+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	cab51dad-f284-44d7-acfb-657825980bce	pending	participant
8a0eae8d-473d-41db-a73d-53f001053299	2023-09-29 15:51:29.677356+00	2023-09-29 15:51:29.677356+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	cab51dad-f284-44d7-acfb-657825980bce	pending	participant
6cc98e3f-092b-48e7-9b4a-d73ce31c6938	2023-09-29 15:56:53.138726+00	2023-09-29 15:56:53.138726+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	1fb1c2ca-e44f-4f62-b47c-afd3cca390ff	pending	participant
abb6d313-d7d2-41c1-8c68-ed14ab2e5eab	2023-09-29 15:56:53.138726+00	2023-09-29 15:56:53.138726+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	1fb1c2ca-e44f-4f62-b47c-afd3cca390ff	pending	participant
bc3d0d1c-80b7-4dae-b6e5-6437826e60a9	2023-10-03 10:08:12.589767+00	2023-10-03 10:08:12.589767+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	27e07d22-42c6-4aed-b9ed-f8422bd57347	accepted	host
461fda66-a9eb-42c9-8fee-2c12a249c798	2023-10-03 10:08:12.589767+00	2023-10-03 10:08:12.589767+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	27e07d22-42c6-4aed-b9ed-f8422bd57347	accepted	participant
364e6d54-bee1-4d70-bd6b-f3de18eebad4	2023-10-10 05:55:58.696012+00	2023-10-10 05:55:58.696012+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	f86d0d1b-61a3-4843-82d6-38ee4b3157f9	accepted	host
b4ac5c11-1a5a-438f-8cbd-1456cf006449	2023-10-10 07:44:13.489649+00	2023-10-10 07:44:13.489649+00	28850701-5473-44c2-99c9-747ad8013ec5	b6d5bfad-188f-42b5-a0d1-fb22b5f85ec8	pending	participant
e6e94ee1-4d1e-4fe7-8ff1-05eb0b4290ec	2023-10-10 07:44:13.489649+00	2023-10-10 07:44:13.489649+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	b6d5bfad-188f-42b5-a0d1-fb22b5f85ec8	accepted	host
06b635c0-bc4c-4ca4-ba9c-943b19104457	2023-10-10 05:55:58.696012+00	2023-10-10 05:55:58.696012+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	f86d0d1b-61a3-4843-82d6-38ee4b3157f9	accepted	participant
480b0595-4cbf-4015-89d4-df0513be318d	2023-10-10 10:54:44.025519+00	2023-10-10 10:54:44.025519+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	df42b8d4-5bea-4283-8135-2d3536e16c35	accepted	host
2e934a24-3fc6-4ddb-8c7b-2c52ecf63aed	2023-10-10 10:54:44.025519+00	2023-10-10 10:54:44.025519+00	28850701-5473-44c2-99c9-747ad8013ec5	df42b8d4-5bea-4283-8135-2d3536e16c35	accepted	participant
4c404ad2-a98d-41e5-ad6c-d6ff52c776ae	2023-10-10 10:54:44.025519+00	2023-10-10 10:54:44.025519+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	df42b8d4-5bea-4283-8135-2d3536e16c35	accepted	participant
f480cc87-e857-4c2b-b3a3-427a82e13504	2023-10-10 11:07:23.923977+00	2023-10-10 11:07:23.923977+00	28850701-5473-44c2-99c9-747ad8013ec5	745d0021-6424-47ee-b86d-7d417140388f	pending	participant
1831d11d-7b73-4fd0-8435-e32310aca636	2023-10-10 11:07:23.923977+00	2023-10-10 11:07:23.923977+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	745d0021-6424-47ee-b86d-7d417140388f	accepted	host
8ffda368-06bc-4e97-a48d-d2bf543f2e9c	2023-10-25 00:37:09+00	2023-10-25 00:37:09+00	28850701-5473-44c2-99c9-747ad8013ec5	f86d0d1b-61a3-4843-82d6-38ee4b3157f9	rejected	participant
5ffda368-06bc-4e97-a43d-d2bf543f2e8c	2023-10-25 00:37:09+00	2023-10-25 00:37:09+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	f86d0d1b-61a3-4843-82d6-38ee4b3157f9	rejected	participant
ebd9bd04-a9c6-467e-8124-f49e14d70cac	2023-10-13 07:31:06.138383+00	2023-10-13 07:31:06.138383+00	28850701-5473-44c2-99c9-747ad8013ec5	d4d5017c-26a5-4021-b012-999059602bd4	pending	participant
4d77a902-9a74-449e-9c34-fd7cb8e48e2f	2023-10-13 07:31:06.138383+00	2023-10-13 07:31:06.138383+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	d4d5017c-26a5-4021-b012-999059602bd4	accepted	host
58c4c8a8-28eb-4164-abae-0c4cf456ae7b	2023-10-13 09:12:52.905675+00	2023-10-13 09:12:52.905675+00	28850701-5473-44c2-99c9-747ad8013ec5	2e1c607b-8b67-4a02-bdb3-1fc6f1283283	pending	participant
3a486497-2199-4c81-a707-d7b12ec5dabf	2023-10-13 09:12:52.905675+00	2023-10-13 09:12:52.905675+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	2e1c607b-8b67-4a02-bdb3-1fc6f1283283	accepted	host
a3c9b27f-343c-49c7-90c5-6b2fef61762e	2023-10-13 09:15:01.767897+00	2023-10-13 09:15:01.767897+00	28850701-5473-44c2-99c9-747ad8013ec5	4b40f895-bc39-490a-ad83-f0a6034809d9	pending	participant
df4fc972-22dc-41fc-b031-47284dd49564	2023-10-13 09:15:01.767897+00	2023-10-13 09:15:01.767897+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	4b40f895-bc39-490a-ad83-f0a6034809d9	accepted	host
a8c1843b-8cf2-4175-9470-fb1e8a0638c5	2023-10-13 09:16:57.716175+00	2023-10-13 09:16:57.716175+00	28850701-5473-44c2-99c9-747ad8013ec5	4576f9fe-9b8b-4dda-a190-b7a8843543de	pending	participant
5880a40b-cc01-4a77-966e-f4e6ee611358	2023-10-13 09:16:57.716175+00	2023-10-13 09:16:57.716175+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	4576f9fe-9b8b-4dda-a190-b7a8843543de	accepted	host
b6596d4a-d8cd-4d12-8918-a35341bd3227	2023-10-13 09:18:43.120831+00	2023-10-13 09:18:43.120831+00	28850701-5473-44c2-99c9-747ad8013ec5	7c6be7e7-d33a-4465-8ee2-2bd72dc50808	pending	participant
e87c3808-f96a-48ce-9c58-5015b1a294aa	2023-10-13 09:18:43.120831+00	2023-10-13 09:18:43.120831+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	7c6be7e7-d33a-4465-8ee2-2bd72dc50808	accepted	host
5689c3e6-fe0d-4deb-a449-ede9070a862f	2023-10-13 09:19:22.41602+00	2023-10-13 09:19:22.41602+00	28850701-5473-44c2-99c9-747ad8013ec5	c7830546-56d7-45cd-809f-ffd8c0c2af4c	pending	participant
47a6a0dd-48f2-4c1f-aa5c-6280b078a60d	2023-10-13 09:19:22.41602+00	2023-10-13 09:19:22.41602+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	c7830546-56d7-45cd-809f-ffd8c0c2af4c	accepted	host
3b0c0532-a5b0-4344-a91a-cf8dc78f9dc0	2023-10-13 09:19:37.109642+00	2023-10-13 09:19:37.109642+00	28850701-5473-44c2-99c9-747ad8013ec5	dd70e12c-f98e-41a3-84ef-e60ec0ca0eb1	pending	participant
1dbc3b6e-5c6d-4c74-9af8-387f4bd4c476	2023-10-13 09:19:37.109642+00	2023-10-13 09:19:37.109642+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	dd70e12c-f98e-41a3-84ef-e60ec0ca0eb1	accepted	host
bed118b8-de1b-42a2-b285-b509ba82a5e6	2023-10-13 09:21:11.618726+00	2023-10-13 09:21:11.618726+00	28850701-5473-44c2-99c9-747ad8013ec5	73d719d2-dc44-47c7-85c4-76813aeb2a35	pending	participant
82e9b589-d1f3-4cf0-a426-a933f78a552f	2023-10-13 09:21:11.618726+00	2023-10-13 09:21:11.618726+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	73d719d2-dc44-47c7-85c4-76813aeb2a35	accepted	host
d30bf029-7444-411f-ad7e-26b16c61fa77	2023-10-13 09:24:08.563516+00	2023-10-13 09:24:08.563516+00	28850701-5473-44c2-99c9-747ad8013ec5	61302e1c-1927-4773-9a19-a40d54dd7250	pending	participant
8476e0e2-5da5-4859-a827-0e36bf5fc00f	2023-10-13 09:24:08.563516+00	2023-10-13 09:24:08.563516+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	61302e1c-1927-4773-9a19-a40d54dd7250	accepted	host
2ed1c705-de82-4643-a87c-51c4524c4a4d	2023-10-13 09:24:26.422235+00	2023-10-13 09:24:26.422235+00	28850701-5473-44c2-99c9-747ad8013ec5	94c72471-dfce-441d-bb8d-8f3f5867fdad	pending	participant
2438feaf-6495-46fa-9b40-352859df7f65	2023-10-13 09:24:26.422235+00	2023-10-13 09:24:26.422235+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	94c72471-dfce-441d-bb8d-8f3f5867fdad	accepted	host
131c7076-2791-4ac4-8a98-6c2ae3f08fe3	2023-10-13 09:25:34.027113+00	2023-10-13 09:25:34.027113+00	28850701-5473-44c2-99c9-747ad8013ec5	1f9e0609-460d-4f77-98ab-8668fa2c3e97	pending	participant
d05f8a6e-8501-4396-b957-c78cda13a945	2023-10-13 09:25:34.027113+00	2023-10-13 09:25:34.027113+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	1f9e0609-460d-4f77-98ab-8668fa2c3e97	accepted	host
92364c2f-965c-4897-bba3-2a74fbbf4817	2023-10-13 09:37:10.419349+00	2023-10-13 09:37:10.419349+00	28850701-5473-44c2-99c9-747ad8013ec5	81b8c152-76d8-4e35-91eb-65567e0a18da	pending	participant
ae1718e1-53c9-4cb5-ac47-726d338cd42a	2023-10-13 09:37:10.419349+00	2023-10-13 09:37:10.419349+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	81b8c152-76d8-4e35-91eb-65567e0a18da	accepted	host
fd637df3-8951-4d51-8ffc-05e4b0ba7aa9	2023-10-13 09:39:28.77573+00	2023-10-13 09:39:28.77573+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	cc3d1554-c455-451f-af5b-3418bb918851	pending	participant
f21127af-8e6f-40c0-9a17-b987841b0f7b	2023-10-13 09:39:28.77573+00	2023-10-13 09:39:28.77573+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	cc3d1554-c455-451f-af5b-3418bb918851	accepted	host
af45008b-d54d-4d86-83a6-4c574c452c07	2023-10-13 09:47:00.651182+00	2023-10-13 09:47:00.651182+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	3ca41b3b-09a6-40c4-8047-f12fd9d3b78a	pending	participant
5590530a-f53d-494b-ba1d-c6601b03ef36	2023-10-13 09:47:00.651182+00	2023-10-13 09:47:00.651182+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	3ca41b3b-09a6-40c4-8047-f12fd9d3b78a	accepted	host
5e96954c-4dbb-4ab6-b456-ce41f96b5dfc	2023-10-13 09:48:07.019491+00	2023-10-13 09:48:07.019491+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	4a07564b-adb4-42b5-b826-bf5c8c750579	pending	participant
9a8f65d8-2dfc-46d5-bd4f-760ffa70abb8	2023-10-13 09:48:07.019491+00	2023-10-13 09:48:07.019491+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	4a07564b-adb4-42b5-b826-bf5c8c750579	accepted	host
8d2d17c0-c6c6-4c5e-b038-f22177c5a633	2023-10-13 09:48:56.787711+00	2023-10-13 09:48:56.787711+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	bff9c85b-5ac5-4694-9219-eb2893e59827	pending	participant
37f06c36-c714-4443-a790-4c02021ab028	2023-10-13 09:48:56.787711+00	2023-10-13 09:48:56.787711+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	bff9c85b-5ac5-4694-9219-eb2893e59827	accepted	host
68403118-6359-499d-9107-54771d589d57	2023-10-13 10:00:37.821582+00	2023-10-13 10:00:37.821582+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	a1fdbfb3-fdbc-4518-9116-a6053c8c1f4b	pending	participant
030b6502-cba2-499f-8d38-6c4d7a4ebc02	2023-10-13 10:00:37.821582+00	2023-10-13 10:00:37.821582+00	92f686cd-10eb-46c4-9738-fa14589bd536	a1fdbfb3-fdbc-4518-9116-a6053c8c1f4b	pending	participant
66762f2f-f329-4059-90fc-525d3c65660e	2023-10-13 10:00:37.821582+00	2023-10-13 10:00:37.821582+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	a1fdbfb3-fdbc-4518-9116-a6053c8c1f4b	accepted	host
54c20ef3-9d6c-4344-b5dd-d0f67b6e068a	2023-10-13 10:04:46.285365+00	2023-10-13 10:04:46.285365+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	d8464d29-fc5a-492c-8e3f-5f5eee6f508a	pending	participant
e40250f0-b735-4339-9df1-d71dca31d393	2023-10-13 10:04:46.285365+00	2023-10-13 10:04:46.285365+00	92f686cd-10eb-46c4-9738-fa14589bd536	d8464d29-fc5a-492c-8e3f-5f5eee6f508a	pending	participant
49a436eb-1f6e-484a-a35d-32f64760123e	2023-10-13 10:04:46.285365+00	2023-10-13 10:04:46.285365+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	d8464d29-fc5a-492c-8e3f-5f5eee6f508a	accepted	host
ffc95c27-89db-484b-b1ec-95cb83676cde	2023-10-13 10:05:11.682841+00	2023-10-13 10:05:11.682841+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	afe445ba-b946-4c41-9a8a-2077fff6af94	pending	participant
54be0f06-3031-42d8-8d7d-127c98d6b808	2023-10-13 10:05:11.682841+00	2023-10-13 10:05:11.682841+00	92f686cd-10eb-46c4-9738-fa14589bd536	afe445ba-b946-4c41-9a8a-2077fff6af94	pending	participant
5f34cfb6-f088-4f08-b0ed-7af2b76e7abb	2023-10-13 10:05:11.682841+00	2023-10-13 10:05:11.682841+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	afe445ba-b946-4c41-9a8a-2077fff6af94	accepted	host
14a6fe8f-2aaa-4fe9-ac45-422adeaa6fd8	2023-10-13 10:06:58.873867+00	2023-10-13 10:06:58.873867+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	ac929539-fbf2-4d1b-93f7-e7f271d800fe	pending	participant
eda9fa3e-0de0-49ec-ac28-36e9c5b34a7f	2023-10-13 10:06:58.873867+00	2023-10-13 10:06:58.873867+00	92f686cd-10eb-46c4-9738-fa14589bd536	ac929539-fbf2-4d1b-93f7-e7f271d800fe	pending	participant
730ba5b5-c77d-4c93-a74b-4f281495ebfa	2023-10-13 10:06:58.873867+00	2023-10-13 10:06:58.873867+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	ac929539-fbf2-4d1b-93f7-e7f271d800fe	accepted	host
e59eb584-54b9-4457-8821-3878a9bc9f54	2023-10-13 10:28:30.589509+00	2023-10-13 10:28:30.589509+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	636146bb-96c6-4ef3-8d5c-a5e7a2f5db0f	pending	participant
3156bdb7-c2e1-4c2e-813e-14fbadc50f2e	2023-10-13 10:28:30.589509+00	2023-10-13 10:28:30.589509+00	92f686cd-10eb-46c4-9738-fa14589bd536	636146bb-96c6-4ef3-8d5c-a5e7a2f5db0f	pending	participant
83c3fbaf-5113-40c7-a652-1f3b990c7679	2023-10-13 10:28:30.589509+00	2023-10-13 10:28:30.589509+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	636146bb-96c6-4ef3-8d5c-a5e7a2f5db0f	accepted	host
54caef43-c4bd-4f36-ba14-bfcf1104baad	2023-10-13 10:29:19.328213+00	2023-10-13 10:29:19.328213+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	92bdc75a-7785-43d2-bb6a-ca705c3c2b33	pending	participant
86b87cd8-dab4-4582-980c-9e0bbcd66e53	2023-10-13 10:29:19.328213+00	2023-10-13 10:29:19.328213+00	92f686cd-10eb-46c4-9738-fa14589bd536	92bdc75a-7785-43d2-bb6a-ca705c3c2b33	pending	participant
9be751be-462f-46ea-ba8a-79d88e22d877	2023-10-13 10:29:19.328213+00	2023-10-13 10:29:19.328213+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	92bdc75a-7785-43d2-bb6a-ca705c3c2b33	accepted	host
7134b971-ec7f-4994-aec8-812bba006b51	2023-10-13 10:32:03.9894+00	2023-10-13 10:32:03.9894+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	518f2ac1-802c-4a88-8377-eafa73721ab4	pending	participant
4a124640-182d-4cf3-a1b0-4dcaa20b96e5	2023-10-13 10:32:03.9894+00	2023-10-13 10:32:03.9894+00	92f686cd-10eb-46c4-9738-fa14589bd536	518f2ac1-802c-4a88-8377-eafa73721ab4	pending	participant
b56ab0a7-93ab-4d7e-b47f-88ed112414ac	2023-10-13 10:32:03.9894+00	2023-10-13 10:32:03.9894+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	518f2ac1-802c-4a88-8377-eafa73721ab4	accepted	host
13b556a3-7f90-43da-a3cf-280de3a98160	2023-10-13 10:34:18.456017+00	2023-10-13 10:34:18.456017+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	63395380-438a-4c9e-b17c-5826cacc69b0	pending	participant
4ef99ec7-0dc4-4462-a1ff-562b7601529a	2023-10-13 10:34:18.456017+00	2023-10-13 10:34:18.456017+00	51533294-1540-4ad0-a1ca-99e20372653e	63395380-438a-4c9e-b17c-5826cacc69b0	pending	participant
c2c7a8f3-f871-460f-8efa-67b358117dff	2023-10-13 10:34:18.456017+00	2023-10-13 10:34:18.456017+00	b23787cb-1c0b-452f-af87-9d7276146e51	63395380-438a-4c9e-b17c-5826cacc69b0	pending	participant
f67b58e6-3b4c-4245-a42c-7719c23c2c14	2023-10-13 10:34:18.456017+00	2023-10-13 10:34:18.456017+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	63395380-438a-4c9e-b17c-5826cacc69b0	accepted	host
23cc2d15-e07d-4325-9532-78bf5bed5bc5	2023-10-13 10:39:10.581237+00	2023-10-13 10:39:10.581237+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	9ef21513-3ba5-4202-a036-f1af9eaf99e0	pending	participant
44282c8c-50bb-4629-ac3d-c9e98110d582	2023-10-13 10:39:10.581237+00	2023-10-13 10:39:10.581237+00	92f686cd-10eb-46c4-9738-fa14589bd536	9ef21513-3ba5-4202-a036-f1af9eaf99e0	pending	participant
4f22593d-87f6-4f7e-a14f-3d52537c7fc8	2023-10-13 10:39:10.581237+00	2023-10-13 10:39:10.581237+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	9ef21513-3ba5-4202-a036-f1af9eaf99e0	accepted	host
2f6dc5c7-c34c-4a9f-80dc-e83a55e9c228	2023-10-13 10:39:26.111674+00	2023-10-13 10:39:26.111674+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	b29ce0df-6a5a-4fd5-a003-0ec861ca91ab	pending	participant
9318664d-87ba-4656-8a7d-78d886b53651	2023-10-13 10:39:26.111674+00	2023-10-13 10:39:26.111674+00	92f686cd-10eb-46c4-9738-fa14589bd536	b29ce0df-6a5a-4fd5-a003-0ec861ca91ab	pending	participant
1215351f-2a4b-4c52-b8ff-7ba073b3b0d0	2023-10-13 10:39:26.111674+00	2023-10-13 10:39:26.111674+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	b29ce0df-6a5a-4fd5-a003-0ec861ca91ab	accepted	host
4fc76722-059f-486c-b195-a5dd59914285	2023-10-13 10:39:46.342442+00	2023-10-13 10:39:46.342442+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	d6900aa2-2c96-4f4d-8e3a-fd99c9c1e7fc	pending	participant
de279c93-fc84-492c-9003-3bd0c3ad27e7	2023-10-13 10:39:46.342442+00	2023-10-13 10:39:46.342442+00	92f686cd-10eb-46c4-9738-fa14589bd536	d6900aa2-2c96-4f4d-8e3a-fd99c9c1e7fc	pending	participant
a1adc7f3-b125-456a-a94c-f61ce2e07704	2023-10-13 10:39:46.342442+00	2023-10-13 10:39:46.342442+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	d6900aa2-2c96-4f4d-8e3a-fd99c9c1e7fc	accepted	host
c1160919-414b-442e-87b8-ea341031ac67	2023-10-13 10:48:48.339091+00	2023-10-13 10:48:48.339091+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	8ae7eca2-00fe-4afc-aa21-aabec1032792	pending	participant
b25d3fbc-3517-4082-b11e-1ae252a64b73	2023-10-13 10:48:48.339091+00	2023-10-13 10:48:48.339091+00	92f686cd-10eb-46c4-9738-fa14589bd536	8ae7eca2-00fe-4afc-aa21-aabec1032792	pending	participant
9547ea63-dd7b-458c-a713-93ffcb379309	2023-10-13 10:48:48.339091+00	2023-10-13 10:48:48.339091+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	8ae7eca2-00fe-4afc-aa21-aabec1032792	accepted	host
30dc040c-398e-4de9-a650-1d8e55c59beb	2023-10-13 10:58:11.230852+00	2023-10-13 10:58:11.230852+00	28850701-5473-44c2-99c9-747ad8013ec5	a275e48e-8245-4632-8d49-5b2da091382a	pending	participant
5272aa63-a610-4d4b-ba36-01fff7cc0a52	2023-10-13 10:58:11.230852+00	2023-10-13 10:58:11.230852+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	a275e48e-8245-4632-8d49-5b2da091382a	accepted	host
dc28d341-d92f-4b22-a989-6fbf149e952d	2023-10-13 13:39:46.514485+00	2023-10-13 13:39:46.514485+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	7c55ddba-d0a8-48e1-9e50-287a51bbf786	pending	participant
1225ed68-761e-4c9d-98c4-9f9de947be71	2023-10-13 13:39:46.514485+00	2023-10-13 13:39:46.514485+00	92f686cd-10eb-46c4-9738-fa14589bd536	7c55ddba-d0a8-48e1-9e50-287a51bbf786	pending	participant
51772dfd-08a1-495c-b935-bf19d0353850	2023-10-13 13:39:46.514485+00	2023-10-13 13:39:46.514485+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	7c55ddba-d0a8-48e1-9e50-287a51bbf786	accepted	host
46b9435d-252d-403c-95ea-62e6876e7423	2023-10-13 16:08:39.41434+00	2023-10-13 16:08:39.41434+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	8b50e0dd-d97b-4afe-be41-5bd589823ada	pending	participant
3a7af70d-0f08-41d8-9660-7bbf15085287	2023-10-13 16:08:39.41434+00	2023-10-13 16:08:39.41434+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	8b50e0dd-d97b-4afe-be41-5bd589823ada	accepted	host
63c5e5a2-f31e-4295-b2a3-4ab15e2672da	2023-10-13 16:08:39.41434+00	2023-10-13 16:08:39.41434+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	8b50e0dd-d97b-4afe-be41-5bd589823ada	accepted	participant
\.


--
-- Data for Name: _fcm_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_fcm_tokens" ("id", "user_id", "fcm_token", "device_info", "created_at", "updated_at") FROM stdin;
e76cd6e8-7eed-4fb3-9933-3ffa48286f2f	11404476-acd0-4da5-9b60-9cfae5bc12c4	dvRDUD0qRf26AWXQEVpnKw:APA91bEarb983Dna8S449-SoO8ECQmHbegVfmXs5gRGGyVk9NpsTYdAQodhUypKO5dKH2L7CZtOpMpO23HAKzhG8dDxZJbSvb1-fziTkSFFBsMf3TuT72ckKEOQHvkwSjdLRgja7oaAN	{'deviceId':'goldfish_x86_64','device':'emu64x','baseOS':'','manufacturer':'Google','ApiLevel':33,'IpAddress':'10.0.2.16','maxMemory':201326592,'androidId':'00968e1161cb3dd4','usedMemory':341565440,'MacAddress':'','deviceName':'sdk_gphone64_x86_64'}	2023-09-06 09:39:57.941307	2023-09-06 09:39:57.941307
\.


--
-- Data for Name: _friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_friends" ("id", "friend_id", "status", "user_id", "created_at", "updated_at", "note") FROM stdin;
d6845b25-85d7-4fd6-9704-854f7b0a9054	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	accepted	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-09-20 09:25:37.071177+00	2023-09-20 09:25:37.071177+00	\N
e6decbcb-5c52-4d2b-9104-0980333c02c5	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	accepted	11404476-acd0-4da5-9b60-9cfae5bc12c4	2023-09-20 11:56:56.763376+00	2023-09-20 11:56:56.763376+00	\N
6f88806b-01a6-40e7-a3a5-59063e05ef64	b23787cb-1c0b-452f-af87-9d7276146e51	accepted	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-09-21 11:34:49.353893+00	2023-09-21 11:34:49.353893+00	\N
66b03149-4b02-42a5-b40a-d953ecf3c2db	28850701-5473-44c2-99c9-747ad8013ec5	pending	28850701-5473-44c2-99c9-747ad8013ec5	2023-09-29 09:34:03.583179+00	2023-09-29 09:34:03.583179+00	\N
576e5e2e-73b3-468e-826a-b628caae43fd	12eb2c33-4873-4229-82c9-e403249dc0d7	accepted	045e7ee9-9fa2-433d-aa4d-47533d65544a	2023-08-26 09:47:19.958478+00	2023-08-26 09:47:19.958478+00	\N
9c3ac806-6a56-4679-8d4d-d956887eac13	032a83b1-ff46-4177-ac0e-4d01fb0f0310	pending	045e7ee9-9fa2-433d-aa4d-47533d65544a	2023-08-26 09:44:33.994918+00	2023-08-26 09:44:33.994918+00	\N
a88ccd82-aa0f-4482-8d40-f8df750ce671	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	accepted	28850701-5473-44c2-99c9-747ad8013ec5	2023-09-29 09:38:20.960399+00	2023-09-29 09:38:20.960399+00	\N
24b8da6a-5585-47fa-a417-551bf7bfe935	3d148372-4bd2-4e70-86e3-f36f91ac8e5b	pending	045e7ee9-9fa2-433d-aa4d-47533d65544a	2023-09-15 16:32:38.433688+00	2023-09-15 16:32:38.433688+00	\N
2721b45a-93cb-4fb9-aaf2-4b91f4c2bf48	28850701-5473-44c2-99c9-747ad8013ec5	accepted	045e7ee9-9fa2-433d-aa4d-47533d65544a	2023-09-29 09:17:14.253374+00	2023-09-29 09:17:14.253374+00	\N
e39a7653-90c1-4a80-9dbf-1099e17ea5a5	045e7ee9-9fa2-433d-aa4d-47533d65544a	accepted	a1910359-9cb4-4f48-b3f9-e7eeeecb537f	2023-09-14 15:43:10.143636+00	2023-09-14 15:43:10.143636+00	\N
cf15ba82-52fa-47d1-83b3-388ad322cf80	28850701-5473-44c2-99c9-747ad8013ec5	pending	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-09-29 12:50:47.846502+00	2023-09-29 12:50:47.846502+00	\N
89244893-b155-440f-8e7e-7e2d24367214	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	pending	11404476-acd0-4da5-9b60-9cfae5bc12c4	2023-09-30 09:31:20.293231+00	2023-09-30 09:31:20.293231+00	\N
4fd0f7a1-8066-4061-ab10-03a6ed6e304e	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	accepted	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	2023-10-05 06:55:56.632649+00	2023-10-05 06:55:56.632649+00	\N
24404476-acd0-4da5-9b60-9cfae5bc12c5	11404476-acd0-4da5-9b60-9cfae5bc12c4	accepted	92f686cd-10eb-46c4-9738-fa14589bd536	2023-10-13 14:39:08+00	2023-10-13 14:39:08+00	\N
\.


--
-- Data for Name: _media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_media" ("id", "original_name", "path", "mime_data", "entity_id", "key", "created_at", "updated_at", "user_id") FROM stdin;
760ae932-966a-4ea0-9405-1e565136c511	Screenshot_1688541079.png	http://localhost:8000/staticclear==/Screenshot_1688541079.594c447a-10fa-4d18-8740-c2c0b232a909.png	image/png	\N	\N	2023-08-09 11:21:16.35459+00	2023-08-09 11:21:16.35459+00	11404476-acd0-4da5-9b60-9cfae5bc12c4
9587a865-8e2e-4862-b407-8a55f09e357d	Screenshot_1688541079.png	http://localhost:8000/staticclear==/Screenshot_1688541079.059f95a3-8dc2-4bde-b7fb-10a7d510251a.png	image/png	\N	\N	2023-08-09 11:21:35.371258+00	2023-08-09 11:21:35.371258+00	11404476-acd0-4da5-9b60-9cfae5bc12c4
46ec48f9-d29f-4755-a725-9b37afa80e1c	1689691074868.jpg	http://localhost:8000/mediaclear==/1689691074868.b390aa9a-692b-4842-aa07-587efbf6320e.jpg	image/jpeg	\N	\N	2023-08-09 11:57:15.370135+00	2023-08-09 11:57:15.370135+00	11404476-acd0-4da5-9b60-9cfae5bc12c4
14ee5e49-2ef5-4ad9-90ac-33c66c7f2bc2	Loan.svg	http://localhost:8000/mediaclear==/Loan.906f33d5-de64-471d-8930-08e5a25526c3.svg	image/svg+xml	92f686cd-10eb-46c4-9738-fa14589bd536	profile_image	2023-08-26 13:50:40.994282+00	2023-08-26 13:50:40.994282+00	92f686cd-10eb-46c4-9738-fa14589bd536
839c4742-ba0a-4a7d-be89-882156dec6f8	Zugpsitze_mountain.jpg	http://localhost:8000/media/Zugpsitze_mountain.ac1a578d-c82b-4abe-9f35-697668469547.jpg	image/jpeg	11404476-acd0-4da5-9b60-9cfae5bc12c4	profile_image	2023-09-26 06:58:50.151017+00	2023-09-26 06:58:50.151017+00	11404476-acd0-4da5-9b60-9cfae5bc12c4
2d36ba52-fbd9-4882-b17a-4abfe3d44fa4	image_picker_FC7E49F6-929A-443F-AA7C-55F5CB82D660-3084-00000665ED41DBDA.jpg	http://localhost:8000/media/image_picker_FC7E49F6-929A-443F-AA7C-55F5CB82D660-3084-00000665ED41DBDA.d308013f-0fed-4da2-813c-1a1a430d19c2.jpg	application/octet-stream	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	profile_image	2023-09-26 05:26:29.74137+00	2023-09-26 05:26:29.74137+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23
7a82a642-d166-44df-8f2a-945d2e7d01d3	2023_RE_Bullet_350_m4_444da418e9.jpg	/media/2023_RE_Bullet_350_m4_444da418e9.985e07d7-ad91-4ee7-b8e1-5062ae59b8bd.jpg	image/jpeg	\N	\N	2023-09-22 11:10:57.968331+00	2023-09-22 11:10:57.968331+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
2774ab38-69b4-4389-9d6f-db48c5edeeeb	image_picker_55FB32B0-73A9-40DC-BE27-AE848FA3C193-11429-0000054148D8680C.jpg	http://localhost:8000/media/image_picker_55FB32B0-73A9-40DC-BE27-AE848FA3C193-11429-0000054148D8680C.f52ad6b3-a082-434a-8288-462676321f21.jpg	application/octet-stream	b23787cb-1c0b-452f-af87-9d7276146e51	profile_image	2023-09-22 12:02:42.18472+00	2023-09-22 12:02:42.18472+00	b23787cb-1c0b-452f-af87-9d7276146e51
1b6a7954-bfb4-4c7e-85c9-c099bd157fa0	Screenshot_20230919_212919.png	http://localhost:8000/media/Screenshot_20230919_212919.41030b48-aadc-469d-8358-e963cbbda997.png	image/png	\N	\N	2023-10-10 06:04:21.91317+00	2023-10-10 06:04:21.91317+00	11404476-acd0-4da5-9b60-9cfae5bc12c4
e1467ac1-2e97-4243-8b99-bb5a04af6c80	scaled_cbf25a8c-105c-4a00-a074-b3c2206d98385883718777835722108.jpg	http://localhost:8000/media/scaled_cbf25a8c-105c-4a00-a074-b3c2206d98385883718777835722108.2f1922f2-eedc-4188-a1d2-abab41375184.jpg	application/octet-stream	6df0604d-ef1e-48b5-8bc2-7275b0f669ef	profile_image	2023-09-22 14:39:22.262774+00	2023-09-22 14:39:22.262774+00	6df0604d-ef1e-48b5-8bc2-7275b0f669ef
0687a315-03c8-4b94-95de-e9142109d878	image_picker_88205857-486A-4415-8E54-D16FCD16BB84-94514-00000661EC30A461.jpg	http://localhost:8000/media/image_picker_88205857-486A-4415-8E54-D16FCD16BB84-94514-00000661EC30A461.ec9aae22-5728-4ee7-b175-6a4b94a8c192.jpg	application/octet-stream	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	profile_image	2023-09-20 07:23:46.671553+00	2023-09-20 07:23:46.671553+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2
\.


--
-- Data for Name: _notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_notifications" ("id", "description", "title", "status", "created_at", "updated_at", "user_id", "data") FROM stdin;
f16978b9-9ff4-4cf1-8040-199549d3796b	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 07:31:07.31038+00	2023-10-13 07:31:07.31038+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"d4d5017c-26a5-4021-b012-999059602bd4"}
05edd43f-aee5-4639-b31f-bde2050a6fb6	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 09:15:03.228064+00	2023-10-13 09:15:03.228064+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"4b40f895-bc39-490a-ad83-f0a6034809d9"}
d4b3fe37-c78b-4f4c-8d6f-e5c1e0f97f54	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 09:39:30.146273+00	2023-10-13 09:39:30.146273+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"cc3d1554-c455-451f-af5b-3418bb918851"}
e319aaae-5493-4510-b285-678c9e12996c	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 09:48:58.338147+00	2023-10-13 09:48:58.338147+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"bff9c85b-5ac5-4694-9219-eb2893e59827"}
e23e72ff-255f-4f2f-8249-5f2249d26c65	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:00:39.356696+00	2023-10-13 10:00:39.356696+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"a1fdbfb3-fdbc-4518-9116-a6053c8c1f4b"}
5e19ee70-f081-4437-9ff1-e0a9c236ef1d	Isadate Test sent you an invitation to a date on 2023-09-22	Event invitation	unread	2023-09-22 12:54:34.517597+00	2023-09-22 12:54:34.517597+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"a556e5f0-a097-4582-81ea-a178764c8688"}
a5969bf6-bd25-40f5-9e01-b6ee0c3a56d4	Isadate Test sent you an invitation to a date on 2023-09-22	Event invitation	unread	2023-09-22 12:54:34.517597+00	2023-09-22 12:54:34.517597+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"a556e5f0-a097-4582-81ea-a178764c8688"}
48707859-2a4b-4465-b59d-d40cda9bdf6d	Isadate Test sent you an invitation to a date on 2023-09-23	Event invitation	unread	2023-09-22 13:34:17.268655+00	2023-09-22 13:34:17.268655+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"14fd0088-7226-4b43-b721-f039ff29053e"}
e5ab67b9-9883-4a42-bc5b-ad78219b6cf7	Isadate Test sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-23 06:04:22.791641+00	2023-09-23 06:04:22.791641+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"622aaf3b-5990-4d97-b53b-56b63d2178be"}
215b704e-24c9-4201-b897-ce694d74d843	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:27:07.745485+00	2023-09-26 05:27:07.745485+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
0e978ec9-3ae9-4675-9500-ba2d35f66c2c	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 05:27:09.161498+00	2023-09-26 05:27:09.161498+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
aeb54d68-cfe8-4dcb-9a9e-11b24210d803	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 05:52:31.413176+00	2023-09-26 05:52:31.413176+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"833fc0b9-2f89-48f3-bd2f-1b9cbe4f998b"}
de878eab-b2df-40e6-b862-cbb91b2fce6d	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:09:54.729745+00	2023-09-26 06:09:54.729745+00	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	{"action":"invite","event_id":"c98bc637-2bc5-42b4-9175-9d44839fd4a9"}
bb4e7676-9bba-4fd4-a38c-c998fa3c1015	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:09:54.729745+00	2023-09-26 06:09:54.729745+00	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	{"action":"invite","event_id":"c98bc637-2bc5-42b4-9175-9d44839fd4a9"}
00237ad0-a041-403a-ae49-21c612cb27f2	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:09:54.729745+00	2023-09-26 06:09:54.729745+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"c98bc637-2bc5-42b4-9175-9d44839fd4a9"}
f3bb62c9-c9a0-44e7-a058-5022022b83d2	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:18:17.094085+00	2023-09-26 06:18:17.094085+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
8ffc5607-3f35-4295-b1c3-c407c6e9b5be	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:29:33.688534+00	2023-09-26 06:29:33.688534+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
90f95ecd-123b-4321-8e79-0ee1ad963c25	Isadate Test sent you an invitation to a date on 2023-09-28	Event invitation	unread	2023-09-27 11:54:04.560859+00	2023-09-27 11:54:04.560859+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"d796974c-5238-4830-bef3-4231298642c0"}
13cb7a04-dbda-43c1-a80a-eb061202ae85	Isadate Test sent you an invitation to a date on 2023-09-28	Event invitation	unread	2023-09-27 11:54:04.560859+00	2023-09-27 11:54:04.560859+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"d796974c-5238-4830-bef3-4231298642c0"}
a4b7b304-b57e-48d9-a541-6570dd2c35df	@SourabhShrivastava has sent a friend request to you	Friend request	unread	2023-09-29 09:17:15.039364+00	2023-09-29 09:17:15.039364+00	28850701-5473-44c2-99c9-747ad8013ec5	{"friendship_id":"045e7ee9-9fa2-433d-aa4d-47533d65544a"}
33fee336-afd5-478b-92ba-65eed9935c49	@RahulRaikwar has accepted your friend request	Friend request update	unread	2023-09-29 11:16:30.948007+00	2023-09-29 11:16:30.948007+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	{"friendship_id":"045e7ee9-9fa2-433d-aa4d-47533d65544a"}
270d5842-a181-49fe-9d59-a00012900d2d	Krishna Singh accepted your invitation to a date on 2023-09-30	Event invitation update	unread	2023-09-29 11:26:36.187207+00	2023-09-29 11:26:36.187207+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	{"action":"invite","event_id":"f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8"}
dfb5f93e-e5b6-4371-bc59-3f786cf24df9	Krishna Singh accepted your invitation to a date on 30th September	Event invitation update	unread	2023-09-29 11:30:11.426938+00	2023-09-29 11:30:11.426938+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	{"action":"invite","event_id":"f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8"}
7848b167-6565-47db-984a-a1fca2ad6533	Sourabh Shrivastava removed you from the event set for 30th September	Event update	unread	2023-09-29 11:42:22.477443+00	2023-09-29 11:42:22.477443+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"remove","event_id":"f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8"}
386743b9-c7cb-432c-9505-55d7a61d7d81	Sourabh Shrivastava sent you an invitation to a date on 30th September	Event invitation	unread	2023-09-29 11:42:23.82493+00	2023-09-29 11:42:23.82493+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8"}
39a4ac4e-6141-47f3-bcdb-6d12d9f5e87d	Gaurav Bhargava sent you an invitation to a date on 30th September	Event invitation	unread	2023-09-29 14:07:53.011163+00	2023-09-29 14:07:53.011163+00	6df0604d-ef1e-48b5-8bc2-7275b0f669ef	{"action":"invite","event_id":"4ea824b3-c621-45ef-9f85-87501cccb68a"}
84d6a9b1-8432-4356-9863-a9e808f4752a	Isadate Test sent you an invitation to a date on 2023-09-29	Event invitation	unread	2023-09-29 15:51:30.831314+00	2023-09-29 15:51:30.831314+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"cab51dad-f284-44d7-acfb-657825980bce"}
90a1d4a7-3b53-455e-b303-abaeef002a61	Isadate Test sent you an invitation to a date on 2023-09-29	Event invitation	unread	2023-09-29 15:51:30.831314+00	2023-09-29 15:51:30.831314+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"cab51dad-f284-44d7-acfb-657825980bce"}
11aae8c0-f427-463a-a9d0-2f78f0c0b71b	Isadate Test sent you an invitation to a date on 2023-09-30	Event invitation	unread	2023-09-29 15:56:36.13302+00	2023-09-29 15:56:36.13302+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"1fb1c2ca-e44f-4f62-b47c-afd3cca390ff"}
ec2d7576-5d76-43a9-92fd-87cc84c17392	@GauravBhargava has sent a friend request to you	Friend request	unread	2023-09-30 09:31:21.121676+00	2023-09-30 09:31:21.121676+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"friendship_id":"11404476-acd0-4da5-9b60-9cfae5bc12c4"}
a5e72ac6-780e-46a8-8140-7a91160aa0b8	Isadate Test sent you an invitation to a date on undefined	Event invitation	unread	2023-09-22 09:26:46.985823+00	2023-09-22 09:26:46.985823+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	{"action":"invite","event_id":"7ebcda10-8d6a-426e-bc9d-697bcc38bb57"}
cbff9722-2696-4ee6-a126-cd47de5eb593	@IsadateTest has sent a friend request to you	Friend request	unread	2023-09-29 12:50:48.764444+00	2023-09-29 12:50:48.764444+00	28850701-5473-44c2-99c9-747ad8013ec5	{"friendship_id":"ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2"}
dfe79cda-0908-4f3a-8394-5c093634ae02	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	read	2023-09-26 06:09:54.729745+00	2023-09-26 06:09:54.729745+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"c98bc637-2bc5-42b4-9175-9d44839fd4a9"}
7a8f1320-2b35-4f5f-9a24-64d3ac968eda	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	read	2023-09-26 06:09:54.729745+00	2023-09-26 06:09:54.729745+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"c98bc637-2bc5-42b4-9175-9d44839fd4a9"}
f2cb393d-12ae-4ed7-a069-518be9c821ae	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 09:21:13.123718+00	2023-10-13 09:21:13.123718+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"73d719d2-dc44-47c7-85c4-76813aeb2a35"}
b58601ff-3fe9-4b5e-94cd-6071ad9fa0e2	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:00:39.356696+00	2023-10-13 10:00:39.356696+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"a1fdbfb3-fdbc-4518-9116-a6053c8c1f4b"}
d3bef77f-d100-4337-874d-b58448ff6467	@GauravBhargava has accepted your friend request	Friend request update	unread	2023-10-13 11:35:50.670376+00	2023-10-13 11:35:50.670376+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"92f686cd-10eb-46c4-9738-fa14589bd536"}
75ffeb7a-94fc-4617-a737-b299ff1d61a1	An important event - undefined at undefined is happening on undefined	Event reminder	unread	2023-10-13 13:51:28.911727+00	2023-10-13 13:51:28.911727+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"7c55ddba-d0a8-48e1-9e50-287a51bbf786"}
3cc6b05c-eb32-4749-b912-33c43984ba4f	Isadate Test sent you an invitation to a date on 2023-09-24	Event invitation	unread	2023-09-22 10:22:26.517391+00	2023-09-22 10:22:26.517391+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
79e38203-6292-4b9a-90e9-831528702f88	Isadate Test sent you an invitation to a date on 2023-09-24	Event invitation	unread	2023-09-22 10:22:26.517391+00	2023-09-22 10:22:26.517391+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
3b2ee153-d79c-4592-b1bf-7dcadf23de6a	Isadate Test sent you an invitation to a date on 2023-09-24	Event invitation	unread	2023-09-22 10:22:26.517391+00	2023-09-22 10:22:26.517391+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
682af63f-2d85-4859-b733-199342d99a08	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 13:08:38.575517+00	2023-09-22 13:08:38.575517+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
8ef10412-1fc6-4d69-990b-b05299f12f11	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 13:08:38.575517+00	2023-09-22 13:08:38.575517+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
70140afb-ce29-4d88-81f5-f5fa346b5ef4	Isadate Test sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 13:35:54.661288+00	2023-09-22 13:35:54.661288+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"b166ce2d-919e-452a-ab77-86d60d4fc6cd"}
edb71e83-c09c-43f1-862f-72fb62e7b30a	Isadate Test removed me from the event set for undefined	Event invitation	unread	2023-09-23 12:14:28.793273+00	2023-09-23 12:14:28.793273+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"remove","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
99373420-f217-4d08-b364-8d98d4c94635	Isadate Test sent you an invitation to a date on undefined	Event invitation	unread	2023-09-23 12:14:30.187017+00	2023-09-23 12:14:30.187017+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
3f2bbfd9-dd03-441b-bc7c-c6647d794410	Isadate Test removed you from the event set for undefined	Event invitation	unread	2023-09-23 12:14:28.793273+00	2023-09-23 12:14:28.793273+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
090224b0-4b2c-4d21-af42-d335aa9c777c	Isadate Test removed you from the event set for undefined	Event invitation	unread	2023-09-23 12:14:28.793273+00	2023-09-23 12:14:28.793273+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"remove","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
a0cb11ca-3a82-49b8-bfbd-0b1517951536	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:28:39.907737+00	2023-09-26 05:28:39.907737+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
a2c71626-83ae-4492-971e-d32000d7342f	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 05:28:41.327233+00	2023-09-26 05:28:41.327233+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
4767cbcb-d17b-41f8-aa8d-a42c47ab70ea	Isadate Test removed you from the event set for 2023-09-26	Event update	unread	2023-09-26 05:56:10.495736+00	2023-09-26 05:56:10.495736+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"remove","event_id":"833fc0b9-2f89-48f3-bd2f-1b9cbe4f998b"}
91447013-0773-4022-b0d8-1ace8826a234	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 05:56:11.896+00	2023-09-26 05:56:11.896+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"833fc0b9-2f89-48f3-bd2f-1b9cbe4f998b"}
b350f52e-fa77-499f-ad28-dd4ca01523e0	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:10:28.873006+00	2023-09-26 06:10:28.873006+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"a3fba055-2434-4ea2-b8d7-b2014972d009"}
41e6f9b6-3b50-4cff-b471-1c70ddbe3fe5	Isadate Test removed you from the event set for 2023-09-26	Event update	unread	2023-09-26 06:20:40.689782+00	2023-09-26 06:20:40.689782+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"remove","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
5f1c5202-0bd1-47be-a859-9b5d5bebc1ba	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:20:42.045812+00	2023-09-26 06:20:42.045812+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
c46d40c6-0040-48dd-be9c-32ca0becb0ce	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 06:43:08.286424+00	2023-09-26 06:43:08.286424+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
479e48cc-4226-47a2-85c9-20b359bb5443	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 06:43:09.741971+00	2023-09-26 06:43:09.741971+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
97c42a2a-19a9-4203-a52a-0335d7f662e3	An important event-Chaturthi meeting at indore is happening 2023-09-28	Event reminder	unread	2023-09-28 08:45:34.901059+00	2023-09-28 08:45:34.901059+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"993288dc-8adc-4a45-bb9d-9acdb50be5df"}
9a80f8a6-d505-46ee-820c-5f45334c7991	@RahulRaikwar has sent a friend request to you	Friend request	unread	2023-09-29 09:34:04.381096+00	2023-09-29 09:34:04.381096+00	28850701-5473-44c2-99c9-747ad8013ec5	{"friendship_id":"28850701-5473-44c2-99c9-747ad8013ec5"}
7d4a39ee-e8ed-490a-a175-295d7ce86144	Isadate Test sent you an invitation to a date on October 14th	Event invitation	unread	2023-10-13 16:08:40.639339+00	2023-10-13 16:08:40.639339+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"8b50e0dd-d97b-4afe-be41-5bd589823ada"}
e12c8cbc-22fd-4d0c-b68a-fe81321f1774	Isadate Test sent you an invitation to a date on October 14th	Event invitation	unread	2023-10-13 16:08:40.639339+00	2023-10-13 16:08:40.639339+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"8b50e0dd-d97b-4afe-be41-5bd589823ada"}
4a104cf1-47a6-429b-86e8-f7417ec942a8	Gaurav Bhargava accepted your invitation to a date on 14th October	Event invitation update	unread	2023-10-13 16:13:21.010085+00	2023-10-13 16:13:21.010085+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"8b50e0dd-d97b-4afe-be41-5bd589823ada"}
126a3b9b-eaf1-40ac-b706-0fed5cd1ab34	Isadate Test sent you an invitation to a date on 2023-09-22	Event invitation	unread	2023-09-22 05:42:00.451009+00	2023-09-22 05:42:00.451009+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"198b4a38-7fe1-47ad-a4e6-fb556b298417"}
72204614-ab64-416c-b492-240767dbf8e1	Gaurav Bhargava accepted your invitation to a date on 14th October	Event invitation update	unread	2023-10-13 16:15:20.370589+00	2023-10-13 16:15:20.370589+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"8b50e0dd-d97b-4afe-be41-5bd589823ada"}
cb51ffe2-7e20-40fd-b0cc-3fcad91418a3	Gaurav Bhargava sent you an invitation to a date on 5th October	Event invitation	read	2023-10-03 06:55:12.235703+00	2023-10-03 06:55:12.235703+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
1d43cc85-b477-4d50-ad2b-d4a25c29a631	Gaurav Bhargava sent you an invitation to a date on 5th October	Event invitation	read	2023-10-03 10:08:13.370798+00	2023-10-03 10:08:13.370798+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
f3897b65-11e6-4157-b189-ca4b557bf551	Gaurav Bhargava sent you an invitation to a date on 28th October	Event invitation	read	2023-10-10 05:55:59.877999+00	2023-10-10 05:55:59.877999+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"f86d0d1b-61a3-4843-82d6-38ee4b3157f9"}
d419bfe8-d922-4124-adf1-69f68ba82e95	@CodeSandbox has accepted your friend request	Friend request update	read	2023-09-21 11:40:17.051599+00	2023-09-21 11:40:17.051599+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"frindship_id":"ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2"}
75652dfa-5751-4668-8b40-dd633b6217a6	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 09:24:27.938283+00	2023-10-13 09:24:27.938283+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"94c72471-dfce-441d-bb8d-8f3f5867fdad"}
e8bc78c9-4793-41c6-897f-81f7b6994838	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:05:13.172856+00	2023-10-13 10:05:13.172856+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"afe445ba-b946-4c41-9a8a-2077fff6af94"}
270255e7-4122-4372-904e-961e662ddc0d	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:05:13.172856+00	2023-10-13 10:05:13.172856+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"afe445ba-b946-4c41-9a8a-2077fff6af94"}
bf43b608-6d16-4de9-ae0d-de396f4c6815	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:28:32.099492+00	2023-10-13 10:28:32.099492+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"636146bb-96c6-4ef3-8d5c-a5e7a2f5db0f"}
f2417529-dff9-4f9a-bb74-11ae11b1e895	Isadate Test sent you an invitation to a date on 2023-09-22	Event invitation	unread	2023-09-22 05:44:08.353112+00	2023-09-22 05:44:08.353112+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"b3d3a94a-1682-4a0d-93af-8e81562ecc0a"}
73db8456-666d-45da-8ef2-d2d91a05ee85	Isadate Test sent you an invitation to a date on undefined	Event invitation	unread	2023-09-22 10:44:09.695539+00	2023-09-22 10:44:09.695539+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"7ebcda10-8d6a-426e-bc9d-697bcc38bb57"}
230e1736-371f-4083-bf5b-35c448264dcb	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 13:10:09.345661+00	2023-09-22 13:10:09.345661+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"e1d7d470-8b41-4b41-bf0d-e70686071bbb"}
1bcaaa21-fb75-4eee-a9c1-fb4816760956	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 13:10:09.345661+00	2023-09-22 13:10:09.345661+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"e1d7d470-8b41-4b41-bf0d-e70686071bbb"}
bec20a20-3f1c-4d2b-8450-3ff4a4d67cba	Isadate Test sent you an invitation to a date on 2023-09-23	Event invitation	unread	2023-09-22 13:51:28.255711+00	2023-09-22 13:51:28.255711+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"2039595f-7399-4392-bd8c-10373769495b"}
cf44edba-705d-48f4-9c8a-05ae5d1c75ee	Isadate Test sent you an invitation to a date on undefined	Event invitation	unread	2023-09-23 12:32:44.460587+00	2023-09-23 12:32:44.460587+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
ed95d455-febe-4d04-99a9-0761ec2c43cf	Isadate Test removed you from the event set for undefined	Event update	unread	2023-09-23 12:32:43.105574+00	2023-09-23 12:32:43.105574+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"remove","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
d0fab2b4-2959-492c-8fbe-563c513d3da0	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:30:15.18434+00	2023-09-26 05:30:15.18434+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
c8391ae7-0bdb-4464-b5f8-da77470c836f	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 05:30:16.570358+00	2023-09-26 05:30:16.570358+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
446965ac-8a9a-448a-bff8-a12bc5f109b7	Isadate Test removed you from the event set for 2023-09-26	Event update	unread	2023-09-26 05:57:06.37099+00	2023-09-26 05:57:06.37099+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"833fc0b9-2f89-48f3-bd2f-1b9cbe4f998b"}
3f473d57-f1bb-4022-97f0-c4426ec18d08	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 05:57:07.922021+00	2023-09-26 05:57:07.922021+00	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	{"action":"invite","event_id":"833fc0b9-2f89-48f3-bd2f-1b9cbe4f998b"}
8523dd9f-4f42-4d0c-b3a0-ca28503af7f5	Isadate Test removed you from the event set for 2023-09-26	Event update	unread	2023-09-26 06:10:45.266291+00	2023-09-26 06:10:45.266291+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"a3fba055-2434-4ea2-b8d7-b2014972d009"}
d254c86f-8237-4d32-aa70-4b92035eef5f	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:10:46.690782+00	2023-09-26 06:10:46.690782+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"a3fba055-2434-4ea2-b8d7-b2014972d009"}
2ac9dc28-144c-46ce-901b-88ff01dac7a2	Isadate Test removed you from the event set for 2023-09-26	Event update	unread	2023-09-26 06:21:00.681127+00	2023-09-26 06:21:00.681127+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
e794498c-a885-43ee-9495-981c49bdc2d1	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:21:02.117302+00	2023-09-26 06:21:02.117302+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
c4ac6b9e-1e6d-48b3-b116-d2bbe9c2ca45	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:28:32.099492+00	2023-10-13 10:28:32.099492+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"636146bb-96c6-4ef3-8d5c-a5e7a2f5db0f"}
f4879b46-8c8d-480a-8365-0b4cc22ff4c2	An important event-Chaturthi meeting at indore is happening 2023-09-28	Event reminder	unread	2023-09-28 08:51:44.517518+00	2023-09-28 08:51:44.517518+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"993288dc-8adc-4a45-bb9d-9acdb50be5df"}
2ef13f55-2f33-4c75-add3-f7bd2afb4323	@RahulRaikwar has sent a friend request to you	Friend request	unread	2023-09-29 09:38:21.745857+00	2023-09-29 09:38:21.745857+00	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	{"friendship_id":"28850701-5473-44c2-99c9-747ad8013ec5"}
379e9b1a-f892-4c51-8918-04d3ae214af8	@SourabhShrivastava has accepted your friend request	Friend request update	unread	2023-09-29 11:20:50.655884+00	2023-09-29 11:20:50.655884+00	a1910359-9cb4-4f48-b3f9-e7eeeecb537f	{"friendship_id":"a1910359-9cb4-4f48-b3f9-e7eeeecb537f"}
3088fa08-34c2-4ddf-ae86-d0582424c43b	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:39:47.814466+00	2023-10-13 10:39:47.814466+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"d6900aa2-2c96-4f4d-8e3a-fd99c9c1e7fc"}
1f502a76-44cf-4e88-8c8e-29006a5c9b79	Gaurav Bhargava sent you an invitation to a date on 5th October	Event invitation	unread	2023-10-03 07:20:17.422974+00	2023-10-03 07:20:17.422974+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
9a97c9f6-736d-43ca-ad9c-bf68f2a3a77d	Gaurav Bhargava sent you an invitation to a date on 5th October	Event invitation	unread	2023-10-03 10:05:31.886627+00	2023-10-03 10:05:31.886627+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
87a58296-9e1f-4bc9-9781-14ecc6ca6867	Gaurav Bhargava removed you from the event set for 5th October	Event update	unread	2023-10-03 10:08:12.004312+00	2023-10-03 10:08:12.004312+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"remove","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
d6a61f96-7863-4aa7-b38f-d96adf88a5c5	@GouravSharma has sent a friend request to you	Friend request	unread	2023-10-03 10:19:31.396979+00	2023-10-03 10:19:31.396979+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"friendship_id":"1e75d08c-bf82-4c10-8fcd-2afc545f5013"}
69c039ec-d64f-480d-a740-5fa128a25a07	Isadate Test sent you an invitation to a date on 2023-09-22	Event invitation	unread	2023-09-22 05:44:08.353112+00	2023-09-22 05:44:08.353112+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"b3d3a94a-1682-4a0d-93af-8e81562ecc0a"}
30880427-6ceb-4fd3-92d0-1913d964f0ae	Isadate Test sent you an invitation to a date on October 10th	Event invitation	unread	2023-10-10 07:44:14.817832+00	2023-10-10 07:44:14.817832+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"b6d5bfad-188f-42b5-a0d1-fb22b5f85ec8"}
4851bb57-1930-481d-8ee8-2793e07c9e9f	An important event-Chanderi meeting at Chanderi is happening 2023-09-30	Event reminder	read	2023-09-30 11:20:16.935638+00	2023-09-30 11:20:16.935638+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"d2eb1bcd-e88b-42d7-b861-382782b98c68"}
a002d8c1-b98d-43ae-b781-443af260e2f0	An important event-Chanderi meeting at Chanderi is happening 2023-09-30	Event reminder	read	2023-09-30 11:44:36.025718+00	2023-09-30 11:44:36.025718+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"d2eb1bcd-e88b-42d7-b861-382782b98c68"}
2c9dd1b5-9396-4dce-8c4a-e91b7eaff428	Gaurav Bhargava sent you an invitation to a date on 28th October	Event invitation	unread	2023-10-10 10:54:45.147516+00	2023-10-10 10:54:45.147516+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"df42b8d4-5bea-4283-8135-2d3536e16c35"}
78f2fbc3-f93a-4d17-818f-8c4068a9deb2	Gaurav Bhargava sent you an invitation to a date on 28th October	Event invitation	unread	2023-10-10 11:07:24.986978+00	2023-10-10 11:07:24.986978+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"745d0021-6424-47ee-b86d-7d417140388f"}
b569f052-8b53-4caa-a77a-f7aaca0dfd11	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 09:37:11.895335+00	2023-10-13 09:37:11.895335+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"81b8c152-76d8-4e35-91eb-65567e0a18da"}
4a68499b-b53d-448f-96ea-dceac65ff09b	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:07:00.397887+00	2023-10-13 10:07:00.397887+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"ac929539-fbf2-4d1b-93f7-e7f271d800fe"}
30147f3b-9150-4301-8117-9ef4498dfa32	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:07:00.397887+00	2023-10-13 10:07:00.397887+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"ac929539-fbf2-4d1b-93f7-e7f271d800fe"}
10e4864a-67fe-43ff-9c68-b20473fdab76	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:29:20.807212+00	2023-10-13 10:29:20.807212+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"92bdc75a-7785-43d2-bb6a-ca705c3c2b33"}
93d551c6-909c-4285-8f19-deac49d2c269	Isadate Test sent you an invitation to a date on 2023-09-22	Event invitation	unread	2023-09-22 06:02:20.443254+00	2023-09-22 06:02:20.443254+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"3490d076-57b9-4d15-a84c-d49381ddef74"}
a54009ca-8f76-448d-9ddd-9cc29a4a52b4	Gaurav Bhargava sent you an invitation to a date on undefined	Event invitation	unread	2023-09-22 12:21:49.311632+00	2023-09-22 12:21:49.311632+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
5c807bb1-4004-4fd1-b293-82aefa8f9968	Gaurav Bhargava sent you an invitation to a date on undefined	Event invitation	unread	2023-09-22 13:22:06.614527+00	2023-09-22 13:22:06.614527+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
8ed2290f-1fec-4bd4-aadd-d2e938e24269	Gaurav Bhargava sent you an invitation to a date on undefined	Event invitation	unread	2023-09-22 13:22:06.614527+00	2023-09-22 13:22:06.614527+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
2113952d-4ee9-44a2-b36d-3ee36606b57e	Isadate Test sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 13:57:49.090136+00	2023-09-22 13:57:49.090136+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"d1998af6-4648-43c1-b6c9-52c3e5d0d62f"}
c05597ab-3ea5-4c3e-a920-f83b2a1a8abd	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:14:21.866998+00	2023-09-26 05:14:21.866998+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
c813d174-d37d-4c6b-9c74-68bae667cd95	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:14:21.866998+00	2023-09-26 05:14:21.866998+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
c56a3941-0dd0-4396-a153-6a77a93b8d1c	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 05:14:23.286996+00	2023-09-26 05:14:23.286996+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
b4eddb9a-bd85-4703-b10d-58d2a250d2e5	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:31:20.854132+00	2023-09-26 05:31:20.854132+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
14ac7b25-f65b-4aec-bf87-1b9464d6e42a	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 05:31:22.187433+00	2023-09-26 05:31:22.187433+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
b83e5674-0fa1-47c3-8a86-fc6f16967412	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:06:10.686958+00	2023-09-26 06:06:10.686958+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"833fc0b9-2f89-48f3-bd2f-1b9cbe4f998b"}
5dccd6b4-d5ac-4f9b-b2d1-2ae1090ddd56	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 06:14:41.325917+00	2023-09-26 06:14:41.325917+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
f8b99ba9-2d1c-4f41-828b-699d7f419ce8	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 06:14:42.672174+00	2023-09-26 06:14:42.672174+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
84a667d4-08e1-4e1d-b724-893d228fc3e4	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:21:15.147722+00	2023-09-26 06:21:15.147722+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
7c77d9eb-5c7f-4bdd-9eae-b970ef70936a	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 10:40:14.935445+00	2023-09-26 10:40:14.935445+00	6df0604d-ef1e-48b5-8bc2-7275b0f669ef	{"action":"invite","event_id":"7de60274-4b65-41aa-ab71-bf5997ebf7c2"}
f66d90f4-19e8-4e0c-aa26-deb8810cd32d	An important event-Chaturthi meeting at indore is happening 2023-09-28	Event reminder	unread	2023-09-28 09:03:08.974194+00	2023-09-28 09:03:08.974194+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"993288dc-8adc-4a45-bb9d-9acdb50be5df"}
4b8342b6-7f8a-4f05-9ab0-bf105a3f8c28	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:29:20.807212+00	2023-10-13 10:29:20.807212+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"92bdc75a-7785-43d2-bb6a-ca705c3c2b33"}
257a6419-5c15-4de9-a30f-ce296e380bbb	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:39:47.814466+00	2023-10-13 10:39:47.814466+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"d6900aa2-2c96-4f4d-8e3a-fd99c9c1e7fc"}
d5a47da7-fc58-4cd6-a841-012074095210	An important event - B2B meeting at hotel the paramjeet is happening on 2023-10-13	Event reminder	unread	2023-10-13 13:52:47.180559+00	2023-10-13 13:52:47.180559+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"7c55ddba-d0a8-48e1-9e50-287a51bbf786"}
a4150c2c-120d-49a9-9f73-25858335e66f	Sourabh Shrivastava sent you an invitation to a date on 30th September	Event invitation	unread	2023-09-29 11:24:44.661944+00	2023-09-29 11:24:44.661944+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"f9a532b0-f0d3-49d5-97f8-7f1eb75dc6a8"}
4789549f-f645-4948-a596-2fdbe1790ae8	Gaurav Bhargava removed you from the event set for 5th October	Event update	unread	2023-10-03 07:21:35.971356+00	2023-10-03 07:21:35.971356+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"remove","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
c6a04912-7cec-481d-9010-631df8f588c0	An important event - Meeting at Kolkata is happening on 2023-10-13	Event reminder	unread	2023-10-13 16:22:52.419894+00	2023-10-13 16:22:52.419894+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"a275e48e-8245-4632-8d49-5b2da091382a"}
d356184c-c295-471c-baf2-2bb5f726662d	@IsadateTest has accepted your friend request	Friend request update	unread	2023-10-05 06:56:09.943266+00	2023-10-05 06:56:09.943266+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"friendship_id":"f382f1ed-4b56-4a97-b2e0-eb1e316e2b23"}
2308311a-ff60-4cda-8d8f-b95cc706ce8f	An important event - Meeting at Kolkata is happening on 2023-10-13	Event reminder	unread	2023-10-13 16:25:49.983082+00	2023-10-13 16:25:49.983082+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"a275e48e-8245-4632-8d49-5b2da091382a"}
7c13a220-9de7-4413-a34d-bf89e828f442	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	read	2023-09-26 06:09:54.729745+00	2023-09-26 06:09:54.729745+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"c98bc637-2bc5-42b4-9175-9d44839fd4a9"}
640cac16-6b53-4d04-b183-ff0965016962	An important event-Dinner at Varun Hotel is happening 2023-09-21	Event reminder	read	2023-09-21 12:58:13.317895+00	2023-09-21 12:58:13.317895+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"reminder","event_id":"73b16ea4-4f68-4dbe-996d-ec127423c6fa"}
988bd15a-48da-4f3f-bb50-e72511e98cbe	Gaurav Bhargava sent you an invitation to a date on 30th September	Event invitation	read	2023-09-29 15:01:47.896109+00	2023-09-29 15:01:47.896109+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"0bbf85bb-95c7-46dc-bdce-0d61686fcaf4"}
d5798e17-76b1-4f5d-94b2-d49aa907c95d	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:32:05.485919+00	2023-10-13 10:32:05.485919+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"518f2ac1-802c-4a88-8377-eafa73721ab4"}
1fc2aa7f-9103-4bbe-b3ea-89aebb692ede	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:32:05.485919+00	2023-10-13 10:32:05.485919+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"518f2ac1-802c-4a88-8377-eafa73721ab4"}
33a2c118-056a-4913-a7ee-d86522bd53b8	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:48:49.844863+00	2023-10-13 10:48:49.844863+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"8ae7eca2-00fe-4afc-aa21-aabec1032792"}
3014d0d6-93b2-4872-8a6e-2b7fb89d8cc9	Isadate Test sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 06:09:55.402699+00	2023-09-22 06:09:55.402699+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"invite","event_id":"7ebcda10-8d6a-426e-bc9d-697bcc38bb57"}
85f1ddd5-9481-4d0c-854d-3c8c1a84841d	Isadate Test sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-22 06:09:55.402699+00	2023-09-22 06:09:55.402699+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"7ebcda10-8d6a-426e-bc9d-697bcc38bb57"}
0752be12-e553-4573-951c-64d2f91417e1	Gaurav Bhargava sent you an invitation to a date on undefined	Event invitation	unread	2023-09-22 12:41:34.786652+00	2023-09-22 12:41:34.786652+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
a0bfc4d5-1362-467f-8d2a-2e9f308cd571	Gaurav Bhargava sent you an invitation to a date on undefined	Event invitation	unread	2023-09-22 12:41:34.786652+00	2023-09-22 12:41:34.786652+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"830d94aa-d7a7-482e-95ef-286b1412aa8b"}
7b534f5a-0847-47db-91fa-630bb28eadd0	Isadate Test sent you an invitation to a date on 2023-09-22	Event invitation	unread	2023-09-22 13:30:59.13748+00	2023-09-22 13:30:59.13748+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"0be0ea0e-2100-48e5-bf9f-0f2a5473ada9"}
6415dfca-5b9b-4e72-b243-f6bc82ce59b7	Isadate Test sent you an invitation to a date on 2023-09-23	Event invitation	unread	2023-09-23 05:04:27.821987+00	2023-09-23 05:04:27.821987+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"dbbc98ac-7c75-4324-9b86-c4835e6c247a"}
0a4d5cfe-6165-449e-bfbe-43cb3319a921	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:15:02.538631+00	2023-09-26 05:15:02.538631+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
d5fbc64d-372e-4648-a2be-8c9310a8226a	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 05:15:03.877079+00	2023-09-26 05:15:03.877079+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
63c89564-6db0-4ec6-bc17-3a3df74bc41c	Gaurav Bhargava removed you from the event set for 2023-09-27	Event update	unread	2023-09-26 05:48:21.251994+00	2023-09-26 05:48:21.251994+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"remove","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
64f736a0-1199-437e-8d02-8877c2738a63	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-26 05:48:22.61376+00	2023-09-26 05:48:22.61376+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"7899be19-b8a6-4c86-b494-acf40aea5ee8"}
cad23a6f-93f6-4a0b-81e0-7a658d73f009	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:06:53.127335+00	2023-09-26 06:06:53.127335+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"invite","event_id":"833fc0b9-2f89-48f3-bd2f-1b9cbe4f998b"}
928c8c61-1a24-4a0a-beb5-53c74c186f33	Isadate Test removed you from the event set for 2023-09-26	Event update	unread	2023-09-26 06:14:57.062118+00	2023-09-26 06:14:57.062118+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"remove","event_id":"a3fba055-2434-4ea2-b8d7-b2014972d009"}
fefdac74-38a5-4eef-90e4-980c84e0a10c	Isadate Test sent you an invitation to a date on 2023-09-26	Event invitation	unread	2023-09-26 06:14:58.499592+00	2023-09-26 06:14:58.499592+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"a3fba055-2434-4ea2-b8d7-b2014972d009"}
874b7e4c-329f-48b6-9683-75645f98dd91	Isadate Test removed you from the event set for 2023-09-26	Event update	unread	2023-09-26 06:21:26.191188+00	2023-09-26 06:21:26.191188+00	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	{"action":"remove","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
ed57ff9f-4c6b-415e-a92e-14411e6a8c03	Gaurav Bhargava sent you an invitation to a date on 28th November	Event invitation	unread	2023-10-13 10:48:49.844863+00	2023-10-13 10:48:49.844863+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"8ae7eca2-00fe-4afc-aa21-aabec1032792"}
261a2c64-d5c4-4401-bbd5-d36310379a85	Isadate Test sent you an invitation to a date on October 13th	Event invitation	unread	2023-10-13 10:58:12.457401+00	2023-10-13 10:58:12.457401+00	28850701-5473-44c2-99c9-747ad8013ec5	{"action":"invite","event_id":"a275e48e-8245-4632-8d49-5b2da091382a"}
d001ed25-f37b-41e5-96c0-3bd8c6be9a73	Gaurav Bhargava sent you an invitation to a date on 2023-09-27	Event invitation	unread	2023-09-27 10:50:27.719656+00	2023-09-27 10:50:27.719656+00	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	{"action":"invite","event_id":"374e7995-5a7d-442d-8db0-a04dcf8d924b"}
7682b88c-c0d2-4d62-a43f-3e6ddacd563e	Arya null sent you an invitation to a date on 30th September	Event invitation	unread	2023-09-29 09:09:23.696539+00	2023-09-29 09:09:23.696539+00	045e7ee9-9fa2-433d-aa4d-47533d65544a	{"action":"invite","event_id":"a4b2b475-20d7-4aff-bb9b-d3fd9881f0b9"}
3b2865a8-58e0-4f61-9cc6-4956593128c7	@omSingh has accepted your friend request	Friend request update	unread	2023-09-29 11:08:04.093928+00	2023-09-29 11:08:04.093928+00	28850701-5473-44c2-99c9-747ad8013ec5	{"friendship_id":"28850701-5473-44c2-99c9-747ad8013ec5"}
d26eb9be-a9ce-434a-94c7-6414530870fe	@GauravBhargava has sent a friend request to you	Friend request	unread	2023-10-13 11:00:52.795321+00	2023-10-13 11:00:52.795321+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"11404476-acd0-4da5-9b60-9cfae5bc12c4"}
a5fffbbc-decf-4d87-8736-d6b5febb67c2	@GauravBhargava has sent a friend request to you	Friend request	unread	2023-10-13 11:13:19.12936+00	2023-10-13 11:13:19.12936+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"11404476-acd0-4da5-9b60-9cfae5bc12c4"}
c1be6a57-c7a0-4c7f-b2f5-e765c31a6f33	@GauravBhargava has sent a friend request to you	Friend request	unread	2023-10-13 11:16:15.628725+00	2023-10-13 11:16:15.628725+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"11404476-acd0-4da5-9b60-9cfae5bc12c4"}
53920c90-acc8-436b-a026-942b9f3e6ecf	@GauravBhargava has accepted your friend request	Friend request update	unread	2023-10-13 11:34:39.984878+00	2023-10-13 11:34:39.984878+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"92f686cd-10eb-46c4-9738-fa14589bd536"}
5c94a6c2-bf9c-426b-9225-d028604a3b12	@GauravBhargava has accepted your friend request	Friend request update	unread	2023-10-13 12:06:28.941037+00	2023-10-13 12:06:28.941037+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"92f686cd-10eb-46c4-9738-fa14589bd536"}
e68ec81e-255d-4754-b155-417575d6f3cc	@GauravBhargava has accepted your friend request	Friend request update	unread	2023-10-13 12:11:28.263512+00	2023-10-13 12:11:28.263512+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"92f686cd-10eb-46c4-9738-fa14589bd536"}
f8d17a72-632a-49c2-9b55-9dc6b47b3b31	@GauravBhargava has accepted your friend request	Friend request update	unread	2023-10-13 12:14:23.14425+00	2023-10-13 12:14:23.14425+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"92f686cd-10eb-46c4-9738-fa14589bd536"}
0d2fe69f-f82c-4552-896a-5471ad3d1770	Gaurav Bhargava sent you an invitation to a date on 13th October	Event invitation	unread	2023-10-13 13:39:48.140492+00	2023-10-13 13:39:48.140492+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"7c55ddba-d0a8-48e1-9e50-287a51bbf786"}
4166bf64-0b5c-4dde-bf2a-110d5054912c	Gaurav Bhargava sent you an invitation to a date on 28th October	Event invitation	read	2023-10-10 10:54:45.147516+00	2023-10-10 10:54:45.147516+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"df42b8d4-5bea-4283-8135-2d3536e16c35"}
a6a66d7e-6bcf-4c4f-a1ce-d489c57b7820	Gaurav Bhargava accepted your invitation to a date on 2023-09-26	Event invitation update	read	2023-09-26 08:40:05.993356+00	2023-09-26 08:40:05.993356+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"3f896e5c-2a78-4c59-9370-210390f1c4f7"}
ef928478-496e-4c9c-a6a3-ca9682b53b04	Gaurav Bhargava removed you from the event set for 5th October	Event update	read	2023-10-03 07:20:16.038986+00	2023-10-03 07:20:16.038986+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"remove","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
d6bd3905-a052-4789-84ac-c8cbf35e7cd9	Gaurav Bhargava removed you from the event set for 5th October	Event update	read	2023-10-03 10:05:30.527676+00	2023-10-03 10:05:30.527676+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"remove","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
c7c2f787-17ce-4e2a-bae1-c25e0bc853c3	Code Sandbox sent you an invitation to a date on 2023-09-22	Event invitation	read	2023-09-21 11:54:52.648855+00	2023-09-21 11:54:52.648855+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"73b16ea4-4f68-4dbe-996d-ec127423c6fa"}
b19f71d2-b83a-4631-bced-93f67a05af39	Gaurav Bhargava sent you an invitation to a date on 5th October	Event invitation	read	2023-10-03 07:21:37.449331+00	2023-10-03 07:21:37.449331+00	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	{"action":"invite","event_id":"27e07d22-42c6-4aed-b9ed-f8422bd57347"}
548406f8-7e71-4edc-96e9-beb5b0e3fcd3	Isadate Test sent you an invitation to a date on October 28th	Event invitation	unread	2023-10-13 10:34:19.738773+00	2023-10-13 10:34:19.738773+00	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	{"action":"invite","event_id":"63395380-438a-4c9e-b17c-5826cacc69b0"}
2b377173-eee7-4091-b6d9-d630cf38fd71	Isadate Test sent you an invitation to a date on October 28th	Event invitation	unread	2023-10-13 10:34:19.738773+00	2023-10-13 10:34:19.738773+00	51533294-1540-4ad0-a1ca-99e20372653e	{"action":"invite","event_id":"63395380-438a-4c9e-b17c-5826cacc69b0"}
ab4c4303-9f70-4f9c-995d-c5f484784c21	Isadate Test sent you an invitation to a date on October 28th	Event invitation	unread	2023-10-13 10:34:19.738773+00	2023-10-13 10:34:19.738773+00	b23787cb-1c0b-452f-af87-9d7276146e51	{"action":"invite","event_id":"63395380-438a-4c9e-b17c-5826cacc69b0"}
1bdf7e6a-b0c5-4b77-a3f7-ef3698baf775	@GauravBhargava has sent a friend request to you	Friend request	unread	2023-10-13 11:01:46.060414+00	2023-10-13 11:01:46.060414+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"11404476-acd0-4da5-9b60-9cfae5bc12c4"}
6f73795d-c4dd-40c4-9fce-dd01570492e9	@GauravBhargava has accepted your friend request	Friend request update	unread	2023-10-13 11:35:08.840864+00	2023-10-13 11:35:08.840864+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"92f686cd-10eb-46c4-9738-fa14589bd536"}
8b82fb70-0c15-44bf-a713-ef0ad4ecc5c5	@GauravBhargava has accepted your friend request	Friend request update	unread	2023-10-13 12:07:53.276462+00	2023-10-13 12:07:53.276462+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"friendship_id":"92f686cd-10eb-46c4-9738-fa14589bd536"}
7947798e-3065-4e16-ae8b-db2024783da2	Gaurav Bhargava sent you an invitation to a date on 13th October	Event invitation	unread	2023-10-13 13:39:48.140492+00	2023-10-13 13:39:48.140492+00	92f686cd-10eb-46c4-9738-fa14589bd536	{"action":"invite","event_id":"7c55ddba-d0a8-48e1-9e50-287a51bbf786"}
ba536d7c-0d80-4956-813c-7fc4efca7d99	An important event - B2B meeting at hotel the paramjeet is happening on 2023-10-13	Event reminder	unread	2023-10-13 13:53:56.566019+00	2023-10-13 13:53:56.566019+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"7c55ddba-d0a8-48e1-9e50-287a51bbf786"}
faccab5d-45fb-4d67-8f4f-c4b12a7b080f	An important event - Meeting at Kolkata is happening on 2023-10-13	Event reminder	unread	2023-10-13 16:25:02.303279+00	2023-10-13 16:25:02.303279+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"a275e48e-8245-4632-8d49-5b2da091382a"}
955b29e8-0810-425e-af96-3166b2aaae3a	An important event - Meeting at Kolkata is happening on 2023-10-13	Event reminder	unread	2023-10-13 16:37:12.703666+00	2023-10-13 16:37:12.703666+00	11404476-acd0-4da5-9b60-9cfae5bc12c4	{"action":"reminder","event_id":"a275e48e-8245-4632-8d49-5b2da091382a"}
\.


--
-- Data for Name: _sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."_sessions" ("id", "device_id", "access_token", "user_id", "created_at", "updated_at") FROM stdin;
155fbd5c-b429-496b-8afa-270cbf410288	oppof9pro	10a4fe60-077b-4b8c-b3d3-d3964cf2e75a	11404476-acd0-4da5-9b60-9cfae5bc12c4	2023-10-03 12:38:09.984691+00	2023-10-03 12:38:09.984691+00
27bf0656-6a50-44e4-a697-9effd577ca77	q29XYgsTvTysTL6BHSzfW	62243780-4e81-4508-b8ef-8fb72c204533	f382f1ed-4b56-4a97-b2e0-eb1e316e2b23	2023-10-04 10:14:28.83698+00	2023-10-04 10:14:28.83698+00
c3852a0f-75e2-4495-8f46-7977e6c5ee37	aZEp6qIzHHhxU6Vsf5s9W	dae06121-1f3d-4f4b-a279-a46e031f10f1	ac57d6c8-4d7c-46cb-bd38-ee6b7edf62a2	2023-10-11 09:05:01.759111+00	2023-10-11 09:05:01.759111+00
fc8b9de0-d6af-4fe4-afbd-0d298602bc27	oppof9pro	de62359b-08f9-41ba-95ed-1607f9bc2698	92f686cd-10eb-46c4-9738-fa14589bd536	2023-08-10 11:01:54.061886+00	2023-08-10 11:01:54.061886+00
ebef48c5-29cf-4942-be6a-92007aaeb85a	oppof9pro	97f37f50-25a9-47c0-94bf-d2dd50e7c7c6	045e7ee9-9fa2-433d-aa4d-47533d65544a	2023-08-26 09:43:18.274271+00	2023-08-26 09:43:18.274271+00
97203fe7-0cea-4963-a335-b5db3e506af9	oppof9pro	79c00ae4-5a93-4a15-b5a0-128b21cb3b5f	a1910359-9cb4-4f48-b3f9-e7eeeecb537f	2023-09-06 16:37:26.002237+00	2023-09-06 16:37:26.002237+00
f74f0f84-b13f-4c0c-bf51-7e7b47763ca7	oppof9pro	9df417c8-62f4-4992-869c-0ce9ad5d7236	c8e2b35b-4d91-47a1-b583-f2a2f50d74e4	2023-09-11 05:09:22.564415+00	2023-09-11 05:09:22.564415+00
d19265b0-61b2-499f-a80d-816f2b2cb43d	oppof9pro	2a9f510b-1557-41fe-9c80-9fc2796cdb9b	28850701-5473-44c2-99c9-747ad8013ec5	2023-09-13 05:57:40.557124+00	2023-09-13 05:57:40.557124+00
ab75c4a6-2039-4a4f-a744-c5ef492cfb3f	EA4gha5XDmUU2lE5zEZ-K	66744c0e-b531-417d-ab34-e14f1981a2ba	8fa27535-eb1b-4482-b3b8-a99fbb8a87c3	2023-09-20 10:43:38.63607+00	2023-09-20 10:43:38.63607+00
7b10df7b-9f0a-49e7-84d5-7cd97dd59736	opfAftpExQhIEB6QtFXgv	1419aa1e-3356-4bb5-9c19-bc208f6b7e2d	b23787cb-1c0b-452f-af87-9d7276146e51	2023-09-21 11:29:34.857711+00	2023-09-21 11:29:34.857711+00
c2a6c5a6-b9ed-49bd-b10f-7973ffeb2434	h50LdOaHDNLUZ91Ct4-bx	a999e4e3-119f-4dbe-95f6-f850e3c882da	51533294-1540-4ad0-a1ca-99e20372653e	2023-09-22 11:21:05.992363+00	2023-09-22 11:21:05.992363+00
3a37feb3-10ae-42fc-9229-8ff86c047e11	ycJumHcwoJ6sasJ1y1tis	55d27b5d-d6e3-4809-b7ab-29906494508b	8d90efd0-7ecf-4dba-99f6-eb8c90b8a83d	2023-09-22 13:15:41.995653+00	2023-09-22 13:15:41.995653+00
3d34001f-81bf-4ce8-b6c6-7926922dac8d	0ICPLfqO0bAAbFFmHDokM	e3203caf-6885-45cf-bc4b-e17e96788002	fb9f7ac8-bdb2-4239-b9ac-58b7b52c6a34	2023-09-22 13:21:04.732576+00	2023-09-22 13:21:04.732576+00
183c6cf3-d6fe-47c9-a671-de02b7ebcecf	IjhMximxFEXyoHw3jPYIU	a5d78426-3662-43c3-89c5-24e17e43fc91	6df0604d-ef1e-48b5-8bc2-7275b0f669ef	2023-09-22 14:35:55.497374+00	2023-09-22 14:35:55.497374+00
6ac4ee12-879c-426c-a096-9b99549cc150	oppof9pro	96630183-bb9c-4d0d-99a2-999cba56557a	b0e3d24a-0400-4615-aabf-20f717689aa7	2023-09-27 10:17:05.571725+00	2023-09-27 10:17:05.571725+00
d5667f9f-87d7-4fcb-bce4-bbe9323aa2f4	oppof9pro	d71e56d6-698c-476c-8799-d24df6d8c662	a59fc3e7-56f5-4df1-9523-02d24b791bd9	2023-09-29 12:51:21.336857+00	2023-09-29 12:51:21.336857+00
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."users" ("id", "username", "first_name", "last_name", "email", "gender", "dob", "otp", "status", "working_hours_days", "working_hours_time", "sleeping_hours_days", "sleeping_hours_time", "longitude", "latitude", "fcm_token", "device_info", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: chats; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chats" ("id", "status", "chat_type", "chat_name", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: chat_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_audiences" ("id", "role", "status", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
\.


--
-- Data for Name: chat_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_messages" ("id", "message", "created_at", "updated_at", "chat_id", "user_id") FROM stdin;
\.


--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."events" ("id", "title", "venue", "description", "reminder", "is_reminder_sent", "is_solo", "is_important", "start_date", "end_date", "start_time", "end_time", "venue_long", "venue_lat", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: chat_message_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_message_attachments" ("id", "file_name", "url", "created_at", "updated_at", "chat_id", "message_id", "event_id") FROM stdin;
\.


--
-- Data for Name: event_attendences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_attendences" ("id", "note", "status", "created_at", "updated_at", "user_id", "event_id") FROM stdin;
\.


--
-- Data for Name: event_audiences; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_audiences" ("id", "status", "role", "created_at", "updated_at", "user_id", "event_id") FROM stdin;
\.


--
-- Data for Name: friends; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."friends" ("id", "friend_id", "status", "note", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."media" ("id", "original_name", "path", "mime_data", "entity_id", "key", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."notifications" ("id", "description", "title", "status", "data", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."sessions" ("id", "device_id", "access_token", "created_at", "updated_at", "user_id") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id") FROM stdin;
\.


--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--

COPY "vault"."secrets" ("id", "name", "description", "secret", "key_id", "nonce", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
