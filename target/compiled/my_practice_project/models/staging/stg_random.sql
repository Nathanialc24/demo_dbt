





--staging of random online data
with source_of_staging as (
  select * from `autumnal`.`dbt_nate`.`random_online_data`
),

stage_random_data as (
  select
    Borough,
    Grade,
    Year,
    Demographic
  from source_of_staging
)
select
  *
from stage_random_data