#executed by the invisible zombie that is also the collision hull
#very similar to player tank, except the invisible zombie is autonomous

#thankfully unlike in sprint racer, there's no need to have two different entities for storing AI data and having a physical presence
#this is because the AI never "dies" until disabled & we can be sure that it will always be in loaded chunks


#store color for other functions to use
scoreboard players operation #color1 value = @s color_1
scoreboard players operation #color2 value = @s color_2

scoreboard players operation #temporary playerID = @s playerID

#???
scoreboard players add @s aiCoins 0
scoreboard players add @s aiPoints 0

#universal coins for crown detection
scoreboard players operation #universal_coins value = @s aiCoins

scoreboard players set #tank_dash value 0
execute if entity @s[scores={tankDash=1..}] run scoreboard players set #tank_dash value 1

#halt movement
scoreboard players remove @s[scores={haltMovement=1..}] haltMovement 1

#unlimited pellet bounces!
execute if entity @s[scores={infinite_bounce=1..}] run function ttr:control/infinite_bounce

#lifespan for ai
tag @s add my_char
scoreboard players set @s lifespan 10

#reset ourselves if need be
execute if entity @s[tag=ai_need_reset] run function ttr:ai/reset_ai

#visualization
scoreboard players operation #death_state value = @s deathTime
function ttr:ai/node_ai/16/char_get_model

#stun, damage
execute if entity @s[tag=tookDamage] run function ttr:game/tank_took_damage
execute if entity @s[tag=stunned] run function ttr:game/tank_stunned

#still alive!!
execute if entity @s[tag=livin] at @s run function ttr:game/tank_still_alive

#are we dead?
execute if entity @s[scores={deathTime=1..}] run function ttr:ai/await_respawn

#not dead? do movement and shooting
execute if entity @s[scores={deathTime=..0}] run function ttr:ai/node_ai/16/ai_move_main

#update sidebar in certain gamemodes
execute if score #opt_gamemode value matches 1 run function ttr:ai/keep_sidebar_updated
execute if score #opt_gamemode value matches 3 run function ttr:ai/keep_sidebar_updated
execute if score #opt_gamemode value matches 5 run function ttr:ai/keep_sidebar_updated

tag @s remove my_char
tag 00000010-0000-0001-0000-000000000002 remove my_model
tag 00000010-0000-0001-0000-000000000003 remove my_model_2