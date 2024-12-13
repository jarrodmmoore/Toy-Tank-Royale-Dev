gamemode adventure @s
tag @a[tag=mcOwner] remove mcOwner
tag @s add mcOwner

title @s actionbar [""]
title @s subtitle [""]
title @s title [""]

scoreboard players set @s shootCooldown 20

#clear old character entities
#execute as @e[tag=player_char,scores={playerID=1..}] if score @s playerID = @a[limit=1,tag=mcOwner] playerID run kill @s

execute at @s as @e[limit=1,sort=nearest,tag=input_base,tag=!hasOwner,distance=..5] at @s run function ttr:control/claim_minecart

tag @s remove mcOwner

function ttr:random/find_spawnpoint
function ttr:control/warp/warp_to_saved_coords/_go