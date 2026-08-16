function onUse(cid, item, frompos, item2, topos)
playername = getPlayerName(cid)

if item.uid == 9997 then
queststatus = getPlayerStorageValue(cid,9996)

if queststatus == -1 then
doPlayerSendTextMessage(cid,22,"You win a bronze goblet!")

gg = doAddItem(cid,5807,1)
doSetItemSpecialDescription(gg,"Congratulations, "..playername..", you finish the Greenhorn Arena.")
setPlayerStorageValue(cid,9996,1)

else

doPlayerSendTextMessage(cid,22,"It'\s Empty.")
end
return 0
end
return 1
end