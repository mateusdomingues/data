local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end
function onThink()
npcHandler:onThink() end

function creatureSayCallback(cid, type, msg)
if(npcHandler.focus ~= cid) then
return false
end

if msgcontains(msg, 'job') or msgcontains(msg, 'speciality') then
selfSay('Well... My job is to fix boots. My father was a great blacksmith, and a very wise man... However, he died before teaching me anything about his job. The only thing he taught me was to fix his boots, and that\'s what I do for living now.')
elseif msgcontains(msg, 'soft boots') or msgcontains(msg, 'worn soft boots') or msgcontains(msg, 'soft boot') or msgcontains(msg, 'worn soft boot') or msgcontains(msg, 'worn') then
selfSay('Would you like me to repair your soft boots for 100.000 gold coins?')
talk_state = 1

elseif msgcontains(msg, 'yes') and talk_state == 1 then
if getPlayerItemCount(cid,6530) >= 1 then
if pay(cid,100000) then
doPlayerTakeItem(cid, 6530, 1)
doPlayerAddItem(cid,6132,1)
selfSay('Here it is.')
end
else
selfSay('Sorry, you don\'t have cash or the soft boots.')
end

elseif msgcontains(msg, 'no') and (talk_state >= 1 and talk_state <= 5) then
selfSay('Good bye, ' .. creatureGetName(cid) .. '...')
talk_state = 0
end
return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())