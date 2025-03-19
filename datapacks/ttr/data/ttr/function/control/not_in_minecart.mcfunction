#teleport to saves coords
execute if score @s controlState matches 1.. at @s run function ttr:control/warp/warp_to_saved_coords/_go_player_only


#gimme an input stack
execute at @s rotated ~ ~ positioned ^ ^ ^1 unless entity @e[tag=input_base,distance=..2] run function ttr:control/node/summon_input_stack_index

#now ride it
scoreboard players operation #getID value = @s playerID
execute as @e[tag=input_minecart,type=minecart] if score @s playerID = #getID value run tag @s add am_your_ride
ride @s mount @e[limit=1,tag=am_your_ride,type=minecart,sort=nearest]
tag @e[tag=am_your_ride] remove am_your_ride

#reset some variables
scoreboard players set @s controlState 0
scoreboard players set @s controlAnimate 0
scoreboard players set @s inputCooldown 30
clear @s

#go up high until we get in the minecart
#fill ~-1 253 ~-1 ~1 253 ~1 barrier
#fill ~-1 255 ~-1 ~1 255 ~1 barrier

#effects
effect give @s[tag=!noblind] blindness 5 100 true
effect give @s resistance 5 100 true
effect give @s slow_falling 5 100 true

#weird clock
scoreboard players add @s input 1
scoreboard players set @s[scores={input=5..}] input 0

#keep track of where the player is until they're in the minecart
execute at @s store result score @s active_x run data get entity @s Pos[0] 1
execute at @s store result score @s active_z run data get entity @s Pos[2] 1

#don't strafe away please
scoreboard players operation @s active_x -= @s char_set_x
scoreboard players operation @s active_z -= @s char_set_z
execute if entity @s[scores={ride=..0,active_x=2..}] run tp @s ~-2 ~ ~
execute if entity @s[scores={ride=..0,active_x=..-2}] run tp @s ~2 ~ ~
execute if entity @s[scores={ride=..0,active_z=2..}] run tp @s ~ ~ ~-2
execute if entity @s[scores={ride=..0,active_z=..-2}] run tp @s ~ ~ ~2
tp @s[scores={input=4}] ~ 58 ~ 180 55
gamemode adventure @s[gamemode=!adventure]

#not entering game? kick out of game
scoreboard players add @s afkTime 1
execute if entity @s[scores={afkTime=400..}] run function ttr:game/abandon_game

#title @s subtitle ["",{translate:"ttr.game.hold_rmb_to_enter_game",color:"white",with:[{keybind:"key.use",color:"#55FF77"}]}]
title @s subtitle [""]
title @s title [""]
title @s actionbar [""]