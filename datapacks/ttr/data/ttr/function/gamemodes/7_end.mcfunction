#execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ 1000000 ~ 1000000
#execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ 1000000 ~ 1000000

#execute as @a[tag=inControl] run function ttr:game/abandon_game
#execute if entity @e[tag=ai] run function ttr:ai/_ai_remove_all

#kill items
kill @e[tag=item_chest,type=armor_stand]
kill @e[tag=pellet]

function ttr:gamemodes/7_setup