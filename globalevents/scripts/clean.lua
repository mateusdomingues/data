function executeClean()
	doCleanMap()
        doBroadcastMessage("Map Cleaned.", 22)
	return true
end

function onThink(interval, lastExecution, thinkInterval)
	doBroadcastMessage("Game map cleaning in 1 minute, please pick up all your items.", 22)
	addEvent(executeClean, 30000)
	return true
end