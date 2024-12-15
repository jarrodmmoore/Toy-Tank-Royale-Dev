#MAIN


#integrate players once they join the world
function ttr:join/_tick


#timer thing, used elsewhere
scoreboard players add #global sec_timer 1
execute if score #global sec_timer matches 21.. run scoreboard players set #global sec_timer 1
execute if score #global sec_timer matches 1 unless score #force_turtles value matches 1 run function ttr:misc/guidelines_undo
execute if score #global sec_timer matches 1 if score #force_turtles value matches 1 run function ttr:misc/guidelines_apply

#another timer -- tanks check for collision with item boxes every 4 ticks (staggered per tank)
scoreboard players add #itemTick value 1
execute if score #itemTick value matches 5.. run scoreboard players set #itemTick value 1

#hotbar cycle (hotbar inventory updates are staggered for performance)
scoreboard players add #hotbar_check value 1
execute if score #hotbar_check value matches 9.. run scoreboard players set #hotbar_check value 0


#effects for players
function ttr:misc/eternal_potion_effects

#carrot on a stick for inputs
execute as @a at @s run function ttr:control/carrot_on_stick

#actionbar state
execute as @a run function ttr:game/actionbar_display

#shoot cooldown
execute as @a run function ttr:game/shoot_cooldown


#left the game? lose your team tag
execute if score #opt_teams value matches 1 run function ttr:game/team_cleanup


#gamemode-specific code
execute if score #objective_check_delay value matches 1.. run scoreboard players remove #objective_check_delay value 1
execute if score #opt_gamemode value matches 1 run function ttr:gamemodes/1
execute if score #opt_gamemode value matches 2 run function ttr:gamemodes/2
execute if score #opt_gamemode value matches 3 run function ttr:gamemodes/3
execute if score #opt_gamemode value matches 4 run function ttr:gamemodes/4
execute if score #opt_gamemode value matches 5 run function ttr:gamemodes/5
execute if score #opt_gamemode value matches 6 run function ttr:gamemodes/6
execute if score #opt_gamemode value matches 7 run function ttr:gamemodes/7
execute if score #opt_gamemode value matches 8 run function ttr:gamemodes/8


#ai add / remove logic
scoreboard players remove #ai_logic_time value 1
execute if score #ai_logic_time value matches ..0 run function ttr:ai/add_and_remove_logic

#calculate player count
scoreboard players set #player_count value 0
execute as @a[tag=inControl] run scoreboard players add #player_count value 1
scoreboard players operation #player_count value += #ai_count value
scoreboard players set #player_count_alive value 0
execute as @e[type=zombie,tag=player_char,tag=!player_ded] run scoreboard players add #player_count_alive value 1

#player count, but for level gen
scoreboard players operation #player_count_levelgen value = #player_count value
execute if score #opt_arenasize value matches 0 run scoreboard players operation #player_count_levelgen value += #opt_arenasize_mod value
execute if score #opt_arenasize value matches 1 run scoreboard players operation #player_count_levelgen value = #opt_arenasize_mod value

#manage the sidebar display
scoreboard players add #sidebar_update value 1
execute if score #sidebar_update value matches 40.. run function ttr:game/manage_sidebar


#triggers
execute as @a run function ttr:game/triggers


#player controls their tank
tag @a[tag=pl_self] remove pl_self
execute as @a[tag=inControl] at @s run function ttr:control/_control_main


#all AIs do their thing
execute if score #ai_count value matches 1.. as @e[tag=ai,type=zombie] at @s run function ttr:ai/_ai_main

#AIs exists? generate goal-based vector fields so they can navigate better
execute if score #ai_count value matches 1.. run function ttr:ai/nav_generate/tick
scoreboard players operation #prev_ai_count value = #ai_count value


#playing with teams? check up on team balance
execute if score #opt_teams value matches 1.. run function ttr:game/team_availability


#players not in-game
execute as @a[tag=!inControl,gamemode=adventure] at @s run function ttr:game/hotbar/hotbar_spectator


#do logic for all pellets
function ttr:pellet/_pellet_main


#direction correction on models
scoreboard players add #global dCorrect 1
execute if score #global dCorrect matches 5.. run scoreboard players set #global dCorrect 0


#level generation
function ttr:random/level_gen/_level_gen_main

#spawn power-ups
execute if score #player_count value matches 1.. run function ttr:random/powerups/_powerups_main


#lifespan score, applied to entities that are meant to be temporary
scoreboard players remove @e[scores={lifespan=1..}] lifespan 1
execute as @e[type=!player,scores={lifespan=..0}] at @s run tp @s ~ ~-10000 ~
kill @e[type=!player,scores={lifespan=..0}]
#I use this to kill entities automatically and without risk of them generating garbage data on the scoreboard after they die.
#as it turns out: "/kill @s" does not terminate the stack of commands being run. If any scoreboard setting command gets run after the kill, it lingers FOREVER.
#How much does this help? Honestly... I don't know. I'm just desperate to avoid scoreboard.dat ballooning to 12MB again.

#kill all unwanted item drops
execute as @e[type=item] unless entity @s[nbt={Item:{components:{"minecraft:custom_data":{Tags:["stay"]}}}}] if entity @s[tag=!stay] run kill @s
kill @e[type=experience_orb,tag=!stay]

#clear tags and stuff
scoreboard players reset @a carrotInput
scoreboard players reset @a carrotInput2
tag @e[tag=hitThisTick] remove hitThisTick


#####################################
#debug

#show a scoreboard value, always
#scoreboard players set @a actionbarState 99999
#scoreboard players set @a actionbarTime 3
#title @a actionbar ["",{"text":"level_gen_time = "},{"score":{"name":"#level_gen_time","objective":"value"}}]

#test navigation vector fields by looking straight down in a direction
#execute as @a[tag=nav_check] at @s run function ttr:misc/debug_try_nav_start

#show invisible AI targets
#execute as @e[tag=ai_random_shoot,type=area_effect_cloud] at @s run particle dust{color:[1.0,0.0,1.0],scale:2} ~ ~1 ~ 0 1 0 1 5 force @a
#####################################