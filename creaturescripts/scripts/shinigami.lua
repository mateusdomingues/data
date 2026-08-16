--Aura Vip Com AutoMensagem--
--by: Mateus--
--Criada 13/04/2012--
--Testado Tibia 8.50--

local FRASES = {""} -- Auto-Mensagem.
local effect = 27

function onLogin(cid)
sendEffect(cid)
registerCreatureEvent(cid, "ShinigamiEffect")
return TRUE
end

function sendEffect(cid)
if isCreature(cid) then
if getPlayerStorageValue(cid, 13543) - os.time() >= 1 then
pos = getThingPos(cid)
doSendAnimatedText(pos, FRASES[math.random(#FRASES)], 215)
doSendMagicEffect(pos, effect)
addEvent(sendEffect, 10000,cid)
end
end
end