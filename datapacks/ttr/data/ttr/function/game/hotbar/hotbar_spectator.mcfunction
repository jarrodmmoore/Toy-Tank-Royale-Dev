#resource pack is missing? let the player know by invading their screen
execute if score #global sec_timer matches ..10 run title @s subtitle ["",{"translate":"warning.resource_pack_is_missing","color":"#FF3333","fallback":"Resource pack is missing!"}]
execute if score #global sec_timer matches 11.. run title @s subtitle ["",{"translate":"warning.resource_pack_is_missing","color":"#FF7777","fallback":"Resource pack is missing!"}]
title @s title [""]

#death cancels input here
execute if entity @s[scores={deathTime=1..}] run scoreboard players reset @s carrotInput

#don't show the book right after game end, please...
scoreboard players remove @s[scores={bookCooldown=1..}] bookCooldown 1

#cosmetic menu? or no?
execute if score @s cosmeticMenu matches ..99 run function ttr:game/hotbar/hotbar_spectator_normal
execute if score @s cosmeticMenu matches 100.. run function ttr:game/hotbar/hotbar_spectator_cosmetic