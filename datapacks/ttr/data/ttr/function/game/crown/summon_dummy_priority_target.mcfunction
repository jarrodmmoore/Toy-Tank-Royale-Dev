#if there's already a dummy near us, just pull it over here
execute if entity @e[type=armor_stand,tag=dummyPriorityTarget,distance=..5] run \
    return run execute as @e[type=armor_stand,tag=dummyPriorityTarget,distance=..5] run function ttr:game/crown/move_dummy_priority_target
#=====

#summon dummy target at this postion
summon armor_stand ~ ~ ~ {Tags:["dummyPriorityTarget","priorityTarget","setlife"],Invulnerable:1b,Invisible:1b,NoGravity:1b,DisabledSlots:4144959}
scoreboard players set @e[type=armor_stand,tag=setlife,distance=..1] lifespan 4
tag @e[type=armor_stand,tag=setlife,distance=..1] remove setlife