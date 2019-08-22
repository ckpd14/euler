select
    max(i)
from (
    select
        first_part
        , case when first_part = array_agg(second_part[second_part_index] order by second_part_index desc)
            then true
            else false
        end as match
        , i
    from (
        select
            case when ary_length % 2 = 0
                then ary[1:(ary_length/2)]
                else ary[1:(ary_length/2)+1]
            end as first_part
            , ary[(ary_length/2)+1:ary_length] as second_part
            , generate_subscripts(ary[(ary_length/2)+1:ary_length], 1, true) as second_part_index
            , i
        from (
            select
                i
                , regexp_split_to_array(i::varchar, 'd*') as ary
                , array_length(regexp_split_to_array(i::varchar, 'd*'), 1) as ary_length
            from (
                select
                    distinct (n * m) as i
                from
                    (select * from generate_series(100, 999) ) s(n)
                    cross join (
                        select * from generate_series(100, 999)
                    ) l(m)
            ) k
        ) a
    ) b
    group by
        first_part
        , i
) c
where
    match = true
;
