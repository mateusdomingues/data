-- general silverwar

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5702 then
   		queststatus = getPlayerStorageValue(cid,8924)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a serpent hammer.")
   			doPlayerAddItem(cid,7422,1)
   			setPlayerStorageValue(cid,8924,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5703 then
   		queststatus = getPlayerStorageValue(cid,8924)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a chaos axe.")
   			doPlayerAddItem(cid,7435,1)
   			setPlayerStorageValue(cid,8924,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5704 then
   		queststatus = getPlayerStorageValue(cid,8924)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a green tome.")
   			doPlayerAddItem(cid,7454,1)
   			setPlayerStorageValue(cid,8924,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end

   	return 1
end
