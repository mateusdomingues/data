function onUse(cid, item, frompos, item2, topos)

if item.uid == 8530 and item.itemid == 1945 then
player1pos = {x=834, y=2205, z=7, stackpos=253}
player1 = getThingfromPos(player1pos)

if player1.itemid > 0 then
queststatus1 = getPlayerStorageValue(player1.uid,8530)

if queststatus1 == -1 then
nplayer1pos = {x=764, y=2290, z=7}

doSendMagicEffect(player1pos,2)

doTeleportThing(player1.uid,nplayer1pos)

doSendMagicEffect(nplayer1pos,10)

doTransformItem(item.uid,item.itemid+1)
else
doPlayerSendCancel(cid,"Somebody in your team has already done this quest.")
end
else
doPlayerSendCancel(cid,"You need one players for this quest.")
end

elseif item.uid ==8530 and item.itemid == 1945 then
if getPlayerAccess(cid) > 0 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
else
return 0
end

return 1
end