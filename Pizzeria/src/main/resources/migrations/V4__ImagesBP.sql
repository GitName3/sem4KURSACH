--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Postgres.app)
-- Dumped by pg_dump version 16.1

-- Started on 2024-05-10 22:37:09 MSK

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
-- TOC entry 216 (class 1259 OID 16402)
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id bigint NOT NULL,
    bytes oid,
    content_type character varying(255),
    is_preview_image boolean,
    name character varying(255),
    og_filename character varying(255),
    size bigint,
    product_id bigint
);


ALTER TABLE public.images OWNER TO postgres;

--
-- TOC entry 3632 (class 0 OID 16402)
-- Dependencies: 216
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (902, 16610, 'image/jpeg', true, 'file1', 'Eq_it-na_pizza-margherita_sep2005_sml.jpg', 96484, 252);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (903, 16611, 'image/jpeg', true, 'file1', '63e210d3b04a6.jpg', 44232, 253);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (904, 16612, 'image/jpeg', true, 'file1', 'big_ru_item_image_221.jpg', 239925, 254);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (905, 16613, 'image/jpeg', true, 'file1', 'images.jpeg', 15571, 255);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (906, 16614, 'image/jpeg', true, 'file1', '4sira-1.jpg', 858986, 256);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (907, 16615, 'image/jpeg', true, 'file1', 'Без названия.jpeg', 13686, 257);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (908, 16616, 'image/jpeg', true, 'file1', 'Без названия (1).jpeg', 11068, 258);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (909, 16617, 'image/jpeg', true, 'file1', 'big_ru_item_36.jpg', 226641, 259);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (910, 16618, 'image/jpeg', true, 'file1', 'Без названия (2).jpeg', 12323, 260);
INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (911, 16619, 'image/jpeg', true, 'file1', 'u-1cba821643c4a827b27d28b586fe090f.jpg', 37936, 261);


--
-- TOC entry 3487 (class 2606 OID 16408)
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- TOC entry 3488 (class 2606 OID 16540)
-- Name: images fk8sfun6tj1hqb85ed52o8mkqyh; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT fk8sfun6tj1hqb85ed52o8mkqyh FOREIGN KEY (product_id) REFERENCES public.product(id);


-- Completed on 2024-05-10 22:37:17 MSK

--
-- PostgreSQL database dump complete
--

