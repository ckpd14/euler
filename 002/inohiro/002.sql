with recursive fib(num1, num2) as (
    values(1, 2)
    union all
    select
        num2
        , num1 + num2
    from
        fib
    where
        num1 <= 4000000
)
select
    sum(num1)
from
    fib
where
    num1 % 2 = 0
;
