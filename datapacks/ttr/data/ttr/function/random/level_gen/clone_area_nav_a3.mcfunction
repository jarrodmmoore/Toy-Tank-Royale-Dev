#alright, SO

#we not only have to generate the navigation field for this square
scoreboard players set #area_3_nav value 0
scoreboard players set #area_3_sp_nav value 0

#but also re-generate the nav for the neighboring squares since the shared walls just changed
scoreboard players set #area_2_nav value 0
scoreboard players set @e[tag=a2,type=marker] botNavProgress 0

scoreboard players set #area_6_nav value 0
scoreboard players set @e[tag=a6,type=marker] botNavProgress 0