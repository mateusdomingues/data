-- Script by: Mateus Domingues
function onSay(cid, words, param)

if doPlayerRemoveMoney(cid, 10000) == TRUE then
local bp = doAddItem(cid, 2173, 1)
doCreatureSay(cid, "Voce comprou uma Amulet of Loss!", TALKTYPE_ORANGE_1)
else
doCreatureSay(cid, "You don't have enough money", TALKTYPE_ORANGE_1)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
end
end