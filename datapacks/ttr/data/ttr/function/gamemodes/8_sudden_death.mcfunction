scoreboard players remove #time_remaining value 1

bossbar set tank_bbar players @a
execute store result bossbar tank_bbar value run scoreboard players get #time_remaining value

#no pickups or level transformation please
execute if score #level_gen_time value matches ..99 run scoreboard players set #level_gen_time value 100
execute if score #powerup_time value matches ..49 run scoreboard players set #powerup_time value 50

#1 hitpoint only!
scoreboard players set @a[tag=inControl,scores={deathTime=..0,hitpoints=2..}] hitpoints 1
execute if score #ai_count value matches 1.. run scoreboard players set @e[tag=ai,type=zombie,scores={hitpoints=2..}] hitpoints 1

#rockets are infinite pellet bounces for all!
scoreboard players set @a[tag=inControl,scores={deathTime=..0}] hasItem4 9
scoreboard players set @a[tag=inControl,scores={deathTime=..0}] infinite_bounce 19990
execute if score #ai_count value matches 1.. run scoreboard players set @e[tag=ai,tag=!player_ded,type=zombie] hasItem4 9
execute if score #ai_count value matches 1.. run scoreboard players set @e[tag=ai,tag=!player_ded,type=zombie] infinite_bounce 20

#sudden death!!
bossbar set tank_bbar name ["",{"translate":"ttr.sudden_death","bold":true,"color":"red"}]

#time up? end the game
execute if score #time_remaining value matches ..0 run scoreboard players set #elim_timeout value 60