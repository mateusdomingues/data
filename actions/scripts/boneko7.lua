--teleport holes-- 
 
 
  function onUse(cid, item, frompos, item2, topos) 
 
nplayer1pos = {x=682, y=346, z=8} 
 
if getPlayerMana(cid) >= 0 then 
doSendMagicEffect(nplayer1pos,0) 
doPlayerAddMana(cid,0) 
doTeleportThing(cid,nplayer1pos) 
doSendMagicEffect(topos,10) 
doPlayerSendTextMessage(cid,22,"") 
                else 
                doPlayerSendTextMessage(cid,22,"Você não tem mana.") 
                end 
end

