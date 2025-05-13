# Make sure all players are in the pvp team.
execute if score global clocks matches 0 run team join pvp @a[team=!debug]

# Do fun stuff.
execute if score global clocks matches 0 run advancement grant @a only shard_fun:survival/root
execute if score global clocks matches 0 run function shard_fun:add_fun
execute if score global clocks matches 0 run execute if entity @a[scores={deaths=1..}] run function shard_fun:remove_fun
execute if score global clocks matches 0 run function shard_fun:update_fun_level
execute if score global clocks matches 0 run function shard_fun:update_soul_tools

# Show particles around players holding Soul Tools
execute if score global clocks matches 0 run function shard_fun:soul_tools/side_effects
execute if score global clocks matches 10 run function shard_fun:soul_tools/side_effects

# Migrate old Soul Tools to the new format.
execute if score global clocks matches 0 run function shard_fun:migration

# Debug
execute if score global clocks matches 0 run tell @a[team=debug] shard_fun
