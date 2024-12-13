execute if entity @s[scores={optSelect=3501}] run scoreboard players set #opt_teambalance value 1
execute if entity @s[scores={optSelect=3502}] run scoreboard players set #opt_teambalance value 2
execute if entity @s[scores={optSelect=3503}] run scoreboard players set #opt_teambalance value 0

execute if entity @s[scores={optSelect=3601}] run scoreboard players set #opt_friendlyfire value 0
execute if entity @s[scores={optSelect=3602}] run scoreboard players set #opt_friendlyfire value 1
execute if entity @s[scores={optSelect=3603}] run scoreboard players set #opt_friendlyfire value 2

execute if entity @s[scores={optSelect=3701}] run scoreboard players set #opt_allowneutral value 0
execute if entity @s[scores={optSelect=3701}] run clear @a[tag=!inControl] yellow_dye
execute if entity @s[scores={optSelect=3702}] run scoreboard players set #opt_allowneutral value 1

execute at @s run playsound block.note_block.hat master @s

function ttr:admin_menu/_open_team_settings