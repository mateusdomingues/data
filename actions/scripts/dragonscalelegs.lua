function onUse(cid, item, frompos, item2, topos)
if item.uid == 9898 then
queststatus = getPlayerStorageValue(cid,9898)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou uma Dragon Scale Legs")
item_uid = doPlayerAddItem(cid,2469,1)
setPlayerStorageValue(cid,9898,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end