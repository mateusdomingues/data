function onUse(cid, item, frompos, item2, topos)
if item.uid == 3737 then
queststatus = getPlayerStorageValue(cid,3737)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Voc� achou um Blesse Shield.")
item_uid = doAddItem(cid,2523,1)
setPlayerStorageValue(cid,3737,1)


else
doPlayerSendTextMessage(cid,22,"O ba� est� vazio.")
end
else
return 0
end
return 1
end