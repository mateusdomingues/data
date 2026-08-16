local config = {
    positions = {
        ["Bem Vindo"] = { x = 160, y = 54, z = 7 },
        ["OT Black"] = { x = 157, y = 54, z = 7 },
	["Eventos"] = { x = 162, y = 44, z = 7 },
	["Addon"] = { x = 162, y = 46, z = 7 },
	["TPS"] = { x = 162, y = 48, z = 7 },
	["Treiners"] = { x = 162, y = 50, z = 7 },
	["Quests"] = { x = 491, y = 39, z = 7 }
    }
}

function onThink(cid, interval, lastExecution)
    for text, pos in pairs(config.positions) do
        doSendAnimatedText(pos, text, math.random(1, 255))
    end
    
    return TRUE
end  