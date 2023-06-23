-- usersテーブルからすべてのレコードを選択
SELECT * FROM users;

-- usersテーブルからすべてのレコードを選択(name, email のみ取得)
SELECT name, email, FROM users;

-- usersテーブルから「id = 1」のレコードを選択(=で完全一致)
SELECT * FROM users WHERE id = 1;

SELECT * FROM users WHERE users.id = 1;

-- usersテーブルから「email = "xxxxxx"」のレコードを選択
SELECT * FROM users WHERE email = "naoko97@fujimoto.com";

-- usersテーブルから「email」から「.com」のレコードを選択(%を付けることで部分検索)
SELECT * FROM users WHERE email LIKE "%.com%";

SELECT * FROM users WHERE email LIKE "%.com"; 
-- ↑「.com」は最後につくものなので%は前だけでも良い)

-- usersテーブルから「id >= 5」のレコードを選択
SELECT * FROM users WHERE id >= 5;

-- usersテーブルから「id >= 5」かつ、「id < 10」のレコードを選択
SELECT * FROM users WHERE id >= 5 AND id < 10;

select * from users where id >= 5 and id < 10; 
-- ↑ 予約語が小文字でも動く

-- usersテーブルから「id = 5」または、「id = 10」のレコードを選択
SELECT * FROM users WHERE id = 5 OR id = 10;
SELECT * FROM users WHERE (id = 5) OR (id = 10);

SELECT * FROM users WHERE id IN (5, 10);
-- ↑ IN ()でくくるのほうがカンマ区切りで条件を府やいていけるの効率がいい

-- usersテーブルから「id = 5」ではないレコードを選択
SELECT * FROM users WHERE id != 5;

SELECT * FROM users WHERE NOT(id = 5);
-- ↑ これでもよいが、NOT() は基本的に複雑な構文を処理するときに使う

-- usersテーブルで、id が大きい順(降順▽)に並べる ※DESC: descending(降順)
SELECT * FROM users ORDER BY id DESC;

-- usersテーブルで、「email」のアルファベット順(昇順△)に並べる ※ASC: ascending(昇順)
SELECT email FROM users ORDER BY email ASC;

-- usersテーブルで、「gender」の値の順、idが大きい順(左の構文から優先)
SELECT * FROM users ORDER BY gender ASC, id DESC;
-- ※ アルファベット順 F(female) → M(male)