select
    a.exp_of_sum - a.sum_of_exp
from (
    select
        sum(i^2) as sum_of_exp
        , sum(i) ^ 2 as exp_of_sum
    from (
        select * from generate_series(1, 100)
    ) s(i)
) a
;
