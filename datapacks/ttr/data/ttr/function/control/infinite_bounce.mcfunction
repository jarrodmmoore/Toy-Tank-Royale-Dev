scoreboard players remove @s[scores={infinite_bounce=1..}] infinite_bounce 1

scoreboard players set #20 value 20
scoreboard players operation @s infBounceTime = @s infinite_bounce
scoreboard players operation @s infBounceTime /= #20 value

scoreboard players set @s[scores={tutorial=..0,actionbarState=..9}] actionbarTime 10
scoreboard players set @s[scores={tutorial=..0,actionbarState=..9}] actionbarState 9

#all our pellets have infinite bouncies
scoreboard players operation #myID value = @s playerID
execute as @e[type=armor_stand,tag=pellet,scores={bounceCooldown=1..}] if score @s playerID = #myID value run scoreboard players reset @s bounceCooldown
execute as @e[type=armor_stand,tag=needs_bouncy,tag=pellet] if score @s playerID = #myID value run tag @s[tag=!bouncy] add bouncy