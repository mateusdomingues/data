--function by ta4e--

function onUse(cid, item, frompos, item2, topos)

sorte = math.random(1,6)

pos = getPlayerPosition(cid)



if item.itemid == 6567 then

if sorte == 1 then

doPlayerSay(cid,'Ho ho ho!',16)

doSendMagicEffect(pos,22)



elseif sorte == 2 then

doSendMagicEffect(pos,22)

doPlayerSay(cid,'Jingle bells, jingle bells..',16)



elseif sorte == 3 then

doSendMagicEffect(pos,22)

doPlayerSay(cid,'Have you been naughty?',16)



elseif sorte == 4 then

doSendMagicEffect(pos,22)

doPlayerSay(cid,'Have you been nice?',16)



elseif sorte == 5 then

doSendMagicEffect(pos,22)

doPlayerSay(cid,'Merry Christmas!',16)



elseif sorte == 6 then

doSendMagicEffect(pos,22)

doPlayerSay(cid,'Can you stop squeezing me now... I m starting to feel a little sick.',16)



else

end

end

return 1

end