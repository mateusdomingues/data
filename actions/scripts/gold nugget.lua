function onUse(cid, item, frompos, item2, topos)
if doRemoveItem(item.uid,1) then
doPlayerSendTextMessage(cid,22,"Voce trocou 1 Gold nugget por 100 crystal coins")
doAddItem(cid,2160,100)
end
end
