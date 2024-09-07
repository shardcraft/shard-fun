# This file is necessary so that players with the old Soul Tools can migrate to the new ones.
# This file should be removed eventually.
tag @a[nbt={SelectedItem:{components:{"minecraft:custom_name": '{"italic":false,"text":"Soul Axe"}'}}}] add replace_soul_axe
item replace entity @a[tag=replace_soul_axe] weapon.mainhand with minecraft:air
execute as @a[tag=replace_soul_axe] run function shard_fun:soul_tools/soul_axe
tag @a[tag=replace_soul_axe] remove replace_soul_axe

tag @a[nbt={SelectedItem:{components:{"minecraft:custom_name": '{"italic":false,"text":"Soul Hoe"}'}}}] add replace_soul_hoe
item replace entity @a[tag=replace_soul_hoe] weapon.mainhand with minecraft:air
execute as @a[tag=replace_soul_hoe] run function shard_fun:soul_tools/soul_hoe
tag @a[tag=replace_soul_hoe] remove replace_soul_hoe

tag @a[nbt={SelectedItem:{components:{"minecraft:custom_name": '{"italic":false,"text":"Soul Pickaxe"}'}}}] add replace_soul_pickaxe
item replace entity @a[tag=replace_soul_pickaxe] weapon.mainhand with minecraft:air
execute as @a[tag=replace_soul_pickaxe] run function shard_fun:soul_tools/soul_pickaxe
tag @a[tag=replace_soul_pickaxe] remove replace_soul_pickaxe

tag @a[nbt={SelectedItem:{components:{"minecraft:custom_name": '{"italic":false,"text":"Soul Shovel"}'}}}] add replace_soul_shovel
item replace entity @a[tag=replace_soul_shovel] weapon.mainhand with minecraft:air
execute as @a[tag=replace_soul_shovel] run function shard_fun:soul_tools/soul_shovel
tag @a[tag=replace_soul_shovel] remove replace_soul_shovel