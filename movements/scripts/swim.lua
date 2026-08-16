function onStepIn(cid, item, position, fromPosition)
swimvalue = 3330 --storagevalue to check
diveroutfit = { lookType = 267, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookAddons = 0 }

standardoutfit = { lookType = getPlayerStorageValue(cid, 3331), lookHead = getPlayerStorageValue(cid, 3332), lookBody =

getPlayerStorageValue(cid, 3333), lookLegs = getPlayerStorageValue(cid, 3334), lookFeet = getPlayerStorageValue(cid, 3335), lookAddons =

getPlayerStorageValue(cid, 3336) }
isswimming = getPlayerStorageValue(cid, swimvalue)
if isPlayer(cid) then
if (isswimming == -1) or (isswimming == 2) then
pozycja = {x = 124, y = 58, z= 7}
if item.itemid == 4632 then
pos = {x = position.x - 3, y = position.y - 2, z = position.z}
elseif item.itemid == 4633 then
pos = {x = position.x - 3, y = position.y, z = position.z}
elseif item.itemid == 4634 then
pos = {x = position.x + 2, y = position.y + 2, z = position.z}
elseif item.itemid == 4635 then
pos = {x = position.x + 2, y = position.y, z = position.z}
elseif item.itemid == 4636 then
pos = {x = position.x + 2, y = position.y + 2, z = position.z}
elseif item.itemid == 4637 then
pos = {x = position.x - 3, y = position.y + 2, z = position.z}
elseif item.itemid == 4638 then
pos = {x = position.x + 2, y = position.y - 2, z = position.z}
elseif item.itemid == 4639 then
pos = {x = position.x - 3, y = position.y - 2, z = position.z}
elseif item.itemid == 4640 then
pos = {x = position.x + 2, y = position.y + 2, z = position.z}
elseif item.itemid == 4641 then
pos = {x = position.x - 3, y = position.y + 2, z = position.z}
elseif item.itemid == 4642 then
pos = {x = position.x + 2, y = position.y - 2, z = position.z}
elseif item.itemid == 4643 then
pos = {x = position.x - 3, y = position.y - 2, z = position.z}
end
setPlayerStorageValue(cid, 3331, getCreatureOutfit(cid).lookType)
setPlayerStorageValue(cid, 3332, getCreatureOutfit(cid).lookHead)
setPlayerStorageValue(cid, 3333, getCreatureOutfit(cid).lookBody)
setPlayerStorageValue(cid, 3334, getCreatureOutfit(cid).lookLegs)
setPlayerStorageValue(cid, 3335, getCreatureOutfit(cid).lookFeet)
setPlayerStorageValue(cid, 3336, getCreatureOutfit(cid).lookAddons)
setPlayerStorageValue(cid, swimvalue, 1)
doSetCreatureOutfit(cid, diveroutfit, 999999)

if item.actionid == 3333 then
player1pos = {x = position.x, y = position.y + 1, z = position.z}
player1 = getThingfromPos(player1pos)
doTeleportThing(cid, player1pos)
doSendMagicEffect(player1pos, CONST_ME_WATERSPLASH)
end
end
if isswimming == 1 then
if item.itemid == 4632 then
dir = 2
elseif item.itemid == 4633 then
dir = 1
elseif item.itemid == 4634 then
dir = 0
elseif item.itemid == 4635 then
dir = 3
elseif item.itemid == 4636 then
dir = 3
elseif item.itemid == 4637 then
dir = 1
elseif item.itemid == 4638 then
dir = 3
elseif item.itemid == 4639 then
dir = 2
elseif item.itemid == 4640 then
dir = 3
elseif item.itemid == 4641 then
dir = 1
elseif item.itemid == 4642 then
dir = 3
elseif item.itemid == 4643 then
dir = 1
end
doSetCreatureOutfit(cid, standardoutfit, 1)
doMoveCreature(cid, dir)
setPlayerStorageValue(cid, swimvalue, 2)
end
end
return TRUE
end