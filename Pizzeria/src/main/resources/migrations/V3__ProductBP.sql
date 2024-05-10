--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Postgres.app)
-- Dumped by pg_dump version 16.1

-- Started on 2024-05-10 22:39:33 MSK

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
-- TOC entry 222 (class 1259 OID 16532)
-- Name: product; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.product (
    id bigint NOT NULL,
    date_of_creation date,
    description text,
    preview_image_id bigint,
    price integer,
    title character varying(255),
    user_id bigint
);


ALTER TABLE public.product OWNER TO postgres;

--
-- TOC entry 3632 (class 0 OID 16532)
-- Dependencies: 222
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (252, '2024-05-10', 'Сыр моцарелла, томаты, соус песто, сыр пармезан, фирменный томатный соус', 902, 839, 'Маргарита', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (253, '2024-05-10', 'Бекон, сыр моцарелла, фирменный сливочный соус, сыр пармезан, хрустящие чипсы из бекона, рубленная петрушка', 903, 1069, 'Карбонара', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (254, '2024-05-10', 'Ветчина, бекон, курица, перец соломка, красный лук, соус барбекю, сыр моцарелла, фирменный томатный соус', 904, 1069, 'Барбекю', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (255, '2024-05-10', 'Пепперони, сыр моцарелла, фирменный томатный соус', 905, 949, 'Пепперони', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (256, '2024-05-10', 'Сыр моцарелла, сыр чеддер, сыр блю чиз, сыр пармезан, фирменный сливочный соус', 906, 1169, 'Четыре сыра', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (257, '2024-05-10', 'Пепперони, халапеньо, томаты, красный лук, сыр моцарелла, фирменный томатный соус', 907, 1069, 'Диабло', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (258, '2024-05-10', 'Ветчина, сладкие ананасы, сыр моцарелла, пикантный соус Сальса', 908, 879, 'Гавайская', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (259, '2024-05-10', 'Курица, красный лук, маринованные грибы шампиньоны, красный лук, сыр моцарелла, сыр пармезан, сметанно-грибной соус, рубленная петрушка', 909, 1009, 'Грибная', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (260, '2024-05-10', 'Курица, перец соломка, сыр моцарелла, сыр пармезан, соус песто, прованские травы', 910, 1009, 'Чикен песто', 402);
INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (261, '2024-05-10', 'Курица, маринованные грибы шампиньоны, красный лук, сыр моцарелла, сыр пармезан, сметанно-грибной соус, рубленная петрушка ', 911, 859, 'Жульен', 402);


--
-- TOC entry 3487 (class 2606 OID 16538)
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- TOC entry 3488 (class 2606 OID 16545)
-- Name: product fk47nyv78b35eaufr6aa96vep6n; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk47nyv78b35eaufr6aa96vep6n FOREIGN KEY (user_id) REFERENCES public.users(id);


-- Completed on 2024-05-10 22:39:33 MSK

--
-- PostgreSQL database dump complete
--

