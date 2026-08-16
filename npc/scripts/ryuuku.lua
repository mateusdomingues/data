local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)			npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)		npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)		npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()				npcHandler:onThink()					end

local node1 = keywordHandler:addKeyword({'shinigami'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can henzen for 4000000 gold coins. You want to become shinigami?'})
	node1:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, cost = 4000000, level = 100, promotion = 3, text = 'Congratulations! You are now promoted.'})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})
--[[
local node2 = keywordHandler:addKeyword({'shnfgthjndhhecond'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can henzen you for 4000000 gold coins. Do you want me to epicize you?'})
	node2:addChildKeyword({'yes'}, StdModule.promotePlayer, {npcHandler = npcHandler, cost = 4000000, level = 200, promotion = 4, text = 'Congratulations! You are now henzen vocation.'})
	node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})
]]--

npcHandler:addModule(FocusModule:new())
