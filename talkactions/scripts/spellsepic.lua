local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "[Para Todos]\n Mana Soul Sacrifice (lvl 150000)\n Terremoto (lvl 230000 mana, 30000)\n Soul Sacrifice (lvl 150000)\n Ultimate Soul Sacrifice (lvl 400000)\n Ultimate Mana Soul Sacrifice (lvl 400000)\n\n [Epic Knights]\n Ultimate utito tempo (lvl 200000 soul 25)\n Epic Fire Hur (lvl 300000)\n Epic exori (lvl 1000)\n Exori tiro (lvl 150000)\n Death Exori (lvl 200000 Mana 300)\n Utito Tempo Max (lvl 40000)\n Poison Exori (lvl 7000 Mana 200)\n\n [Epic Druids e Sorcerers]\n Fire Exori (lvl 200000 SORC)\n Earth Exori (lvl 200000 DRUID)\n Epic freezer (lvl 1000)\n Epic ground breaking (lvl 300000)\n Epic Fire (lvl 300000)\n Ice Tiro (lvl 150000)\n Abracadabra (lvl 230000 Mana 30000)\n Exevo gran mas poison (lvl 50000)\n\n [Para Paladins]\n Holy Exori (lvl 200000)\n Epic mas san (lvl 1000)\n Epic Invisible Hur (lvl 300000)\n Holy tiro (lvl 30000)\n Holy Explosion (lvl 30000)\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end
