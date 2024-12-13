tag @s add hasOwner
tag @e[tag=input_minecart,limit=1,sort=nearest] add hasOwner
team join nocollide @e[tag=input_minecart,limit=1,sort=nearest]
scoreboard players operation @s playerID = @e[limit=1,tag=mcOwner] playerID