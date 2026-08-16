local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local node1 = keywordHandler:addKeyword({'epic'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can henzen you for 2000000 gold coins. Do you want me to epicize you?'})
	node1:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, cost = 2000000, level = 100, promotion = 2, text = 'Congratulations! You are now promoted.'})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})
--[[
local node2 = keywordHandler:addKeyword({'shnfgthjndhhecond'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can henzen you for 2000000 gold coins. Do you want me to epicize you?'})
	node2:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, cost = 20000000, level = 100, promotion = 3, text = 'Congratulations! You are now henzen vocation.'})
	node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})
]]--

npcHandler:addModule(FocusModule:new())
