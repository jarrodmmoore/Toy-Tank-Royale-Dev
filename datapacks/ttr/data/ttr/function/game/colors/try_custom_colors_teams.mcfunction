scoreboard players add #global recursions 1

scoreboard players set #custom_blocked value 0
scoreboard players set #want_color_1 value 0
scoreboard players set #want_color_2 value 0
execute if score @s cosmeticSet1 matches 1.. run scoreboard players operation #want_color_1 value = @s cosmeticSet1
execute if score @s cosmeticSet2 matches 1.. run scoreboard players operation #want_color_2 value = @s cosmeticSet2

#just pick a color if one of the two values weren't specified
execute if score #want_color_1 value matches 0 run scoreboard players add #global color_2 1
execute if score #want_color_2 value matches 0 run scoreboard players add #global color_1 1
execute if score #global color_1 matches 9.. run scoreboard players remove #global color_1 8
execute if score #global color_2 matches 9.. run scoreboard players remove #global color_2 8
execute if score #want_color_1 value matches 0 run scoreboard players operation #want_color_1 value = #global color_1
execute if score #want_color_2 value matches 0 run scoreboard players operation #want_color_2 value = #global color_2



#not allowed to use team colors in teams mode!
execute if score #want_color_1 value matches 2 run scoreboard players set #custom_blocked value 1
execute if score #want_color_1 value matches 3 run scoreboard players set #custom_blocked value 1
execute if score #want_color_2 value matches 2 run scoreboard players set #custom_blocked value 1
execute if score #want_color_2 value matches 3 run scoreboard players set #custom_blocked value 1


#is there an active player who has the exact same custom body color?
execute as @a[tag=inControl,tag=!need_color,scores={cosmeticSet1=1..}] if score @s cosmeticSet1 = #want_color_1 value if score @s color_1 = @s cosmeticSet1 if score @s color_2 = #want_color_2 value run scoreboard players set #custom_blocked value 1


#is there an active player who has the exact same custom head color?
execute as @a[tag=inControl,tag=!need_color,scores={cosmeticSet2=1..}] if score @s cosmeticSet2 = #want_color_2 value if score @s color_2 = @s cosmeticSet2 if score @s color_1 = #want_color_1 value run scoreboard players set #custom_blocked value 1


#active player with exact same custom colors full stop?
execute as @a[tag=inControl,tag=!need_color,scores={cosmeticSet1=1..,cosmeticSet2=1..}] if score @s cosmeticSet1 = #want_color_1 value if score @s color_1 = @s cosmeticSet1 if score @s cosmeticSet2 = #want_color_2 value if score @s color_2 = @s cosmeticSet2 run scoreboard players set #custom_blocked value 1


#take colors if we can
execute if score #custom_blocked value matches 0 run function ttr:game/colors/adopt_custom_color

#recursion if we can't
execute if score #global recursions matches ..7 if entity @s[tag=need_color] run function ttr:game/colors/try_custom_colors_teams