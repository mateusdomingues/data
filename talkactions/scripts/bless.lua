local bless = {1, 2, 3, 4, 5}
local cost = 10000
function onSay(cid, words, param)
for i = 1, table.maxn(bless) do
if(getPlayerBlessing(cid, bless[i])) then
doPlayerSendCancel(cid, "You have already all blessings.")
return TRUE
end
end

if(doPlayerRemoveMoney(cid, cost) == TRUE) then
for i = 1, table.maxn(bless) do
doPlayerAddBlessing(cid, bless[i])
end
doSendAnimatedText(getPlayerPosition(cid), "Blessed!", TEXTCOLOR_ORANGE)
doSendMagicEffect(getPlayerPosition(cid), 13)
else
doPlayerSendCancel(cid, "You don\'t have enough money.")
end
return TRUE
end
