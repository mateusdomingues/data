---broadcast in colors by grandeyang---
function onSay(cid,words,param)

GMGroup = 3 -- Grupo mínimo do GM

if getPlayerGroupId(cid) >= GMGroup then
if param ~= "" then
if words == '/bc white' then
broadcastMessage(param, MESSAGE_EVENT_ADVANCE)
elseif words == '/bc green' then
broadcastMessage(param, MESSAGE_INFO_DESCR)
elseif words == '/bc red' then
broadcastMessage(param, MESSAGE_STATUS_WARNING)
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_SMALL, 'Você precisa escrever uma mensagem.')
end
end
end

