-- 2023-06-23 2.week2

-- 「items」テーブルにレコードを挿入 (INSERT)
INSERT INTO items (code, name, price, stock) 
    VALUES ("D00001", "コーヒー", 300, 100);

INSERT INTO items (code, name, price, stock) 
    VALUES ("D00002", "紅茶", 350, 100);

INSERT INTO items (code, name, price, stock) 
    VALUES ("D00003", "ほうじ茶", 400, 100);

-- 「items」テーブルに複数のレコードを挿入
INSERT INTO items (code, name, price, stock) 
    VALUES ("D00001", "コーヒー", 300, 100)
    VALUES ("D00002", "紅茶", 350, 100)
    VALUES ("D00002", "紅茶", 350, 100);

-- 「items」テーブルに「id = 1」の在庫数を更新 (UPDATE)
UPDATE items SET stock = 150 WHERE id = 1;