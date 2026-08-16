function onUse(cid, item, frompos, item2, topos)

efeito = getPlayerPosition(cid)

if item.uid == 5739 then
rand = math.random(1000,1200)
doPlayerAddHealth(cid,rand)
doCreatureAddMana(cid,rand)
doSendMagicEffect(efeito,14)
doPlayerSay(cid, "You have drank the sacred water.", 16)
end
return 1
end