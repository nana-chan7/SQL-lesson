-- 2023-06-30 2.week3
-- ※ 最後の一人(購入者 IDが違う3 ← 4 なので注意 先生のと)

-- INNER JOIN (内部結合)
SELECT
    *
FROM user_items
JOIN users ON user_items.user_id = users.id;

-- user_itemsを基準に usersと結合
SELECT
    users.id,
    users.name,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM user_items
INNER JOIN users ON user_items.user_id = users.id;

-- usersを基準に user_itemsと結合
SELECT
    users.id,
    users.name,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM users
INNER JOIN user_items ON user_items.user_id = users.id;

--------------------------------------------------------------------------------
-- OUTER JOIN (外部結合)

-- LEFT JOIN 
-- user_itemsを基準に usersと結合(LEFT)
SELECT
    users.id,
    users.name,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM user_items
LEFT JOIN users ON user_items.user_id = users.id;

-- usersを基準に user_itemsと結合(LEFT)
SELECT
    users.id,
    users.name,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM users
LEFT JOIN user_items ON user_items.user_id = users.id;

-- RIGHT JOIN 
-- user_itemsを基準に usersと結合(RIGHT)
SELECT
    users.id,
    users.name,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM user_items
RIGHT JOIN users ON user_items.user_id = users.id;

-- usersを基準に user_itemsと結合(RIGHT)
SELECT
    users.id,
    users.name,
    user_items.item_id,
    user_items.amount,
    user_items.created_at
FROM users
RIGHT JOIN user_items ON user_items.user_id = users.id;

-- user_itemsを基準に usersと itemsを結合
SELECT
    users.id AS user_id,
    users.name AS user_name,
    items.id AS item_id,
    items.name AS item_name,
    user_items.amount,
    user_items.created_at
FROM user_items
JOIN users ON user_items.user_id = users.id
JOIN items ON user_items.item_id = items.id;
