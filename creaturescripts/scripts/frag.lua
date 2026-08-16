function onDeath(cid, corpse, deathList)

local percent = 2
local exp = 0

for _, tid in ipairs(deathList) do
	if isPlayer(cid) then
		if isPlayer(tid) then
			if getPlayerLevel(tid) < getPlayerLevel(cid) then
				exp = math.floor((getPlayerExperience(cid) / 100) * percent)
          			doPlayerAddExp(tid, exp)
			end
                end
         end
end
return true
end