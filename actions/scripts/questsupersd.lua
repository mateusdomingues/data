function onUse(cid, item, frompos, item2, topos)

if item.uid == 8529 and item.itemid == 1945 then
player1pos = {x=492, y=2751, z=7, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x=491, y=2751, z=7, stackpos=253}
player2 = getThingfromPos(player2pos)

player3pos = {x=490, y=2751, z=7, stackpos=253}
player3 = getThingfromPos(player3pos)

player4pos = {x=489, y=2751, z=7, stackpos=253}
player4 = getThingfromPos(player4pos)


if player1.itemid > 0 and player2.itemid > 0 and player3.itemid > 0 and player4.itemid > 0 then
queststatus1 = getPlayerStorageValue(player1.uid,8529)
queststatus2 = getPlayerStorageValue(player2.uid,8529)
queststatus3 = getPlayerStorageValue(player3.uid,8529)
queststatus4 = getPlayerStorageValue(player4.uid,8529)

if queststatus1 == -1 and queststatus2 == -1 and queststatus3 == -1 and queststatus4 == -1 then
nplayer1pos = {x=513, y=2773, z=7}
nplayer2pos = {x=514, y=2773, z=7}
nplayer3pos = {x=515, y=2773, z=7}
nplayer4pos = {x=516, y=2773, z=7}

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

doTransformItem(item.uid,item.itemid+1)
else
doPlayerSendCancel(cid,"Somebody in your team has already done this quest.")
end
else
doPlayerSendCancel(cid,"You need four players for this quest.")
end

elseif item.uid ==8529 and item.itemid == 1945 then
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