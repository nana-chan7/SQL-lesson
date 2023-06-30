<<<<<<< HEAD:lesson/join.sql
-- 2023-06-30 2.week3

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
-- LEFT JOIN (外部結合)

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
=======
SELECT
    *
FROM users_items
JOIN users ON user_items.user_id = user_id
>>>>>>> e03d6126d3bc93d4758b6593dfc699ad893d4faf:join.sql
