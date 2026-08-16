function onUse(cid, item, frompos, item2, topos)
if doRemoveItem(item.uid,1) then
doPlayerSendTextMessage(cid,22,"Voce trocou 1 Scarab Coin por 100 Golden Nuggets")
doPlayerAddItem(cid,2157,100)
end
end