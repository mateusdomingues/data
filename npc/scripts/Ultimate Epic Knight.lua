local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink() npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid

if(msgcontains(msg, 'dgvafagfvdfvadfvsorcerer') or msgcontains(msg, 'adgvagvfadfadssorcerer')) then
selfSay('I can promote you for 10 gold nuggets. Do you want me to promote you?', cid)
talkState[talkUser] = 1
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
if(getPlayerItemCount(cid, 2157) >= 10) then
doPlayerRemoveItem(cid, 2157, 10)
setPlayerPromotionLevel(cid, 13) 
selfSay('Congratulations! You are now promoted.', cid)
else
selfSay('Alright then, come back when you are ready.', cid)
end
talkState[talkUser] = 0

elseif(msgcontains(msg, 'dfdfafasfsasadadruid') or msgcontains(msg, 'asfasfafadasfadruid')) then
selfSay('Deseja virar {druid} por 10 especial coins?', cid)
talkState[talkUser] = 2
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
if(getPlayerItemCount(cid, 2157) >= 10) then
doPlayerRemoveItem(cid, 2157, 10)
doPlayerSetVocation(cid,14)
selfSay('Vocação trocada com sucesso , Agora você é um Druid.', cid)
else
selfSay('Você não tem {Especial Coins} Suficientes.', cid)
end
talkState[talkUser] = 0

elseif(msgcontains(msg, 'ultimate epic knight') or msgcontains(msg, 'ultimate epic knight')) then
selfSay('I can promote you for 10 gold nuggets. Do you want me to promote you?', cid)
talkState[talkUser] = 3
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 3) then
if(getPlayerItemCount(cid, 2157) >= 10) then
doPlayerRemoveItem(cid, 2157, 10)
doPlayerSetVocation(cid,16)
selfSay('Congratulations! You are now promoted.', cid)
else
selfSay('Alright then, come back when you are ready.', cid)
end
talkState[talkUser] = 0

elseif(msgcontains(msg, 'ssafcasasfvdsvsdvpaladin') or msgcontains(msg, 'fvdsvgdvafacpaladin')) then
selfSay('Deseja virar {paladin} por 10 especial coins?', cid)
talkState[talkUser] = 4
elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 4) then
if(getPlayerItemCount(cid, 2157) >= 10) then
doPlayerRemoveItem(cid, 2157, 10)
doPlayerSetVocation(cid,15)
selfSay('Congratulations! You are now promoted.', cid)
else
selfSay('Alright then, come back when you are ready.', cid)
end
talkState[talkUser] = 0
end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())