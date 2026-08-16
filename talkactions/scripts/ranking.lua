function getPlayerNameByGUID2(n)           local c = db.getResult("SELECT `name` FROM `players` WHERE `id` = "..n..";")   
        if c:getID() == -1 then   
                return "SQL_ERROR["..n.."]"   
        end   
                return c:getDataString("name")   
        end   
   
function onSay(cid, words, param)   
        local max = 100   
        local letters_to_next = 20   
   
local skills = {   
        ['fist'] = 0,   
        ['club'] = 1,   
        ['sword'] = 2,   
        ['axe'] = 3,   
        ['distance'] = 4,   
        ['shielding'] = 5,   
        ['fishing'] = 6,   
        ['dist'] = 4,   
        ['shield'] = 5,   
        ['fish'] = 6,   
}   
        local name_now   
        local name = "Highscore for level\n"   
        local rkn = 0   
        local no_break = 0   
                param = string.lower(param)   
                dofile('config.lua')   
      	if param == "" then
		local str = "Diga !rank health para ver os top health\n\nDiga !rank mana para ver os top mana\n\nDiga !rank level para ver os top level\n\nDiga !rank reset level para ver os top reset's\n\nDiga !rank kills para ver os top kills\n\nDiga !rank magic para ver os top magic level\n\nDiga !rank sword para ver os top sword fighting\n\nDiga !rank distance para ver os top distance fighting\n\nDiga !rank shield para ver os top shielding\n"
		doPlayerPopupFYI(cid, str) 
	return true		
	
    elseif param == "level" or param == "level" and ( param ~= "magic" and param == "ml") and skills[param] == nil then   
                name = name.."\n"   
                name = name.."Rank Level - Nome do Jogador\n"   
        local v = db.getResult("SELECT `name`, `level`, `experience` FROM `players` WHERE `group_id` <= 2 ORDER BY `experience` DESC LIMIT 0,"..(max)..";")   
        repeat   
                no_break = no_break +1   
        if v:getID() == -1 then   
        break   
        end   
                rkn = rkn+1  
                name_now, l = v:getDataString("name"), string.len(v:getDataString("name"))   
                space = ""   
        for i=1, letters_to_next-l do   
                space = space.." "   
        end   
                name = name..rkn..". "..v:getDataInt("level") .."  -  "..name_now..space.." ".."\n"    
        if no_break >= 10 then   
        break   
        end   
        until v:next() == false   
   
        elseif param == "magic" or param == "ml" then   
                name = name.."\n"   
                name = name.."Rank Magic - Nome do Jogador\n"   
        local v = db.getResult("SELECT `name`, `level`, `maglevel` FROM `players` WHERE `group_id` <= 2 ORDER BY `maglevel` DESC LIMIT 0,"..(max)..";")   
        repeat   
        if v:getID() == -1 then   
        break   
        end   
                rkn = rkn+1   
                name_now, l = v:getDataString("name"), string.len(v:getDataString("name"))   
                space = ""   
        for i=1, letters_to_next-l do   
                space = space.." "   
        end   
                name = name..rkn..". "..v:getDataInt("maglevel").."  -  "..name_now..space.." ".." ".."".."\n"    
        if rkn >= 10 then   
        break   
        end   
        until v:next() == false   
  
        elseif param == "mana" or param == "MANA" then   
                name = name.."\n"   
                name = name.."Rank Mana - Nome do Jogador\n"   
        local v = db.getResult("SELECT `name`, `level`, `manamax` FROM `players` WHERE `group_id` <= 2 ORDER BY `manamax` DESC LIMIT 0,"..(max)..";")   
        repeat   
        if v:getID() == -1 then   
        break   
        end   
                rkn = rkn+1   
                name_now, l = v:getDataString("name"), string.len(v:getDataString("name"))   
                space = ""   
        for i=1, letters_to_next-l do   
                space = space.." "   
        end   
                name = name..rkn..". "..v:getDataInt("manamax").."  -  "..name_now..space.." ".." ".."".."\n"    
	if rkn >= 10 then   
        break   
        end   
        until v:next() == false   
  
        elseif param == "health" or param == "hp" then   
                name = name.."\n"   
                name = name.."Rank Health - Nome do Jogador\n"   
        local v = db.getResult("SELECT `name`, `level`, `healthmax` FROM `players` WHERE `group_id` <= 2 ORDER BY `healthmax` DESC LIMIT 0,"..(max)..";")   
        repeat   
        if v:getID() == -1 then   
        break   
        end   
                rkn = rkn+1   
                name_now, l = v:getDataString("name"), string.len(v:getDataString("name"))   
                space = ""   
        for i=1, letters_to_next-l do   
                space = space.." "   
        end   
                name = name..rkn..". "..v:getDataInt("healthmax").."  -  "..name_now..space.." ".." ".."".."\n"    
	if rkn >= 10 then   
        break   
        end  
        until v:next() == false  

        elseif param == "frags" or param == "kills" then   
                name = name.."\n"   
                name = name.."Rank Kills - Nome do Jogador\n"   
        local v = db.getResult("SELECT `p`.`name` AS `name`, COUNT(`p`.`name`) as `frags` FROM `killers` k LEFT JOIN `player_killers` pk ON `k`.`id` = `pk`.`kill_id` LEFT JOIN `players` p ON `pk`.`player_id` = `p`.`id` WHERE `k`.`unjustified` = 1 GROUP BY `name` ORDER BY `frags` DESC;") repeat   
        if v:getID() == -1 then   
        break   
        end   
                rkn = rkn+1   
                name_now, l = v:getDataString("name"), string.len(v:getDataString("name"))   
                space = ""   
        for i=1, letters_to_next-l do   
                space = space.." "   
        end   
                name = name..rkn..". "..v:getDataInt("frags").."  -  "..name_now..space.." ".." ".."".."\n"
	if rkn >= 10 then   
        break   
        end  
        until v:next() == false             
  
    elseif param == "resets" or param == "reset" then   
        name = name.."Rank Resets - Nome do Jogador\n"   
    local v = db.getResult("SELECT `name`, `reset` FROM `players` WHERE `group_id` <= 2 ORDER BY `reset` DESC LIMIT 0,"..(max)..";") 
    local kk = 0   
   
    repeat   
    if kk == 10 or v:getID() == -1 then   
    break   
    end   
        kk = kk+1   
                name_now, l = v:getDataString("name"), string.len(v:getDataString("name"))   
                space = ""   
        for i=1, letters_to_next-l do   
                space = space.." "   
        end   
                name = name..kk..". "..v:getDataInt("reset").."  -  "..name_now..space.." ".." ".."".."\n" 

        until v:next() == false             
  
   
        elseif skills[param] ~= nil then   
                name = name.."\n"   
                name = name.."Rank "..param.." fighting - Nome do Jogador\n"   
        local v = db.getResult("SELECT `player_id`, `value` FROM `player_skills` WHERE `skillid` = "..skills[param].." ORDER BY `value` DESC;")   
        local kk = 0   
   
        repeat   
        if kk == max or v:getID() == -1 then   
        break   
        end   
                kk = kk+1   
                name_now, l = getPlayerNameByGUID2(v:getDataInt("player_id")), string.len(getPlayerNameByGUID2(v:getDataInt("player_id")))   
                space = ""   
        for i=1, letters_to_next-l do   
                space = space.." "   
        end   
        if name_now == nil then   
                name_now = 'sql error['..v:getDataInt("player_id")..']'   
        end   
                name = name..kk..". "..v:getDataInt("value").."  -  "..name_now..space.." \n"
if kk >= 10 then   
        break   
        end  		
        until v:next() == false   
        end   
        if name ~= "Highscore\n" then    
                 doShowTextDialog(cid, 6500, name)   
        end   
   
        return true   
end