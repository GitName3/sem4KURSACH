INSERT INTO public.users (id, active, date_of_creation, email, name, password, phone_number, image_id) VALUES (402, true, '2024-05-10 21:31:20.31367', 'admin@gmail.com', 'admin', '$2a$08$D5qf8Xe4meQnl6r1Nj8rS.ah4UFYdtUzMnMLBpTRxzRlXxsx2xvXi', '+79143556789', NULL);
ON CONFLICT DO NOTHING

INSERT INTO public.user_role (user_id, roles) VALUES (402, 'ROLE_ADMIN');

-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (252, '2024-05-10', 'Сыр моцарелла, томаты, соус песто, сыр пармезан, фирменный томатный соус', 902, 839, 'Маргарита', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (253, '2024-05-10', 'Бекон, сыр моцарелла, фирменный сливочный соус, сыр пармезан, хрустящие чипсы из бекона, рубленная петрушка', 903, 1069, 'Карбонара', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (254, '2024-05-10', 'Ветчина, бекон, курица, перец соломка, красный лук, соус барбекю, сыр моцарелла, фирменный томатный соус', 904, 1069, 'Барбекю', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (255, '2024-05-10', 'Пепперони, сыр моцарелла, фирменный томатный соус', 905, 949, 'Пепперони', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (256, '2024-05-10', 'Сыр моцарелла, сыр чеддер, сыр блю чиз, сыр пармезан, фирменный сливочный соус', 906, 1169, 'Четыре сыра', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (257, '2024-05-10', 'Пепперони, халапеньо, томаты, красный лук, сыр моцарелла, фирменный томатный соус', 907, 1069, 'Диабло', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (258, '2024-05-10', 'Ветчина, сладкие ананасы, сыр моцарелла, пикантный соус Сальса', 908, 879, 'Гавайская', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (259, '2024-05-10', 'Курица, красный лук, маринованные грибы шампиньоны, красный лук, сыр моцарелла, сыр пармезан, сметанно-грибной соус, рубленная петрушка', 909, 1009, 'Грибная', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (260, '2024-05-10', 'Курица, перец соломка, сыр моцарелла, сыр пармезан, соус песто, прованские травы', 910, 1009, 'Чикен песто', 402);
-- INSERT INTO public.product (id, date_of_creation, description, preview_image_id, price, title, user_id) VALUES (261, '2024-05-10', 'Курица, маринованные грибы шампиньоны, красный лук, сыр моцарелла, сыр пармезан, сметанно-грибной соус, рубленная петрушка ', 911, 859, 'Жульен', 402);

-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (902, 16610, 'image/jpeg', true, 'file1', 'Eq_it-na_pizza-margherita_sep2005_sml.jpg', 96484, 252);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (903, 16611, 'image/jpeg', true, 'file1', '63e210d3b04a6.jpg', 44232, 253);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (904, 16612, 'image/jpeg', true, 'file1', 'big_ru_item_image_221.jpg', 239925, 254);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (905, 16613, 'image/jpeg', true, 'file1', 'images.jpeg', 15571, 255);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (906, 16614, 'image/jpeg', true, 'file1', '4sira-1.jpg', 858986, 256);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (907, 16615, 'image/jpeg', true, 'file1', 'Без названия.jpeg', 13686, 257);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (908, 16616, 'image/jpeg', true, 'file1', 'Без названия (1).jpeg', 11068, 258);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (909, 16617, 'image/jpeg', true, 'file1', 'big_ru_item_36.jpg', 226641, 259);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (910, 16618, 'image/jpeg', true, 'file1', 'Без названия (2).jpeg', 12323, 260);
-- INSERT INTO public.images (id, bytes, content_type, is_preview_image, name, og_filename, size, product_id) VALUES (911, 16619, 'image/jpeg', true, 'file1', 'u-1cba821643c4a827b27d28b586fe090f.jpg', 37936, 261);

ON CONFLICT DO NOTHING

