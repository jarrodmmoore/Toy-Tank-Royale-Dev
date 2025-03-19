tag @s add meme

scoreboard players operation #temp_id value = @s playerID

#get universal coins
scoreboard players operation @s universalCoins = #universal_coins value

#figure out what square we're in
function ttr:pellet/tanks_check_area
#this isn't related to model stuff, but our collision zombie needs to run this at SOME point

#find our model
#execute as @e[tag=player_model,type=armor_stand] if score @s playerID = #temp_id value run tag @s add my_model
#execute as @e[tag=player_model_head,type=armor_stand] if score @s playerID = #temp_id value run tag @s add my_model_2

#model missing? spawn a new one
execute unless entity 00000022-0000-0000-0000-000000000002 run function ttr:control/node/34/summon_model
execute unless score @s deathTime matches 1.. unless entity 00000022-0000-0000-0000-000000000003 run function ttr:control/node/34/summon_model_head

#note: char_direction is important

#rotate in the direciton we're moving
execute unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run function ttr:movement/face_movement_direction

#come, tp to me
scoreboard players set 00000022-0000-0000-0000-000000000002 lifespan 10
execute as 00000022-0000-0000-0000-000000000002 rotated as @s run tp @s ~ ~-1.2 ~ ~ ~
scoreboard players set 00000022-0000-0000-0000-000000000003 lifespan 10
#head teleport is handled elsewhere

#correct direction by exploiting armor stand jank
#--done because armor stands are very lazy when it comes to showing what direction they're truly facing
#--this prevents the character model from getting stuck facing the wrong way visually
#--(I say "prevent" but it doesn't work 100%...  it stops the visual error *most* of the time)
execute if score #global dCorrect matches 1 as 00000022-0000-0000-0000-000000000002 at @s run tp @s ~ ~ ~ ~ 45
execute if score #global dCorrect matches 4 as 00000022-0000-0000-0000-000000000002 at @s run tp @s ~ ~ ~ ~ -45

#model is rotated to be in the proper direction
#execute if entity @s[scores={lastDirection=1}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[0.0f,0.0f]}
#execute if entity @s[scores={lastDirection=2}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[45.0f]}
#execute if entity @s[scores={lastDirection=3}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[90.0f]}
#execute if entity @s[scores={lastDirection=4}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[135.0f]}
#execute if entity @s[scores={lastDirection=5}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[180.0f]}
#execute if entity @s[scores={lastDirection=6}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[225.0f]}
#execute if entity @s[scores={lastDirection=7}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[270.0f]}
#execute if entity @s[scores={lastDirection=8}] unless score global oTimer matches 9 as 00000022-0000-0000-0000-000000000002 run data merge entity @s {Rotation:[315.0f]}


#sonic blast animation
execute if entity @s[scores={sonicBlastRing=1..}] at @s run function ttr:shoot/sonic_blast_animation

#fiery tank animation
execute if score #tank_dash value matches 1 if entity @s[tag=!player_ded] run function ttr:control/node/34/char_model_dashing

#pick up items
execute unless score @s fastPickup matches 1.. if entity @s[tag=!player_ded] if score @s itemTick = #itemTick value run function ttr:random/powerups/open_chest_check
execute if score @s fastPickup matches 1.. if entity @s[tag=!player_ded] run function ttr:random/powerups/open_chest_check

#invulnerability time
scoreboard players remove @s[scores={invulTime=1..}] invulTime 1
tag @s[tag=p_can_hit,scores={invulTime=1..}] remove p_can_hit
tag @s[tag=!p_can_hit,scores={invulTime=..0}] add p_can_hit
execute if entity @s[scores={invulTime=1..}] run function ttr:control/node/34/char_model_flash
execute if score #death_state value matches 1.. run scoreboard players set @s modelFlash -10
execute if entity @s[scores={invulTime=..0,modelFlash=..1}] run function ttr:control/node/34/char_model_flash

#my_model tag stays, removed later
tag @s remove meme