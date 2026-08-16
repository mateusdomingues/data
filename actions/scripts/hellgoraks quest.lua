function onUse(cid, item, frompos, item2, topos)

	if item.uid == 7402 then
 	queststatus = getPlayerStorageValue(cid,7402)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found a runed sword.")
 	doAddItem(cid,7417,1)
 	setPlayerStorageValue(cid,7402,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 