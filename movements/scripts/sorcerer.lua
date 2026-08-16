-- Script Epic Sytem 1.0 -- 
function onStepIn(cid, item, position, fromPosition) 
 
local config = { 
msgDenied = "Voçe Precisa Ser Sorcerer Para Entrar", 
msgWelcome = "Bem Vindo." 
} 

if getPlayerStorageValue(cid, 2501) - os.time() <= 0 then
doTeleportThing(cid, fromPosition, true) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgDenied) 
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE) 
return TRUE 
end 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgWelcome) 
return TRUE 
end



