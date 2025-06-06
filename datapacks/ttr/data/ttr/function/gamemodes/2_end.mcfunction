execute as @a at @s run playsound minecraft:entity.firework_rocket.twinkle master @s ~ 1000000 ~ 1000000
execute as @a at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ 1000000 ~ 1000000

#tellraw @a ["",{text:"\n"},{translate:"ttr.game_ended",bold:true,color:"green"}]
#execute as @a[tag=inControl] if score @s points >= #opt_keeplimit value run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
#execute as @e[tag=ai] if score @s aiPoints >= #opt_keeplimit value run tellraw @a [{translate:"ttr.player_wins",color:"white",bold:false,with:[{selector:"@s"}]}]
#tellraw @a ["",{text:" "}]

execute as @a[tag=inControl] run function ttr:game/abandon_game
execute if entity @e[tag=ai] run function ttr:ai/_ai_remove_all

function ttr:gamemodes/2_setup

scoreboard players set @a bookCooldown 60