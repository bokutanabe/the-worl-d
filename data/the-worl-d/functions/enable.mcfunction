# ループ初回ステップのみ
execute if entity @a[sort=nearest,limit=1,tag=!twd-loop] run playsound minecraft:block.beacon.power_select master @a[sort=nearest,limit=1,tag=!twd-loop] ~ ~ ~ 100
execute if entity @a[sort=nearest,limit=1,tag=!twd-loop] run playsound minecraft:block.beacon.activate master @a[sort=nearest,limit=1,tag=!twd-loop] ~ ~ ~ 100
execute if entity @a[sort=nearest,limit=1,tag=!twd-loop] run playsound minecraft:item.totem.use master @a[sort=nearest,limit=1,tag=!twd-loop] ~ ~ ~ 0.5
execute at @a[sort=nearest,limit=1,tag=!twd-loop] run particle minecraft:squid_ink ~ ~ ~ 0.2 0.2 0.2 0.5 200
execute at @a[sort=nearest,limit=1,tag=!twd-loop] run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 400
execute at @a[sort=nearest,limit=1,tag=!twd-loop] run particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.1 0.1 2 200
execute if entity @a[sort=nearest,limit=1,tag=!twd-loop] run scoreboard objectives add twd-time minecraft.custom:minecraft.play_one_minute
execute if entity @a[sort=nearest,limit=1,tag=!twd-loop] run scoreboard players set @a[sort=nearest,limit=1,tag=!twd-loop] twd-time 0

# ループのコア処理
execute at @a[sort=nearest,limit=1,tag=twd-loop,scores={twd-time=40..}] run playsound minecraft:ui.button.click master @a[sort=nearest,limit=1] ~ ~ ~ 100
scoreboard players set @a[sort=nearest,limit=1,tag=twd-loop,scores={twd-time=40..}] twd-time 20
execute at @a[sort=nearest,limit=1] run data merge entity @e[sort=random,distance=..30,limit=1,nbt=!{NoAI:1b}] {NoAI:1b}

# 次のステップへの処理
tag @a[sort=nearest,limit=1,tag=!twd-loop] add twd-loop
tag @a[sort=nearest,limit=1] remove twd-enable