local config = {
	rateExp = getConfigInfo('rateExp'),
	rateSkill = getConfigInfo('rateSkill'),
	rateLoot = getConfigInfo('rateLoot'),
	rateMagic = getConfigInfo('rateMagic'),
	rateSpawn = getConfigInfo('rateSpawn'),
	protectionLevel = getConfigInfo('protectionLevel')
}

function onSay(cid, words, param)
	local str = "#Novas Magias By Jean#\n\n[Para Todos]\n \n\n [Shinigami Epic Knights]\n Super Ki Ball (1 reset & lvl 300k)\n Execution Beam (3 reset & lvl 400k) \n\n [Shinigami Epic Druids e Sorcerers]\n Crazy Finger Beam (1 reset & lvl 300k)\n Max Burst Cannon (3 reset & lvl 400k)\n\n [Para Shinigami Epic Paladins]\n Rapid Masenko (1 reset & lvl 300k) \n Dead Punisher (3 reset & lvl 400k) \n\n #Novas Runas by Jean#\n\n[ Encontra-se no NPC em cima do DP ]\n\n--------------------------------------------------------------------\n-Protection level: " .. config.protectionLevel
	doPlayerPopupFYI(cid, str)
	return FALSE
end