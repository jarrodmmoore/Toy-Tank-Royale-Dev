#alright, SO

#we not only have to generate the navigation field for this square
scoreboard players set #area_2_nav value 0
scoreboard players set #area_2_sp_nav value 0

#but also re-generate the nav for the neighboring squares since the shared walls just changed
scoreboard players set #area_1_nav value 0
scoreboard players set @e[tag=a1,type=marker] botNavProgress 0

scoreboard players set #area_3_nav value 0
scoreboard players set @e[tag=a3,type=marker] botNavProgress 0

scoreboard players set #area_5_nav value 0
scoreboard players set @e[tag=a5,type=marker] botNavProgress 0