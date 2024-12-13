#alright, SO

#we not only have to generate the navigation field for this square
scoreboard players set #area_8_nav value 0
scoreboard players set #area_8_sp_nav value 0

#but also re-generate the nav for the neighboring squares since the shared walls just changed
scoreboard players set #area_5_nav value 0
scoreboard players set @e[tag=a5,type=marker] botNavProgress 0

scoreboard players set #area_7_nav value 0
scoreboard players set @e[tag=a7,type=marker] botNavProgress 0

scoreboard players set #area_9_nav value 0
scoreboard players set @e[tag=a9,type=marker] botNavProgress 0