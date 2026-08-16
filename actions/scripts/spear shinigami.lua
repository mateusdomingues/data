function onUse(cid, item, frompos, item2, topos)
if item.uid == 7264 then
queststatus = getPlayerStorageValue(cid,7264)
if queststatus == -1 or queststatus == 0 then
doPlayerSendTextMessage(cid,22,"You have found a chest.")
item_uid = doPlayerAddItem(cid,7367,1)
setPlayerStorageValue(cid,7264,1)


else
doPlayerSendTextMessage(cid,22,"It is empty.")
end
else
return 0
end
return 1
end