function onUse(cid, item, frompos, item2, topos)
playername = getPlayerName(cid)

if item.uid == 9999 then
queststatus = getPlayerStorageValue(cid,9998)

if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You win a golden goblet!")

gg = doPlayerAddItem(cid,5805,1)
doSetItemSpecialDescription(gg,"Congratulations, "..playername..", you finish the Warlord Arena.")
setPlayerStorageValue(cid,9998,1)

else

doPlayerSendTextMessage(cid,22,"It'\s Empty.")
end
return 0
end
return 1
end