local tempo = 98500 -- Tempo em segundos de duração

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, tempo*1000)
setConditionFormula(condition, 4.9, -400, 4.9, -400)

function onUse(cid, item, frompos, item2, topos)

mountvalue = 45045

standardoutfit = { lookType = getPlayerStorageValue(cid, 3331), lookHead = getPlayerStorageValue(cid, 3332), lookBody = getPlayerStorageValue(cid, 3333), lookLegs = getPlayerStorageValue(cid, 3334), lookFeet = getPlayerStorageValue(cid, 3335), lookAddons = getPlayerStorageValue(cid, 3336)}
dogoutfit = { lookType = 4, lookHead = 20, lookBody = 30, lookLegs = 40, lookFeet = 50, lookAddons = 0}

playerpos = getPlayerPosition(cid)
pos1 = {x=playerpos.x+1, y=playerpos.y+1, z=playerpos.z}
pos2 = {x=playerpos.x-1, y=playerpos.y-1, z=playerpos.z}
pos3 = {x=playerpos.x-1, y=playerpos.y+1, z=playerpos.z}
pos4 = {x=playerpos.x+1, y=playerpos.y-1, z=playerpos.z}


if getPlayerStorageValue(cid, mountvalue) == -1 or getPlayerStorageValue(cid, mountvalue) == 2 then
setPlayerStorageValue(cid, 3331, InGetSwimEffect(cid).lookType)
setPlayerStorageValue(cid, 3332, InGetSwimEffect(cid).lookHead)
setPlayerStorageValue(cid, 3333, InGetSwimEffect(cid).lookBody)
setPlayerStorageValue(cid, 3334, InGetSwimEffect(cid).lookLegs)
setPlayerStorageValue(cid, 3335, InGetSwimEffect(cid).lookFeet)
setPlayerStorageValue(cid, 3336, InGetSwimEffect(cid).lookAddons)
setPlayerStorageValue(cid, mountvalue, 1)
InSetSwimEffect(cid, dogoutfit, 31536000000)
doSendMagicEffect(topos,2)
doSendMagicEffect(playerpos,3)
doSendMagicEffect(pos1,54)
doSendMagicEffect(pos2,54)
doSendMagicEffect(pos3,54)
doSendMagicEffect(pos4,54)
doSendMagicEffect(playerpos,50)
doSendAnimatedText(playerpos,'GO ORC!!',215)
doPlayerSendTextMessage(cid,19,"To leave your orc, say 'leaveorc'.")
if(doTargetCombatCondition(0, cid, condition, CONST_ME_MAGIC_GREEN) == LUA_ERROR) then
else
doRemoveItem(item.uid,1)
end
end
end