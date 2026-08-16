--[[
@by Shynzo
]]--

local colors =
{
TEXTCOLOR_DARKRED,
}
function onSay(cid, words, param)
local playerpos = getCreaturePosition(cid)
local random = math.random(1, #colors)

if math.max(math.abs(playerpos.x-23), math.abs(playerpos.y-30)) < 9999 then
doSendAnimatedText(playerpos, "LOOOL!", colors[random])  
return 0
end
return 1
end
