function onUse(cid, item, frompos, item2, topos)
chest = math.random (1, 4)
playerpos = getCreaturePosition(cid)
if item.itemid == 5903 then

if chest == 1 then         doCreatureAddHealth(cid,-500)
doPlayerSay(cid, "Ahh... something is wrong.", 16)
doSendMagicEffect(playerpos, CONST_ME_STONES)
end
if chest == 2 then         doAddItem(cid,2355,1)
doPlayerSay(cid, "Wow! It\'s a rabbit!", 16)
doSendMagicEffect(playerpos, CONST_ME_MAGIC_BLUE)
end
if chest == 3 then         doCreatureAddHealth(cid,-150)
doPlayerSay(cid, "Ahh... something is wrong.", 16)
doSendMagicEffect(getCreaturePosition(cid), CONST_ME_STONES)
end
if chest == 4 then         doAddItem(cid,5791,1)
doPlayerSay(cid, "Wha... what? A dragon?", 16)
doSendMagicEffect(playerpos, CONST_ME_MAGIC_BLUE)
end

return 1
end
end