function onUse(cid, item, frompos, item2, topos)

if item.itemid == 0 then

elseif item2.itemid == 5513 or 5514 then
doRemoveItem(item.uid,1)
doCreateItem(2006,27,topos)
doPlayerSendTextMessage(cid,22,"You have got rum.")
doSendMagicEffect(topos, 2)
end
return 1
end 