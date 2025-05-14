# Make sure player's aren't in any teams.
team leave @a

# Do fun stuff.
advancement grant @a only shard_fun:survival/root
function shard_fun:add_fun
execute if entity @a[scores={deaths=1..}] run function shard_fun:remove_fun
function shard_fun:update_fun_level
function shard_fun:update_soul_tools

# Show particles around players holding Soul Tools
function shard_fun:soul_tools/side_effects

# Migrate old Soul Tools to the new format.
function shard_fun:migration

schedule function shard_fun:main 1s
