local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "------------------------------Lista de Proximos tutores------------------------------\n PS:TUTORES MAXIMOS NA LISTA ->5\n\n 1-\n 2-\n 3-\n 4-\n 5-\n ------------------------------------------------------------------------------------\n ->Caso o proximo tutor nao esteja online no momento de receber o tutor, o proximo na list ira ganha.\n ->O Dia da entrega nao e marcado.\n ->Para entrar na lista mande uma carta para [Hoster] Jean em carlin com seu nome para ser adicionado.\n\n By: Jean\n" .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end