function onThink(interval, lastExecution) 
MENSAGEM = { 
"Ao Antigirem Level 717.217 Digitem !resetar Para Resetarem Seu Level. !rank reset, Voce tem A Opcao De Ver Os Tops Reset's", 
} 
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],22) 
return TRUE 
end