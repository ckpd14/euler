with recursive pf(factor, remain, can_divide) as (
    values(2, 600851475143, false)
    union all
    select
        case
            when remain % factor = 0 then factor
            else factor + 1
        end
        , case
            when remain % factor = 0 then remain / factor
            else remain
        end
        , case
            when remain % factor = 0 then true
            else false
        end
    from
        pf
    where
        remain <> 1
)
select
    max(factor)
from
    pf
where
    can_divide = true