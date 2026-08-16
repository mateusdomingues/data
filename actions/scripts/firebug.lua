function onUse(cid, item, frompos, item2, topos)

if math.random(0,10) > 7 then
doCreatureAddHealth(cid, -5)
doSendMagicEffect(frompos, 4)
doRemoveItem(item.uid, 1)
return 1
end

if item2.itemid == 5466 then
doTransformItem(item2.uid,5465)
doDecayItem(item2.uid)
else
return 0

end

return 1
end 