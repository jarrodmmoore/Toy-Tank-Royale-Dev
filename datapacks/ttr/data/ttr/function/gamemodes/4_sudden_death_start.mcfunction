scoreboard players set #elimination_state value 2
scoreboard players set #sudden_death value 1

bossbar set tank_bbar style progress
bossbar set tank_bbar color red
bossbar set tank_bbar players @a
#scoreboard objectives setdisplay sidebar alive
scoreboard players set #show_sidebar value 3
scoreboard players set #sidebar_update value 99

#respawn all living players
tag @a[tag=inControl,scores={deathTime=..0}] add force_respawn
scoreboard players set @a[tag=inControl,scores={deathTime=..0}] deathTime 1
tag @e[tag=ai,tag=!player_ded] add ai_need_reset

#kill items
kill @e[tag=item_chest,type=armor_stand]
kill @e[tag=pellet]

#regenerate the arena! use just one square.
function ttr:random/level_gen/default_setup_one_only

#set timers
scoreboard players set #elim_progress value 0

#message!
tellraw @a[scores={shutUp=..0}] ["",{text:"\n"},{translate:"ttr.announce_sudden_death",bold:true,color:"red"},{text:"\n"},{translate:"ttr.about_sudden_death",bold:false,color:"white"},{text:"\n"}]
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ 1000000 ~ 1000000 1.5

scoreboard players set #time_remaining value 1200
execute store result bossbar tank_bbar max run scoreboard players get #time_remaining value