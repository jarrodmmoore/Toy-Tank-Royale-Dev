execute as @a[tag=inControl] run function ttr:game/abandon_game
execute if entity @e[tag=ai] run function ttr:ai/_ai_remove_all

execute at @s run playsound minecraft:entity.generic.burn master @s ~ ~ ~ 1 2

tellraw @a ["",{text:"Kicked all players.",italic:true,color:"red"}]
function ttr:admin_menu/_open