#wanna mix your colors?
execute unless score #force_turtles value matches 1 run scoreboard players enable @s mixTankColors

#mute kill feed
scoreboard players enable @s shutUp

#access to gameOptions if operator is NOT required
execute if score #require_operator value matches 0 run scoreboard players enable @s optSelect

#first/third person control
scoreboard players enable @s[tag=first_person] thirdPerson
scoreboard players enable @s[tag=first_person,tag=!overhead] overHead
scoreboard players enable @s[tag=!first_person] firstPerson
scoreboard players enable @s[tag=!first_person] overHead
scoreboard players enable @s[tag=first_person,tag=overhead] firstPerson
execute if entity @s[scores={firstPerson=1..}] run function ttr:control/enable_first_person
execute if entity @s[scores={thirdPerson=1..}] run function ttr:control/enable_third_person
execute if entity @s[scores={overHead=1..}] run function ttr:control/enable_overhead

#game options
scoreboard players enable @s gameOptions
execute if entity @s[scores={gameOptions=1..}] run function ttr:admin_menu/trigger
execute if entity @s[scores={optSelect=1..}] run function ttr:admin_menu/select_index

#coins?
execute if entity @s[tag=inControl,scores={addCoins=1..}] run scoreboard players add @s coins 1
execute if entity @s[scores={addCoins=1..}] run scoreboard players remove @s addCoins 1

#admin abuse
execute if entity @s[tag=inControl,tag=godmode] run function ttr:control/god_mode