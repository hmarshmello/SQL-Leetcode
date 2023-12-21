SELECT DISTINCT b.seat_id 
FROM cinema a CROSS JOIN cinema b
WHERE a.seat_id < b.seat_id AND (a.free, b.free) = (1,1)
ORDER BY b.seat_id;

