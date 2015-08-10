select
    sum(s.i)
from (
    select
        *
    from
        generate_series(0, 1000-1)
) s(i)
where
    s.i % 3 = 0 or s.i % 5 = 0
;
