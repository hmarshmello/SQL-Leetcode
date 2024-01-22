select a.symbol metal, b.symbol nonmetal
from elements a , elements b 
WHERE a.type = 'Metal' and b.type = 'NonMetal';
