select * from project1;
select * from overall_wc_stats;

#que1
select distinct(team) from project1;

# que 2
select team from project1 where 'rank'=1 and 'group'=7;

select team 
from project1 
where `rank`=1 and `group`=7;

#que 3
select count(team) from project1;

#que 4
select team, matches_played from project1;

# que 5
select team, 100.0*(wins/matches_played) as wins_percent 
from project1;

#que 6
select team, goALS_SCORED
from PROJECT1
where GOALs_SCORED = ( select max(goals_scored) from project1);

#que 7
select team, round(100.0*(draws/matches_played), 2) 
from project1;

#que 8
select team, goals_scored from project1
where goals_scored= (select min(goals_scored) from project1);

#que 9
select team, 100.0*(losses/matches_played) as losses_percent
from project1 
order by losses_percent;

#que 10
select avg(goal_difference) from project1;
select avg(goal_difference) 
from project1;

#que 11
select team, points
from project1  
where points=0;

#que 12
select * 
from project1 
where expected_goal_scored < exp_goal_conceded;

#que 13
select * 
from project1 
where exp_goal_difference between -0.5 and 0.5;

#que 14
select * from project1 
order by exp_goal_difference_per_90 asc;

#que 15
select team, players_used 
from overall_wc_stats 
where players_used = (SELECT max(players_used) FROM overall_wc_stats);

# 17	Write an SQL query to show each team name and avg_age in ascending order by avg_age

select team, avg_age from overall_wc_stats 
order by avg_age;

#18	Write an sql query to show average possession of teams 

select avg(possession) from overall_wc_stats;

#19.	Write a SQL query to show team which has played atleast 5 games
select team, games  from overall_wc_stats
where games>=5;

#20.	Write an SQL query to show all data for which minutes is greater than 600
select * from overall_wc_stats 
where minutes>600;

#21.	Write an SQL query to show team, goals, assists in ascending order by goals
select team, goals, assists from overall_wc_stats
order by goals;

#22.	Write an SQL query to show team, pens_made, pens_att in descending order by pens_made
select team, pens_made, pens_att from overall_wc_stats 
order by pens_made;

#23.	Write an SQL query to show team, cards_yellow, cards_red where cards_red is equal to 1 in ascending order by cards_yellow 
select team, cards_yellow, cards_red from overall_wc_stats 
where CARDS_RED = 1
order by cards_yellow;

#24.	Write an SQL query to show team, goals_per90, assists_per90, goals_assists_per90 in descending order by goals_assists_per90 
select team , goals_per90, assists_per90, goals_assists_per90 from overall_wc_stats ows 
order by goals_assists_per90 desc;

#25.	Write an SQL query to show team, goals_pens_per90, goals_assists_pens_per90 in ascending order by goals_assists_pens_per90 
select team, goals_pens_per90, goals_assists_pens_per90 from overall_wc_stats ows 
order by goals_assists_pens_per90;

#26.	Write an SQL query to show team, shots, shots_on_target, shots_on_target_pct where shots_on_target_pct is less than 30 in ascending order by shots_on_target_pct 
select team, shots, shots_on_target, shots_on_target_pct from overall_wc_stats ows 
where shots_on_target_pct<30
order by shots_on_target_pct;

#27.	Write an SQL query to show team, shots_per90, shots_on_target_per90 for team Belgium
select team, shots_per90, shots_on_target_per90 from overall_wc_stats ows 
where team = 'belgium';


#28.	 Write an SQL query to show team, goals_per_shot, goals_per_shot_on_target, average_shot_distance in descending order by average_shot_distance 
select team, goals_per_shot, goals_per_shot_on_target, average_shot_distance from overall_wc_stats ows 
order by average_shot_distance;


#29.	Write an SQL query to show team, errors, touches for which errors is 0 and touches is less than 1500 
select team, errors, touches from overall_wc_stats ows 
where errors=0 and touches<1500;

#30.	Write an SQL query to show team, fouls which has maximum number of fouls
select team, fouls from overall_wc_stats ows 
where fouls=(select max(fouls) from overall_wc_stats);

#31.	Write an SQL query to show team, offisdes which has offsides less than 10 or greater than 20
select team, offsides from overall_wc_stats ows 
where offsides<10 or offsides>20;

