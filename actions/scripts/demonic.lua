function onUse(cid, item, frompos, item2, topos)
if item.itemid == 6558 then
if math.random(1,2) == 1 then
doRemoveItem(cid,6558,1)
doAddItem(cid,2006,7)
doPlayerSendTextMessage(cid,18,'The demonic blood has turned into a mana fluid.')
else
doRemoveItem(cid,6558,1)
doAddItem(cid,2006,10)
doPlayerSendTextMessage(cid,18,'The demonic blood has turned into a life fluid.')
end
end
end