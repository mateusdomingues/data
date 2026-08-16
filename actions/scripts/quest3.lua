function onUse(cid, item, frompos, item2, topos)
if item.uid == 6666 then
queststatus = getPlayerStorageValue(cid,6666)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou uma Moon Backpack")
item_uid = doPlayerAddItem(cid,10521,1)
setPlayerStorageValue(cid,6666,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end