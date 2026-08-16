-- [( Script created by Doidin for XTibia.com )] --
function onThink(interval, lastExecution)
MENSAGEM = {
"Para ver as noticias fale !notice",
"Para ver os ranks digite !rank",
"Para comprar bless digite !bless",
"Sempre Ao Criar Uma Conta, Pegue A RK Dela No Account Manager Da Conta E Anote, Nunca Passe A Sua Senha Para Outras Pessoas, E Ao Entrar Em Outros OT´s Crie Contas Diferentes Para Não Sofrer HACKED, Não Me Responsabilizo Por Perdas, Obrigado",
"Ao Antigirem Level 717.217 Digitem !resetar Para Resetarem Seu Level. !rank reset, Voce tem A Opcao De Ver Os Tops Reset's",
}
doBroadcastMessage(MENSAGEM[math.random(1,#MENSAGEM)],20)
return TRUE
end
