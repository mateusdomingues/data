function onUse(cid, item, frompos, item2, topos)
item.itemid = 2342
item2.itemid = 2147

if item.itemid+item2.itemid then
doRemoveItem(item.uid,1)
doRemoveItem(item2.uid,1)
coins_uid = doAddItem(cid,2343,1)
doSendMagicEffect(topos,12)
doPlayerSendTextMessage(cid,22,"You substituted the precious stone of the helmet")
end
return 1
end