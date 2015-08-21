select
     (sum(i) ^ 2) - sum(i^2)
from (
    select * from generate_series(1, 100)
) s(i)
;
