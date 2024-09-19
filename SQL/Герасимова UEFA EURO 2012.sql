-- 1
SELECT matchid, player
FROM goal 
WHERE teamid = 'GER';
  
-- 2
SELECT id,stadium,team1,team2
FROM game 
WHERE id = 1012;
 
-- 3
SELECT player, teamid, stadium, mdate
FROM game JOIN goal ON (game.id = goal.matchid) 
WHERE teamid = 'GER';
  
-- 4
SELECT team1, team2, player
FROM game JOIN goal ON (game.id = goal.matchid) 
WHERE player LIKE 'Mario%';
  
-- 5
SELECT player, teamid, coach, gtime
FROM goal JOIN eteam ON (goal.teamid = eteam.id)
WHERE gtime <= 10;

-- 6
SELECT mdate, teamname 
FROM game JOIN eteam ON (game.team1 = eteam.id)
WHERE coach = 'Fernando Santos'

-- 7
SELECT player 
FROM game JOIN goal ON (game.id=goal.matchid)
WHERE stadium = 'National Stadium, Warsaw'

-- 8
SELECT DISTINCT player
FROM game JOIN goal ON game.id = goal.matchid 
WHERE (team1 = 'GER' OR team2 = 'GER') AND 'GER' NOT IN (teamid);

-- 9
SELECT teamname, COUNT(*) 
FROM eteam JOIN goal ON eteam.id = goal.teamid
GROUP BY teamname;

-- 10
SELECT stadium, COUNT(*)
FROM game JOIN goal ON game.id = goal.matchid 
GROUP BY stadium;

-- 11
SELECT matchid, mdate, COUNT(*)
FROM game JOIN goal ON game.id = goal.matchid 
WHERE (team1 = 'POL' OR team2 = 'POL')
GROUP BY matchid, mdate;

-- 12
SELECT matchid, mdate, COUNT(*)
FROM game JOIN goal ON game.id = goal.matchid
WHERE teamid = 'GER'
GROUP BY matchid, mdate;

