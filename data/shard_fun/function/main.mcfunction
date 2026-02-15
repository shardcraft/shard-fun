# Make sure all player's are in the pvp team.
team join pvp @a

# Do fun-related stuff.
advancement grant @a only shard_fun:survival/root
function shard_fun:add_fun
execute if entity @a[scores={deaths=1..}] run function shard_fun:remove_fun
function shard_fun:update_fun_level
function shard_fun:update_soul_tools

# Auto-swap soul tools based on the block the player is looking at.
function shard_fun:soul_tools/check
execute as @a[tag=holding_soul_tool] at @s anchored eyes run function shard_fun:soul_tools/swap

# Show particles around players holding Soul Tools
execute at @a[tag=holding_soul_tool] run function shard_fun:soul_tools/particles
tag @a remove holding_soul_tool

# Migrate old Soul Tools to the new format.
function shard_fun:migration

schedule function shard_fun:main 1s
