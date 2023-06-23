-- 現在時刻の取得
SELECT NOW();

-- 「items」テーブルに「id = 1」の在庫数を更新、更新時間
UPDATE items 
    SET stock = 90,
        updated_at = now()
    WHERE id = 3;

-- 「items」テーブルのレコード数を取得
SELECT COUNT(id) FROM items;

SELECT COUNT(id) AS item_count FROM items;

--「items」テーブルの「price」の合計金額を計算
SELECT SUM(price) AS total_price FROM items;

--「items」テーブルの「price」の平均金額を計算
SELECT AVG(price) AS average_price FROM items;

--「items」テーブルのレコード数と「price」の合計金額と平均金額を取得
SELECT 
    COUNT(id) AS item_count,
    SUM(price) AS total_price ,
    AVG(price) AS average_price
    FROM items;

-- 「items」テーブルの総合計金額 (「price × stock」の合計)
SELECT
    SUM(price * stock) AS total_price,
    AVG(price * stock) AS average_price
    FROM items;

-- 「items」テーブルの「price」の最大値、最小値 (カラムは指定できない)
SELECT
    MAX(price) AS max_price,
    MIN(price) AS min_price
    FROM items;

-- 「items」テーブルの「price」の税抜き価格
SELECT 
    code,
    price, 
    ROUND(price / 1.1) AS price_without_tax 
    FROM items;

SELECT 
    *, 
    ROUND(price / 1.1) AS price_without_tax 
    FROM items;