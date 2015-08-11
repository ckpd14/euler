with recursive pf(counter, factor, can_divide) as (
    values(2, 600851475143, false)
    union all
    select
        case
            when factor % counter = 0 then counter
            else counter + 1
        end
        , case
            when factor % counter = 0 then factor / counter
            else factor
        end
        , case
            when factor % counter = 0 then true
            else false
        end
    from
        pf
    where
        factor <> 1
)
select
    max(counter)
from
    pf
where
    can_divide = true
;