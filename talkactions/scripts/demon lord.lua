-- [( Script created by Doidin for XTibia.com )] -- 
function onThink(interval, lastExecution) 
MENSAGEM = { 
"Demon lord minions are working on his return to the World. LEAVE at once, mortals.", 
} 
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],21) 
return TRUE 
end