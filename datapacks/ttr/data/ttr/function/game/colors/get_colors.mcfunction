tag @s add need_color

#COLOR GUIDE:
#1=green
#2=red
#3=blue
#4=yellow
#5=white
#6=pink
#7=cyan
#8=gray

#solid green is our fallback
scoreboard players set @s color_1 1
scoreboard players set @s color_2 1


######## non-teams mode
#use custom paint job is we specified one
tag @s[tag=hasCustomColors] remove hasCustomColors
execute if score @s cosmeticSet1 matches 1.. run tag @s add hasCustomColors
execute if score @s cosmeticSet2 matches 1.. run tag @s add hasCustomColors
scoreboard players set #global recursions 0
execute if score #opt_teams value matches 0 if entity @s[tag=need_color] if entity @s[tag=hasCustomColors] run function ttr:game/colors/try_custom_colors
execute if score #opt_teams value matches 0 if entity @s[type=player,tag=need_color,tag=hasCustomColors] run tellraw @s ["",{translate:"ttr.hotbar.paint_job.cannot_apply",color:"red",italic:true}]
execute if entity @s[tag=need_color] run tag @s remove hasCustomColors

#try and get a solid color first
scoreboard players set #global recursions 0
execute if score #opt_teams value matches 0 if entity @s[tag=need_color] unless entity @s[scores={mixTankColors=1..}] run function ttr:game/colors/try_solid_colors

#try and get a mixed color second
scoreboard players set #global recursions 0
execute if score #opt_teams value matches 0 if entity @s[tag=need_color] run function ttr:game/colors/try_mixed_colors

#try and get a solid color again third (edge case)
scoreboard players set #global recursions 0
execute if score #opt_teams value matches 0 if entity @s[tag=need_color] run function ttr:game/colors/try_solid_colors
########


######## teams mode
tag @s[tag=hasCustomColors] remove hasCustomColors
execute if score @s cosmeticSet1 matches 1.. run tag @s add hasCustomColors
execute if score @s cosmeticSet2 matches 1.. run tag @s add hasCustomColors

#adopt team colors no matter what
execute if score #opt_teams value matches 1 if entity @s[tag=need_color] unless entity @s[tag=!redTeam,tag=!blueTeam] run function ttr:game/colors/adopt_team_colors

#neutral -- use custom paint job is we specified one
scoreboard players set #global recursions 0
execute if score #opt_teams value matches 1 if entity @s[tag=need_color] if entity @s[tag=hasCustomColors] run function ttr:game/colors/try_custom_colors_teams
execute if score #opt_teams value matches 1 if entity @s[type=player,tag=need_color,tag=hasCustomColors] run tellraw @s ["",{translate:"ttr.hotbar.paint_job.cannot_apply",color:"red",italic:true}]
execute if entity @s[tag=need_color] run tag @s remove hasCustomColors

#neutral team gets a random mixed-color tank (can't have any red or blue)
scoreboard players set #global recursions 0
execute if score #opt_teams value matches 1 if entity @s[tag=need_color] if entity @s[tag=!redTeam,tag=!blueTeam] run function ttr:game/colors/try_mixed_colors_teamless
########


#tellraw @a ["",{text:"[DEV] Tank base color is "},{score:{name:"@s",objective:"color_1"}}]
#tellraw @a ["",{text:"[DEV] Tank head color is "},{score:{name:"@s",objective:"color_2"}}]

tag @s remove need_color

#get name color
execute unless entity @s[scores={color_2=2..}] run team join color_green
execute if entity @s[scores={color_2=2}] run team join color_red
execute if entity @s[scores={color_2=3}] run team join color_blue
execute if entity @s[scores={color_2=4}] run team join color_yellow
execute if entity @s[scores={color_2=5}] run team join color_white
execute if entity @s[scores={color_2=6}] run team join color_pink
execute if entity @s[scores={color_2=7}] run team join color_cyan
execute if entity @s[scores={color_2=8}] run team join color_gray

#re-color everything we have
scoreboard players set #setTeam value 0
execute if entity @s[tag=redTeam] run scoreboard players set #setTeam value 1
execute if entity @s[tag=blueTeam] run scoreboard players set #setTeam value 2
scoreboard players operation #checkID value = @s playerID
scoreboard players set #model_flash value 2
scoreboard players operation #color_1 value = @s color_1
scoreboard players operation #color_2 value = @s color_2
execute if score #force_turtles value matches 1 run scoreboard players set @s tankBodyModel 1
execute if score #force_turtles value matches 1 run scoreboard players set @s tankHeadModel 1
scoreboard players operation #bodyModel value = @s tankBodyModel
scoreboard players operation #headModel value = @s tankHeadModel
execute if entity @s[type=zombie,tag=ai] run function ttr:ai/color_setup/_index
execute unless entity @s[scores={deathTime=1..}] as @e[type=!player,scores={playerID=1..}] if score @s playerID = #checkID value run function ttr:game/colors/entity_recolor
execute if entity @s[scores={deathTime=1..}] as @e[type=!player,scores={playerID=1..}] if score @s playerID = #checkID value run function ttr:game/colors/entity_recolor_dead