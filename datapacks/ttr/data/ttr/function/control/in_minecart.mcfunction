#moved to 'game/enter_game' for the sake of text ordering
#execute if score @s controlState matches ..0 if score @s shutUp matches ..0 run function ttr:control/inform_game_type
execute if score @s controlState matches ..0 at @s run function ttr:control/load_pos

scoreboard players operation #temporary playerID = @s playerID

scoreboard players set #tank_dash value 0
execute if entity @s[scores={tankDash=1..}] run scoreboard players set #tank_dash value 1

tag @s add inGame

scoreboard players set @s controlState 1
scoreboard players add @s[scores={controlAnimate=..999}] controlAnimate 1
effect clear @s blindness

#universal coins for crown detection
scoreboard players operation #universal_coins value = @s coins

#halt movement
scoreboard players remove @s[scores={haltMovement=1..}] haltMovement 1

#tutorial
execute if entity @s[scores={tutorial=1..}] run function ttr:control/tutorial

#unlimited pellet bounces!
execute if entity @s[scores={infinite_bounce=1..}] run function ttr:control/infinite_bounce

#hotbar buttons
function ttr:game/hotbar/hotbar_main

###################################
#tag the entities that belong to us

#input_base
#execute as @e[tag=input_base,type=armor_stand] if score @s playerID = #temporary playerID run tag @s add my_base
#execute if entity @e[tag=my_base,tag=input_base,type=armor_stand,limit=1] as @e[limit=1,tag=input_base,type=armor_stand,tag=!my_base] if score @s playerID = #temporary playerID run function ttr:control/kill_input_base
#execute unless entity @e[limit=1,tag=my_base,tag=input_base] as @e[tag=input_base,type=armor_stand] if score @s playerID = #temporary playerID run tag @s add my_base
#execute unless entity @e[limit=1,tag=my_base,type=armor_stand] run function ttr:control/catch_bad_input_stack
###################################

#divide and conquer
function ttr:control/node/__index_start

#player_char
#execute as @e[tag=player_char] if score @s playerID = #temporary playerID run tag @s add my_char
#scoreboard players set @e[limit=1,tag=my_char] lifespan 10

#visualization
#scoreboard players operation #death_state value = @s deathTime
#execute as @e[limit=1,tag=my_char] at @s run function ttr:control/char_get_model

#effects?
#execute if entity @s[scores={vel_multiplier=171..}] run effect give @s speed 30 0 false
#execute if entity @s[scores={cooldown_mult=..99}] run effect give @s haste 30 0 false
#execute if entity @s[tag=extra_life] run effect give @s absorption 30 0 false

#still alive!!
#execute if entity @s[tag=livin] as @e[limit=1,tag=my_char] at @s run function ttr:game/tank_still_alive

#took damage, among other things
##execute if entity @s[tag=tookDamage] as @e[limit=1,tag=my_char] at @s run function ttr:game/tank_took_damage
##execute if entity @s[tag=stunned] as @e[limit=1,tag=my_char] at @s run function ttr:game/tank_stunned

#reload if player char is missing
#execute if entity @e[limit=1,tag=my_char] at @s run scoreboard players set @s charTimeout 0
#execute unless entity @e[limit=1,tag=my_char] at @s run scoreboard players add @s charTimeout 1
#execute if entity @s[scores={charTimeout=5..}] run function ttr:control/load_pos

#keep input stack alive as long as we're near
#scoreboard players set @e[tag=input,distance=..3] lifespan 20

#camera
#function ttr:control/camera/cam_main

#movement here
#execute if entity @e[limit=1,tag=my_char,tag=!noMove] run function ttr:movement/_move_main

#are we dead?
#execute if entity @s[scores={deathTime=1..}] run function ttr:control/await_respawn

#clean up tags for next player that runs this
#tag @e[tag=my_char] remove my_char
#tag @e[tag=my_base] remove my_base
#tag @e[tag=my_model] remove my_model
#tag @e[tag=my_model_2] remove my_model_2