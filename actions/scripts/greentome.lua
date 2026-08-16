function onUse(cid, item, frompos, item2, topos)

	if item.uid == 1983 then
 	queststatus = getPlayerStorageValue(cid,1983)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found a green tome.")
 	doPlayerAddItem(cid,1983,1)
 	setPlayerStorageValue(cid,1983,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 