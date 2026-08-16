function onStepIn(cid, item, position, fromPosition)

level = 250000

if getPlayerLevel(cid) < level then
doTeleportThing(cid, fromPosition, false)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Somente Players level 250000 podem passar !")
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE) 
else

doSendMagicEffect(position, CONST_ME_MAGIC_BLUE)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Bem Vindo a Quest Shinigami !")

end
return TRUE
end