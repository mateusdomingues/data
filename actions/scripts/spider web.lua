function onUse(cid, item, frompos, item2, topos)
rand = math.random(1,3)
monsterrand = math.random(5,25)

if rand == 1 then
    doTransformItem(item.uid,7566)
    doDecayItem(item.uid)
    doSendMagicEffect(frompos,3)
if monsterrand == 5 then
    doSummonCreature("Giant Spider",frompos)
elseif monsterrand >= 6 and monsterrand <= 8 then
    doSummonCreature("Tarantula",frompos)
elseif monsterrand >= 9 and monsterrand <= 15 then
    doSummonCreature("Poison Spider",frompos)
elseif monsterrand >= 16 then
    doSummonCreature("Spider",frompos)
else
end
elseif rand >= 2 then
    doTransformItem(item.uid,7566)
    doSendMagicEffect(frompos,2)
    doDecayItem(item.uid)
else
end
    return 1
end