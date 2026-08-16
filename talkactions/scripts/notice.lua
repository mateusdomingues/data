local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "----------------------Lista de Proximos tutores----------------------\n 1-Para se tornar vip, faça a quest do holy scarab na sala de quests.\n 2-Quanto tiver o holy scarab fale com algum god para ganhar sua vip.\n 3-Nome Dos Gods = Jean - Mateus.\n 4-Falcon Buyer compra Golden Falcon por 10kk, ele pode estar em qualquer lugar do mapa\n 5-Todos As Potions Sao Infinitas\n 6-Aol nao e tao util pois se voce comprar bless (!bless) ela tem o efeito da aol e nao deixa voce perde o loot.\n 7-Para Mandar um parcel ou carta pra um amigo va ate o ultimo andar do dp e la tera o npc onde podera\n compra o parcel, escreva o nome dele e a cidade em baixo (carlin)\n" .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end