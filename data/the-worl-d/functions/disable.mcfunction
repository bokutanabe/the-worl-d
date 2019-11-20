execute at @a[sort=nearest,limit=1] run data merge entity @e[sort=random,distance=..30,limit=1,nbt={NoAI:1b}] {NoAI:0b}

# ループ終了時のみ
execute at @a[sort=nearest,limit=1,tag=!twd-enable,tag=twd-loop] run particle minecraft:witch ~ ~ ~ 2 2 2 0.2 100
execute at @a[sort=nearest,limit=1,tag=!twd-enable,tag=twd-loop] run playsound minecraft:block.beacon.deactivate master @a[sort=nearest,limit=1,tag=!twd-enable,tag=twd-loop] ~ ~ ~ 100
execute at @a[sort=nearest,limit=1,tag=!twd-enable,tag=twd-loop] run playsound minecraft:block.glass.break master @a[sort=nearest,limit=1,tag=!twd-enable,tag=twd-loop] ~ ~ ~ 100
scoreboard objectives remove twd-time
tag @a[tag=!twd-enable,tag=twd-loop] remove twd-loop