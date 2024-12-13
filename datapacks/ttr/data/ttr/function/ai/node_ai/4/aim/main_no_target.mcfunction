#rotation will match faceDirection I guess
execute if entity @s[scores={faceDirection=1,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 0 0
execute if entity @s[scores={faceDirection=2,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 45 0
execute if entity @s[scores={faceDirection=3,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 90 0
execute if entity @s[scores={faceDirection=4,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 135 0
execute if entity @s[scores={faceDirection=5,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 180 0
execute if entity @s[scores={faceDirection=6,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 225 0
execute if entity @s[scores={faceDirection=7,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 270 0
execute if entity @s[scores={faceDirection=8,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~ 315 0

execute unless entity @s[scores={faceDirection=1..8,aiDelayAim=..0}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~

execute unless entity @s[scores={aiDelayAim=1..}] run tp 00000004-0000-0001-0000-000000000003 ~ ~-1.2 ~

#look for stuff to shoot at
scoreboard players remove @s aiTargetLookTime 1
execute if entity @s[scores={aiTargetLookTime=..0}] run function ttr:ai/movement/look_for_targets

tag @s[tag=shoot_LOS] remove shoot_LOS