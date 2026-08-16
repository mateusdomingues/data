local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "[Para Todos]\n kage bushin no jutso (lvl 100000)\n Mana max (lvl 50000)\n Utani Mega Hur (lvl 130)\n Macumba (lvl 30000)\n Raios (lvl 30000)\n Stone storm (lvl 25000)\n Areawall (lvl 50000, Mana 50000, Souls 5)\n Katon gokakyu no jutsu (lvl 250k Mana 1000)\n\n[Para Sorcerers e Druids]\n Freezer (lvl 300)\n X vis (lvl 200)\n Exevo Gran Mas Mort (lvl 100)\n Shidory (lvl 10000)\n Poison Explosion (lvl 150000)\n Gods Power (lvl 160000)\n\n[Para Paladins]\n Exevo San Condition (lvl 200)\n Exevo San Hur ( lvl 10000)\n\n[Para Knights]\n Exori Mas Gran (lvl 300)\n Red Exori (lvl 7000)\n Exori Mas (editado lvl 30)\n Rasengan (lvl 10000)\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end
