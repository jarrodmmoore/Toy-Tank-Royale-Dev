#this helps the the AI find openings in the walls

execute if block ~ 7 ~ white_wool if score @s inputDir matches 6..8 unless block ~-1 30 ~ #ttr:ai_move_okay run scoreboard players set @s inputDir 1
execute if block ~ 7 ~ yellow_wool if score @s inputDir matches 2..4 unless block ~1 30 ~ #ttr:ai_move_okay run scoreboard players set @s inputDir 1

execute if block ~ 7 ~ orange_wool if score @s inputDir matches 1..2 unless block ~ 30 ~-1 #ttr:ai_move_okay run scoreboard players set @s inputDir 3
execute if block ~ 7 ~ orange_wool if score @s inputDir matches 8 unless block ~ 30 ~-1 #ttr:ai_move_okay run scoreboard players set @s inputDir 3
execute if block ~ 7 ~ lime_wool if score @s inputDir matches 4..6 unless block ~ 30 ~1 #ttr:ai_move_okay run scoreboard players set @s inputDir 3

execute if block ~ 7 ~ magenta_wool if score @s inputDir matches 6..8 unless block ~-1 30 ~ #ttr:ai_move_okay run scoreboard players set @s inputDir 5
execute if block ~ 7 ~ pink_wool if score @s inputDir matches 2..4 unless block ~1 30 ~ #ttr:ai_move_okay run scoreboard players set @s inputDir 5

execute if block ~ 7 ~ light_blue_wool if score @s inputDir matches 1..2 unless block ~ 30 ~-1 #ttr:ai_move_okay run scoreboard players set @s inputDir 7
execute if block ~ 7 ~ light_blue_wool if score @s inputDir matches 8 unless block ~ 30 ~-1 #ttr:ai_move_okay run scoreboard players set @s inputDir 7
execute if block ~ 7 ~ gray_wool if score @s inputDir matches 4..6 unless block ~ 30 ~1 #ttr:ai_move_okay run scoreboard players set @s inputDir 7