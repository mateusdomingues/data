function onUse(cid, item, frompos, item2, topos)

doSendMagicEffect(playerpos,14)
doSendMagicEffect(topos,10)
doConvinceCreature(cid, "Black Knight",topos)
doSummonCreature("Black Knight",topos)
doConvinceCreature(cid, "Hero",topos2)
doSummonCreature("Hero",topos2)
else
doRemoveItem(item.uid,1)
end
return 1
end