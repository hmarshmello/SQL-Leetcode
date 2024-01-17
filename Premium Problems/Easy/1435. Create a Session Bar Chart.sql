select '[0-5>' as bin, count(session_id) as total from sessions where round(duration / 60, 2) >= 0 and round(duration / 60, 2) < 5
union
select '[5-10>' as bin, count(session_id) as total from sessions where round(duration / 60, 2) >= 5 and round(duration / 60, 2) < 10
union
select '[10-15>' as bin, count(session_id) as total from sessions where round(duration / 60, 2) >= 10 and round(duration / 60, 2) < 15
union
select '15 or more' as bin, count(session_id) as total from sessions where round(duration / 60, 2) >= 15;