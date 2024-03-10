
with teams as (

  select * from {{ref('example_teams')}}

),

-- team_locations as (

-- select * from {{ ref('team_locations') }}

-- ),

final as (

  select
    teams.team,
    -- the section down is added from a variable current champion which is set in the project yml file. (We have removed the if function here , the code works perfectly without it)
    teams.team = '{{ var("current_champion") }}' as current_champion

    -- team_locations.city,
    -- team_locations.state
  from teams
  -- left join team_locations 
  --   on  team_locations.name = teams.team


)

select * from final 


---The commented out code is the one supposed to be fetching from the seed, this failed to work and I moved on.