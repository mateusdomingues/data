--Sistema de dados by Suboras

function onUse(cid, item, frompos, item2, topos)

	rand = math.random(5792, 5797)

	number = rand-5791

	name = getPlayerName(cid)



	if frompos.x < 65535 then

 doPlayerSay(cid, name ..' rolled a number '.. number ..'.',16)

doSendMagicEffect(cid, frompos, 26)

	else

	doPlayerSay(cid, name ..' rolled a number '.. number ..'.',16)

	end

	doTransformItem(item.uid, rand)

	return 1

end