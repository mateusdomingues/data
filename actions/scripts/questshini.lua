local config = {
daily = "no",
MinLevel = 230000,
MaxLevel = 717217,
storage = 7007
}
 
function onUse(cid, item, frompos, item2, topos)
 
        if item.uid == 7007 and item.itemid == 1945 or item.itemid == 1946 then
			player1pos = {x=655, y=2357, z=7, stackpos=253} 
			player1 = getThingfromPos(player1pos)
 
			player2pos = {x=655, y=2356, z=7, stackpos=253} 
			player2 = getThingfromPos(player2pos)
 
			player3pos = {x=655, y=2355, z=7, stackpos=253} 
			player3 = getThingfromPos(player3pos)
 
			player4pos = {x=655, y=2354, z=7, stackpos=253} 
			player4 = getThingfromPos(player4pos)
 
 
  if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
		if getPlayerLevel(cid) >= config.MinLevel and getPlayerLevel(cid) <= config.MaxLevel then
			queststatus1 = getPlayerStorageValue(player1.uid,7007)
			queststatus2 = getPlayerStorageValue(player2.uid,7007)
			queststatus3 = getPlayerStorageValue(player3.uid,7007)
			queststatus4 = getPlayerStorageValue(player4.uid,7007)
			
			if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
				nplayer1pos = {x=450, y=2139, z=7} 
				nplayer2pos = {x=450, y=2140, z=7} 
				nplayer3pos = {x=451, y=2139, z=7} 
				nplayer4pos = {x=451, y=2140, z=7} 
 
				doSendMagicEffect(player1pos,2)
				doSendMagicEffect(player2pos,2)
				doSendMagicEffect(player3pos,2)
				doSendMagicEffect(player4pos,2)
 
				doTeleportThing(player1.uid,nplayer1pos)
				doTeleportThing(player2.uid,nplayer2pos)
				doTeleportThing(player3.uid,nplayer3pos)
				doTeleportThing(player4.uid,nplayer4pos)
 
				doSendMagicEffect(nplayer1pos,10)
				doSendMagicEffect(nplayer2pos,10)
				doSendMagicEffect(nplayer3pos,10)
				doSendMagicEffect(nplayer4pos,10)
 
          else
				doPlayerSendCancel(cid,"Alguém em sua equipe já fez essa quest.")
          end
	else
			doPlayerSendTextMessage(cid, 19, "You no have level")
	end
else
	doPlayerSendCancel(cid,"Voce precisa de quatro jogadores para esta quest.")
end
 
        elseif item.uid ==7007 and item.itemid == 1946 then
			if getPlayerAccess(cid) > 0 then
				doTransformItem(item.uid,item.itemid-1)
			else
				doPlayerSendCancel(cid,"Desculpe, não é possível.")
			end
        else
			return 0
        end
 
    return 1
end