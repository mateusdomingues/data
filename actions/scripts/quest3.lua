function onUse(cid, item, frompos, item2, topos)
if item.uid == 6666 then
queststatus = getPlayerStorageValue(cid,6666)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou uma Moon Backpack")
item_uid = doAddItem(cid,10521,1)
setPlayerStorageValue(cid,6666,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end