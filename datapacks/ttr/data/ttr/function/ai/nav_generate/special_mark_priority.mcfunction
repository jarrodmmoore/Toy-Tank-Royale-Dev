scoreboard players reset @s sp_nav_location
execute if block ~ 9 ~ white_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 1
execute if block ~ 9 ~ orange_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 2
execute if block ~ 9 ~ magenta_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 3
execute if block ~ 9 ~ light_blue_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 4
execute if block ~ 9 ~ yellow_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 5
execute if block ~ 9 ~ lime_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 6
execute if block ~ 9 ~ pink_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 7
execute if block ~ 9 ~ gray_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 8
execute if block ~ 9 ~ light_gray_concrete unless block ~ 8 ~ red_wool run scoreboard players set @s sp_nav_location 9

#sp_nav_location
execute if score @s sp_nav_location matches 1 run scoreboard players operation #area_1_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 2 run scoreboard players operation #area_2_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 3 run scoreboard players operation #area_3_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 4 run scoreboard players operation #area_4_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 5 run scoreboard players operation #area_5_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 6 run scoreboard players operation #area_6_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 7 run scoreboard players operation #area_7_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 8 run scoreboard players operation #area_8_sp_nav value = #sp_priority value
execute if score @s sp_nav_location matches 9 run scoreboard players operation #area_9_sp_nav value = #sp_priority value