function onUse(cid, item, frompos, item2, topos)

doorpos = {x=frompos.x, y=frompos.y, z=frompos.z}
playerpos = getCreaturePosition(cid)
playervoc = getPlayerVocationl(cid)

if item.uid == (id da porta) and doorpos.x == POSX and doorpos.y == POSY and doorpos.z == POSZ then
if playervoc == (voc necessaria) then
doTeleportThing(cid,doorpos)
elseif playervoc == VOCA��O playervoc == VOCA��O playervoc == VOCA��O then <---vocs erradas
doPlayerSendTextMessage(cid,22,"Apenas VOCA��O podem passar.")
end
end
return 1
end 