function onUse(cid, item, frompos, item2, topos)
playername = getPlayerName(cid)

if item.uid == 9998 then
queststatus = getPlayerStorageValue(cid,9997)

if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You win a silver goblet!")

gg = doPlayerAddItem(cid,5806,1)
doSetItemSpecialDescription(gg,"Congratulations, "..playername..", you finish the Scrapper Arena.")
setPlayerStorageValue(cid,9997,1)

else

doPlayerSendTextMessage(cid,22,"It'\s Empty.")
end
return 0
end
return 1
end