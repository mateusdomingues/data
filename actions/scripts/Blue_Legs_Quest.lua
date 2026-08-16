function onUse(cid, item, frompos, item2, topos)

	if item.uid == 8899 then
 	queststatus = getPlayerStorageValue(cid,8899)
 	if queststatus == -1 then
 	doPlayerSendTextMessage(cid,22,"You have found a blue legs.")
 	doPlayerAddItem(cid,7730,1)
 	setPlayerStorageValue(cid,8899,1)
 	else
 	doPlayerSendTextMessage(cid,22,"It is empty.")
 	end
	else
	return 0
	end

	return 1
	end 