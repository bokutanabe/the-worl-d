# the-word-dの発動検知

## typeAは以下のコマンドで入手した場合
## /give @p minecraft:clock{display:{Name:"\"the-worl-d\""},Enchantments:[{lvl:1s,id:"minecraft:binding_curse"}]}
## typeBは金床から入手した場合
## 各typeごとに両手LR対応

# typeA-R
execute at @a[nbt={SelectedItem:{id:"minecraft:clock",tag:{display:{Name:"\"the-worl-d\""},Enchantments:[{id:"minecraft:binding_curse"}]}}}] run tag @a[sort=nearest,limit=1] add twd-enable
# typeA-L
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{display:{Name:"\"the-worl-d\""},Enchantments:[{id:"minecraft:binding_curse"}]}}]}] run tag @a[sort=nearest,limit=1] add twd-enable
# typeB-R
execute at @a[nbt={SelectedItem:{id:"minecraft:clock",tag:{display:{Name:"{\"text\":\"the-worl-d\"}"},Enchantments:[{id:"minecraft:binding_curse"}]}}}] run tag @a[sort=nearest,limit=1] add twd-enable
# typeB-L
execute at @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock",tag:{display:{Name:"{\"text\":\"the-worl-d\"}"},Enchantments:[{id:"minecraft:binding_curse"}]}}]}] run tag @a[sort=nearest,limit=1] add twd-enable

# disable
execute at @a[tag=!twd-enable] run function the-worl-d:disable
# enable
execute at @a[tag=twd-enable] run function the-worl-d:enable
