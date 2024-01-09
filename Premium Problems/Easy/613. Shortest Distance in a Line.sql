
select MIN(ABS(p.x - p1.x)) shortest from point p JOIN point p1 on p.x != p1.x;