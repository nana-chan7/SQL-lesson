-- INSERT INTO items (code, name, price, stock) 
--     VALUES ("D00001", "コーヒー", "300");
-- INSERT INTO items (code, name, price, stock) 
--     VALUES ("D00002", "紅茶", "300");
-- INSERT INTO items (code, name, price, stock) 
--     VALUES ("D00003", "ほうじ茶", "300");

INSERT INTO user_items (user_id, item_id, amount, total_price) VALUES (1, 1, 3, 900);
INSERT INTO user_items (user_id, item_id, amount, total_price) VALUES (2, 1, 1, 300);
INSERT INTO user_items (user_id, item_id, amount, total_price) VALUES (1, 3, 2, 800);
INSERT INTO user_items (user_id, item_id, amount, total_price) VALUES (3, 2, 2, 700);
