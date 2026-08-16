function onUse(cid, item, frompos, item2, topos)
if item.uid == 5665 then
queststatus = getPlayerStorageValue(cid,5665)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou um Demon Legs.")
item_uid = doAddItem(cid,2495,1)
setPlayerStorageValue(cid,5665,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end