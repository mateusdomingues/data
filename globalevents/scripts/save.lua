function executeSave()
doSaveServer()
end

function onThink(interval, lastExecution, thinkInterval)
addEvent(executeSave, 5 * 1000)
return true
end