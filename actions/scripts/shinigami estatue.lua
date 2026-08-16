--teleport holes-- 
 
 
  function onUse(cid, item, frompos, item2, topos) 
 
nplayer1pos = {x=512, y=2319, z=7} 
 
if getPlayerMana(cid) >= 0 then 
doSendMagicEffect(nplayer1pos,0) 
doPlayerAddMana(cid,1) 
doTeleportThing(cid,nplayer1pos) 
doSendMagicEffect(topos,2) 
                else 
                doPlayerSendTextMessage(cid,22,"Você não tem mana.") 
                end 
end

