function onUse(cid, item, frompos, item2, topos)



doSendMagicEffect(topos,21)

name = getPlayerName(cid)

doPlayerSay(cid, 'Merry Christmas '..name..'.' ,16)



return 1

end