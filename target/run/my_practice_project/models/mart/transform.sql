

  create or replace table `autumnal`.`dbt_nate_transform_table`.`transform`
  
  
  OPTIONS()
  as (
    



with random as (
  select
    *
  from `autumnal`.`dbt_nate_stage_view`.`stg_random`
),


final as 
(
SELECT 
   Borough,
    Grade,
    case 
        when grade = '3' then 'blue'
        when grade = '4' then 'yellow'
        when grade = '5' then 'orange'
        when grade = '6' then 'black'
        when grade = '7' then 'white'
        when grade = '8' then 'purple'
        else 'doesnt matter'
      end as color,
    Year,
    Demographic
FROM random

)

select * from final
  );
    