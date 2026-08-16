------------ Script por: Myself ------------
-------------- xTibia.com --------------

local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

stime = 300 -- Tempo entre as falas do npc (em segundos)
time = os.clock()
function onThink()
if (time + stime) < os.clock() then
time = os.clock()
var = math.random(1,3)
if var == 1 then
selfSay("/bc white Você está jogando o Vancini OTserver, desenvolvido por Vancini.")
end
if var == 2 then
selfSay("/bc white Jamais use BOT ou Multi-Client! Jogadores que forem pegos usando estes meios de trapaças, serão banidos sem aviso prévio.")
end
if var == 3 then
selfSay("/bc white Chame agora mesmo os seus amigos para jogar no Vancini OTServer! Quanto mais você divulgar, mais gás você estará dando a nossa equipe para continuarmos o trabalho.")
end
end
end