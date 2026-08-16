function onUse(cid, item, frompos, item2, topos)
if item.uid == 3636 then
queststatus = getPlayerStorageValue(cid,3636)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou uma Vancini Boots.")
item_uid = doAddItem(cid,7457,1)
setPlayerStorageValue(cid,3636,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end