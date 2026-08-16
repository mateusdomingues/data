--teleport holes-- 
 
 
  function onUse(cid, item, frompos, item2, topos) 
 
nplayer1pos = {x=160, y=54, z=7} 
 
if getPlayerMana(cid) >= 0 then 
doSendMagicEffect(nplayer1pos,65535) 
doPlayerAddMana(cid,0) 
doTeleportThing(cid,nplayer1pos) 
doSendMagicEffect(topos,65535) 
doPlayerSendTextMessage(cid,22,"") 
                else 
                doPlayerSendTextMessage(cid,22,"Você não tem mana.") 
                end 
end

