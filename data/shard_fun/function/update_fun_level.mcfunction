# Give resistance to players that are about to be hit in the head with fireworks.
effect give @a[scores={fun=13548..,funLevel=1,timeSinceDeath=20..}] resistance 5 10 true
effect give @a[scores={fun=50323..,funLevel=2,timeSinceDeath=20..}] resistance 5 10 true
effect give @a[scores={fun=121935..,funLevel=3,timeSinceDeath=20..}] resistance 5 10 true
effect give @a[scores={fun=240000..,funLevel=4,timeSinceDeath=20..}] resistance 5 10 true

# Show fireworks to all players that have enough fun to level up.
execute at @a[scores={fun=13548..,funLevel=1,timeSinceDeath=20..}] run summon firework_rocket ~ ~1.75 ~ {LifeTime: 0, FireworksItem: {id: "firework_rocket", Count: 1, tag: {Fireworks: {Flight: 0, Explosions: [{Type: 1, Flicker: 0, Trail: 0, Colors: [I; 5320730]}]}}}}
execute at @a[scores={fun=50323..,funLevel=2,timeSinceDeath=20..}] run summon firework_rocket ~ ~1.75 ~ {LifeTime: 0, FireworksItem: {id: "firework_rocket", Count: 1, tag: {Fireworks: {Flight: 0, Explosions: [{Type: 1, Flicker: 0, Trail: 0, Colors: [I; 15790320]}]}}}}
execute at @a[scores={fun=121935..,funLevel=3,timeSinceDeath=20..}] run summon firework_rocket ~ ~1.75 ~ {LifeTime: 0, FireworksItem: {id: "firework_rocket", Count: 1, tag: {Fireworks: {Flight: 0, Explosions: [{Type: 2, Flicker: 1, Trail: 0, Colors: [I; 15790320, 14602026]}, {Type: 1, Flicker: 0, Trail: 0, Colors: [I; 14602026]}]}}}}
execute at @a[scores={fun=240000..,funLevel=4,timeSinceDeath=20..}] run summon firework_rocket ~ ~1.75 ~ {LifeTime: 0, FireworksItem: {id: "firework_rocket", Count: 1, tag: {Fireworks: {Flight: 0, Explosions: [{Type: 2, Flicker: 1, Trail: 0, Colors: [I; 563609, 15790320]}, {Type: 1, Flicker: 0, Trail: 0, Colors: [I; 5636095]}]}}}}

# Update funLevel of all players that have enough fun.
scoreboard players set @a funLevel 1
scoreboard players set @a[scores={fun=13548..}] funLevel 2
scoreboard players set @a[scores={fun=50323..}] funLevel 3
scoreboard players set @a[scores={fun=121935..}] funLevel 4
scoreboard players set @a[scores={fun=240000..}] funLevel 5

# Grant the Survival advancements to all players that should have it but don't.
advancement grant @a[scores={funLevel=2}] until shard_fun:survival/fun2
advancement grant @a[scores={funLevel=3}] until shard_fun:survival/fun3
advancement grant @a[scores={funLevel=4}] until shard_fun:survival/fun4
advancement grant @a[scores={funLevel=5}] until shard_fun:survival/fun5
