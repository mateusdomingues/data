function onUse(cid, item, frompos, item2, topos)
if item.uid == 9889 then
queststatus = getPlayerStorageValue(cid,9889)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou um Demon Armor.")
item_uid = doPlayerAddItem(cid,2494,1)
setPlayerStorageValue(cid,9889,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end