#THIS IS NOW NODE-SPECIFIC!

###################################
#tag the entities that belong to us

#input_base
#execute as @e[tag=input_base,type=armor_stand] if score @s playerID = #temporary playerID run tag @s add my_base
#execute if entity 00000033-0000-0000-0000-000000000004 as @e[limit=1,tag=input_base,type=armor_stand,tag=!my_base] if score @s playerID = #temporary playerID run function ttr:control/kill_input_base
#execute unless entity @e[limit=1,tag=my_base,tag=input_base] as @e[tag=input_base,type=armor_stand] if score @s playerID = #temporary playerID run tag @s add my_base
execute unless entity 00000033-0000-0000-0000-000000000004 run function ttr:control/catch_bad_input_stack

###################################

#player_char
tag 00000033-0000-0000-0000-000000000001 add my_char
scoreboard players set 00000033-0000-0000-0000-000000000001 lifespan 10

#visualization
scoreboard players operation #death_state value = @s deathTime
execute as 00000033-0000-0000-0000-000000000001 at @s run function ttr:control/node/51/char_get_model

#effects?
execute if entity @s[scores={vel_multiplier=171..}] run effect give @s speed 30 0 false
execute if entity @s[scores={cooldown_mult=..99}] run effect give @s haste 30 0 false
execute if entity @s[tag=extra_life] run effect give @s absorption 30 0 false

#still alive!!
execute if entity @s[tag=livin] as 00000033-0000-0000-0000-000000000001 at @s run function ttr:game/tank_still_alive

#took damage, among other things
execute if entity @s[tag=tookDamage] as 00000033-0000-0000-0000-000000000001 at @s run function ttr:game/tank_took_damage
execute if entity @s[tag=stunned] as 00000033-0000-0000-0000-000000000001 at @s run function ttr:game/tank_stunned

#reload if player char is missing
execute if entity 00000033-0000-0000-0000-000000000001 at @s run scoreboard players set @s charTimeout 0
scoreboard players add @s charTimeout 1
execute if entity @s[scores={charTimeout=5..}] run function ttr:control/load_pos

#keep input stack alive as long as we're near
execute as 00000033-0000-0000-0000-000000000004 at @s if entity @a[distance=..5,tag=pl_self] run scoreboard players set @s lifespan 20
execute as 00000033-0000-0000-0000-000000000005 at @s if entity @a[distance=..5,tag=pl_self] run scoreboard players set @s lifespan 20

#camera
function ttr:control/node/51/camera/cam_main

#movement here
#execute if entity @e[limit=1,tag=my_char,tag=!noMove] run function ttr:control/node/51/movement/_move_main
function ttr:control/node/51/movement/_move_main

#are we dead?
execute if entity @s[scores={deathTime=1..}] run function ttr:control/await_respawn

#clean up tags for next player that runs this
#tag @e[tag=my_char] remove my_char
#tag @e[tag=my_base] remove my_base
#tag @e[tag=my_model] remove my_model
#tag @e[tag=my_model_2] remove my_model_2

tag 00000033-0000-0000-0000-000000000001 remove my_char