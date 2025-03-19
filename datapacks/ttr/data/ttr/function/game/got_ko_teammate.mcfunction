#I don't think this function ever got referenced.
#It was written for Minecraft Grand League which uses a modified version of Toy Tanks.
#I made performance improvements for the MGL version, and I liked them so much I dumped the modified code back into the base game and modified it yet again.
#...which resulted in some weird code artifacts like this one, lol


scoreboard players add @s friendlyFires 1

execute at @s run playsound entity.villager.no master @s ~ ~ ~ 10 1
tellraw @s[scores={friendlyFires=..3}] ["",{text:"Hey now... don't shoot your teammates!",color:"red",italic:true}]
tellraw @s[scores={friendlyFires=4}] ["",{text:"Ease off the friendly fire, friend.",color:"red",italic:true}]
tellraw @s[scores={friendlyFires=5}] ["",{text:"I ASKED POLITELY",color:"red",italic:true}]
tellraw @s[scores={friendlyFires=6..}] ["",{text:"you have been stopped",color:"red",italic:true}]

execute if entity @s[scores={friendlyFires=6..}] run function ttr:game/abandon_game