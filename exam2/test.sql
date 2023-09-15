-- 8-1
SELECT 
    COUNT(id) AS count
    FROM reserves
    WHERE  checkin_at LIKE '2023-07-08%';

-- 8-2


INSERT INTO
INSERT INTO users (name,number) VALUES ('石塚奈々','220098');

INSERT INTO reserves (name,number,che) VALUES ('石塚奈々','220098');

INSERT INTO reserves (`user_id`, `room_id`, `checkin_at`, `checkout_at`)  
VALUES (
    (SELECT id
    FROM users
    WHERE  name = '石塚奈々'), 
    (SELECT id
    FROM rooms
    WHERE  name = '203'), 
    '2023-07-05 15:00:00', 
    '2023-07-6 10:00:00';
)


SELECT id
FROM users
WHERE  name = '石塚奈々';

SELECT id
FROM rooms
WHERE  name = '203';

