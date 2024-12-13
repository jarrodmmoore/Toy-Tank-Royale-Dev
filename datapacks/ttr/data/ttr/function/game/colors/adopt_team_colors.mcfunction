tag @s remove need_color

#team colors
execute if entity @s[tag=redTeam] run scoreboard players set @s color_1 2
execute if entity @s[tag=redTeam] run scoreboard players set @s color_2 2
execute if entity @s[tag=blueTeam] run scoreboard players set @s color_1 3
execute if entity @s[tag=blueTeam] run scoreboard players set @s color_2 3

tellraw @s[tag=hasCustomColors] ["",{"translate":"ttr.hotbar.paint_job.cannot_apply_teams","color":"red","italic":true}]