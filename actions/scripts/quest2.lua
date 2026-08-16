function onUse(cid, item, frompos, item2, topos)
if item.uid == 7777 then
queststatus = getPlayerStorageValue(cid,7777)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"Você achou uma Crown Backpack")
item_uid = doPlayerAddItem(cid,10522,1)
setPlayerStorageValue(cid,7777,1)


else
doPlayerSendTextMessage(cid,22,"O baú está vazio.")
end
else
return 0
end
return 1
end