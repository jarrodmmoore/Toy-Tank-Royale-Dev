#alright, SO

#we not only have to generate the navigation field for this square
scoreboard players set #area_7_nav value 0
scoreboard players set #area_7_sp_nav value 0

#but also re-generate the nav for the neighboring squares since the shared walls just changed
scoreboard players set #area_4_nav value 0
scoreboard players set @e[tag=a4,type=marker] botNavProgress 0

scoreboard players set #area_8_nav value 0
scoreboard players set @e[tag=a8,type=marker] botNavProgress 0