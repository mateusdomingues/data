-- Script by: The Sleeper
function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 10000) == TRUE then
local bp = doAddItem(cid, 1988, 1)
doCreatureSay(cid, "Voce comprou uma Backpack!", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "You don't have enough money", TALKTYPE_ORANGE_1)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
end
end