scoreboard players set #elimination_state value 2

bossbar set tank_bbar style notched_20
bossbar set tank_bbar players
#scoreboard objectives setdisplay sidebar alive
scoreboard players set #show_sidebar value 3
scoreboard players set #sidebar_update value 99

#all will respawn!
scoreboard players set @a[tag=inControl] deathTime 1
tag @a[tag=inControl] add force_respawn
tag @e[tag=ai] add ai_need_reset

#kill items
kill @e[tag=item_chest,type=armor_stand]
kill @e[tag=pellet]

#regenerate the arena!
function ttr:random/level_gen/shuffled_setup

#set timers
scoreboard players set #elim_progress value 0

#message!
tellraw @a[scores={shutUp=..0}] ["",{"text":"\n"},{"translate":"ttr.round_started","bold":true},{"text":"\n"},{"translate":"ttr.good_luck","bold":false},{"text":"\n"}]

scoreboard players operation #time_remaining value = #opt_elim_time value
scoreboard players set #20 value 20
scoreboard players operation #time_remaining value *= #20 value
execute store result bossbar tank_bbar max run scoreboard players get #time_remaining value

#u die
scoreboard players set #opt_permadeath value 1