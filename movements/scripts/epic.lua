-- Script Epic Sytem 1.0 -- 
function onStepIn(cid, item, position, fromPosition) 
 
local config = { 
msgDenied = "Faça a quest de um some golden fruits e diga !buyepic.", 
msgWelcome = "Seja Bem Vindo a Area epic." 
} 

if getPlayerStorageValue(cid, 13540) - os.time() <= 0 then
doTeleportThing(cid, fromPosition, true) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgDenied) 
doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE) 
return TRUE 
end 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, config.msgWelcome) 
return TRUE 
end


