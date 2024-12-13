#did we care about our vector fields last tick? if not, let's regenerate ALL of them.
execute if score #prev_ai_count value matches ..0 run function ttr:ai/nav_generate/start_over

#work a maximum of 3 squares per tick to reduce lag
scoreboard players set #work_squares value 3
#so this means the longest possible time to generate nav (like for a whole 3x3 board at once) is 15 seconds

#generate extra field for 1 special target per square
scoreboard players remove #special_nav_generate value 1
execute if score #special_nav_generate value matches ..0 run function ttr:ai/nav_generate/special_start

#work on squares
execute if score #area_1_active value matches 1.. if score #area_1_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a1,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_2_active value matches 1.. if score #area_2_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a2,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_3_active value matches 1.. if score #area_3_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a3,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_4_active value matches 1.. if score #area_4_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a4,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_5_active value matches 1.. if score #area_5_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a5,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_6_active value matches 1.. if score #area_6_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a6,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_7_active value matches 1.. if score #area_7_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a7,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_8_active value matches 1.. if score #area_8_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a8,limit=1] at @s run function ttr:ai/nav_generate/square_tick
execute if score #area_9_active value matches 1.. if score #area_9_nav value matches 0 if score #work_squares value matches 1.. as @e[type=marker,tag=a9,limit=1] at @s run function ttr:ai/nav_generate/square_tick

#propagate the navigation field
execute as @e[tag=navFill,type=area_effect_cloud,sort=random] at @s run function ttr:ai/nav_generate/nav_propagate


#--- AN EXPLANATION: ---
# Each of the 9 squares on the board will generate up to 5 goal-based vector fields for the AI to use.
# By "goal-based vector field" I mean just a bunch of blocks under the surface that tell the AI which direction to move at any given point.
#
# The 5 different vector fields tell the AI:
# 1 >> How to get to the square NORTH of this one
# 2 >> How to get to the square EAST of this one
# 3 >> How to get to the square SOUTH of this one
# 4 >> How to get to the square WEST of this one
# 5 >> How to reach some special target within this square
#
# We only generate fields as they are needed.
# For example, if a square doesn't have another active square north of itself, don't generate vector field 1.
# When some part of the arena changes, we re-generate the navigation field for the changed square as well as the squares neighboring it.
#
# The directional fields are useful for helping the AI navigate long-distance toward some objective
# ...or if nothing else, it helps AI move into a different square so it doesn't get stuck in the same place for ages.
# The AI's "wander" logic by itself is very bad at accomplishing the objective, so having these navigation fields helps keep things moving along.
#
# Field 5 is special and gets regenerated every few seconds.
# It can point to any object of interest, which can vary depending on the current game type.
# This is especially useful for helping the AI reach the flag in CTF, or helping the AI find players who are camping in Elimination mode.
# If nothing urgent is in the given square, this field will usually point to something like an item pickup (with a lower "priorty" value)
# If this square's Field 5 is marked as "low priority", the AI will be less likely to follow it.
# Once any AI reaches the destination of Field 5, the field is marked as "un-generated" so other AIs don't try to use it despite being obselete.
#
# The path the AI will take while following these vector fields is super predictable
# BUT
# the AI will take detours to fight enemies and pick up items along the way, so that somewhat fixes the problem ;)
#
#
# Q: Why bother generating this stuff dynamically? Why not just bake it into each level tile?
# A: Because I want players to customize the level tiles if they want! <3
# A: And I personally want the ease of changing the level tiles without having a stroke.
# A: Also the gaps in the walls between squares are random. This would cause problems if we pre-baked the navigation fields.