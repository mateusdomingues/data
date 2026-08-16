function onUse(cid, item, frompos, item2, topos)
if item.uid == 7262 then
queststatus = getPlayerStorageValue(cid,7262)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a chest.")
item_uid = doAddItem(cid,7959,Q)
setPlayerStorageValue(cid,7262,1)


else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
return 0
end
return 1
end