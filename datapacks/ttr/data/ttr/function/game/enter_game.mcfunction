tag @s add inControl

#kick a bot immediately if there's too many players
execute if score #ai_count value matches 1.. if score #player_count value matches 64.. run function ttr:ai/_ai_remove

#change arena size if needed?
function ttr:random/level_gen/check_if_changes_needed

clear @s

#temporary values
function ttr:game/get_minecart_boarding_coords
scoreboard players set @s faceDirection 1

#not die yet
scoreboard players set @s deathTime 0
scoreboard players set @s afkTime 0
scoreboard players set @s burstStreak 0

#tutorial restart if needed
scoreboard players set @s[scores={tutorial=1..}] tutorial 1

#10 coins to start
scoreboard players set @s addCoins 0
execute if score #opt_allow_coins value matches 1 run scoreboard players set @s coins 10
execute if score #opt_allow_coins value matches 0 run scoreboard players set @s coins 0
scoreboard players set @s[type=player] points 0

#back to max hitpoints
scoreboard players add @s hitpoints 0
scoreboard players operation @s hitpoints = #opt_hitpoints value
scoreboard players set @s[scores={hitpoints=..0}] hitpoints 1

#reset points in infection mode
scoreboard players reset @s infectPointsRed
scoreboard players reset @s infectPointsBlue
scoreboard players reset @s infectTimeMin
scoreboard players reset @s infectTimeSec
scoreboard players reset @s infectTimeTick
scoreboard players reset @s infectTimeTick2

#no items
scoreboard players set @s hasItem2 0
scoreboard players set @s hasItem3 0
scoreboard players set @s hasItem4 0
scoreboard players set @s hasItem5 0
scoreboard players set @s hasItem6 0
scoreboard players set @s hasItem7 0
scoreboard players set @s hasItem8 0
scoreboard players set @s hasItem9 0
scoreboard players set @s vel_multiplier 170
scoreboard players set @s cooldown_mult 100
scoreboard players set @s infinite_bounce 0
tag @s remove extra_life
tag @s remove livin

execute if score #opt_startitems value matches 1.. run function ttr:game/give_starting_items

#get player node
function ttr:game/player_node/get_node

#tell us the game type
execute if score @s shutUp matches ..0 run function ttr:control/inform_game_type

#get colors
function ttr:game/colors/get_colors

#get player model
scoreboard players set @s tankBodyModel 0
scoreboard players set @s tankHeadModel 0
execute if score #force_turtles value matches 1 run scoreboard players set @s tankBodyModel 1
execute if score #force_turtles value matches 1 run scoreboard players set @s tankHeadModel 1

execute at @s run playsound minecraft:entity.iron_golem.repair master @s ~ ~100000 ~ 1000000 1.9

execute if score #opt_teams value matches 1 if entity @s[tag=redTeam] run tellraw @a[tag=inControl,scores={shutUp=..0}] ["",{translate:"ttr.game.joined_red_team",color:"red",with:[{selector:"@s"}]}]
execute if score #opt_teams value matches 1 if entity @s[tag=blueTeam] run tellraw @a[tag=inControl,scores={shutUp=..0}] ["",{translate:"ttr.game.joined_blue_team",color:"blue",with:[{selector:"@s"}]}]

#message disabled. too much clutter!
#tellraw @s ["",{translate:"ttr.game.get_ready",color:"#66FF88"}]

#recalculate team balance NOW! it's possible that multiple players may check team balance on the same tick.
function ttr:game/team_availability