#32.	Write an SQL query to show team, aerials_won, aerials_lost, aerials_won_pct in descending order by aerials_won_pct 
select team, aerials_won, aerials_lost, aerials_won_pct from overall_wc_stats ows 
order by aerials_won_pct;

#33.	Write an SQL query to show number of teams each group has!
select 'group', count(team)
from project1
order by 'group';

#34.	Write a SQL query to show team names group 6 has
select team, `group` 
from project1 
where `group`=6;

#35.	Write an SQL query to show Australia belongs to which group 
select team, `group` 
from project1 p 
where team='australia';

#36.	Write an SQL query to show group, average wins by each group 
select `group`, avg(wins) as wins
from project1
group by `group`; 

#37.	Write an SQL query to show group, maximum expected_goal_scored by each group in ascending order by expected_goal_scored
select `group`, max(expected_goal_scored) as goals  from project1 p 
group by `group`
order by goals;

#38.	Write an SQL query to show group, minimum exp_goal_conceded by each group in descending order by exp_goal_conceded 
select `group`, min(exp_goal_conceded) as goals from project1
group by `group`
order by goals;

#39.	Write an SQL query to show group, average exp_goal_difference_per_90 for each group in ascending order by exp_goal_difference_per_90 
select `group`, avg(exp_goal_difference_per_90) avg from project1 
group by `group` 
order by avg;

#40.	Write an SQL query to show which team has equal number of goals_scored and goals_against 
select team from project1 p 
where goals_scored = goals_against;

select team, goals_scored, goals_against 
from project1 
where goals_scored = goals_against

#41.	Write an SQL query to show which team has maximum players_used 
select team, players_used
from overall_wc_stats
where players_used= (select max(players_used) from overall_wc_stats);

#42.	Write an SQL query to show team, players_used, avg_age, games, minutes where minutes lessthan 500 and greater than 200 
select team, players_used, avg_age, games, minutes from overall_wc_stats ows 
where minutes<500 and minutes>200;


#43.	Write an SQL query to show all data of group_stats in ascending order BY points
select * from project1 p 
order by points;

#44.	Write an SQL query to show ALL UNIQUE team in ascending order by team
select distinct team from project1;

#45.	 Write an SQL query to show average avg_age of each group and arrange it in descending order by avg_age. 

select p1.`group`, avg(td.avg_age) as avg_group_age
from overall_wc_stats td inner join project1 p1
on td.team=p1.team
group by p1.`group` 
order by avg_group_age desc;

#46.	Write an SQL query to show sum of fouls for each group and arrange it in ascending order by fouls.
select p1.`group`, sum(wc.fouls) fouls
from overall_wc_stats wc inner join project1 p1
on wc.team= p1.team
group by p1.`group`
order by fouls;

#47.	Write an SQL query to show total number of games for each group and arrange it in descending order by games. 
select p1.`group`, sum(wc.games) games
from overall_wc_stats wc inner join project1 p1
on wc.team=p1.team 
group by p1.`group`
order by games desc;

#48.	Write an SQL query to show total number of players_used for each group and arrange it in ascending order by players_used. 
select p1.`group`, sum(wc.players_used) used
from overall_wc_stats wc inner join project1 p1
on wc.team= p1.team
group by p1.`group`
order by used;

#49.	Write an SQL query to show total number of offsides for each group and arrange it in ascending order by offsides.
select p1.`group`, sum(wc.offsides) offsides
from overall_wc_stats wc inner join project1 p1
on wc.team= p1.team
group by p1.`group`
order by offsides;


#50.	Write an SQL query to show average passes_pct for each group and arrange it in descending order by passes_pct.
select p1.`group`, avg(wc.passes_pct) passes
from overall_wc_stats wc inner join project1 p1
on wc.team= p1.team
group by p1.`group`
order by passes;


#51.	Write an SQL query to show average goals_per90 for each group and arrange it in ascending order by goals_per90.
select p1.`group`, avg(wc.goals_per90) goals
from overall_wc_stats wc inner join project1 p1
on wc.team=p1.team 
group by p1.`group`
order by goals;



