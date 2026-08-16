local FRASES = {"JÁ VOLTO!", "NAO ENCHE!", "VOLTO JÁ!", "AUSENTE!", "AFK!"} -- Auto-Mensagens. 
local TEMPO = 2 -- Intervalo de Tempo em segundos. 
 
local function doSendAutoMessage(cid, pos) 
if (isCreature(cid) == TRUE) then 
npos = getThingPos(cid) 
if (pos.x == npos.x) and (pos.y == npos.y) and (pos.z == npos.z) then 
doSendAnimatedText(pos, FRASES[math.random(#FRASES)], 215) 
doSendMagicEffect(pos, 2) 
addEvent(doSendAutoMessage, TEMPO*1000, cid, npos) 
end 
end 
end 
 
function onSay(cid, words, param) 
pos = getThingPos(cid) 
doSendAnimatedText(pos, FRASES[math.random(#FRASES)], 215) 
doSendMagicEffect(pos, 2) 
doPlayerSendCancel(cid, "esK~ Mengasem Automaticas") 
addEvent(doSendAutoMessage, TEMPO*1000, cid, pos) 
return TRUE 
end
