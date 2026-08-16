-- Script System Shinigami 1.0 -- 
-- Adaptado e Corrigido para TFS 0.3.6 / 0.4 -- 

-- Funcao auxiliar para executar queries em qualquer variacao de TFS
local function runQuery(query)
    local func = dbQuery or dbExecute or db.Query or db.executeQuery or db.query or db.execute
    if func then
        return func(query)
    else
        print("[Shinigami System Error] Nenhuma funcao DB encontrada no TFS!")
        return false
    end
end

function onSay(cid, words, param) 
    if(words == "!buyshinigami") then 
        local itemId = 10020 -- ID da Foot of the Shinigami
        local count = 1
        
        -- Remove o item da mochila do player
        if doPlayerRemoveItem(cid, itemId, count) then 
            local days = 30 -- Defina quantos dias a Foot of the Shinigami dá
            local daysvalue = days * 24 * 60 * 60 
            local storageplayer = getPlayerStorageValue(cid, 13543) 
            local timenow = os.time() 
            local time = 0
             
            if storageplayer - timenow <= 0 then 
                time = timenow + daysvalue 
            else 
                time = storageplayer + daysvalue 
            end 
             
            if string.find(tostring(getCreatureName(cid)), "%[Shinigami%]") then 
                setPlayerStorageValue(cid, 13543, time) 
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Parabens, seu tempo Shinigami foi prolongado!")
                doSendMagicEffect(getCreaturePosition(cid), 19)
            else 
                setPlayerStorageValue(cid, 13543, time) 
                local name = getCreatureName(cid) 
                doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Parabens, agora voce e um player Shinigami!")
                
                -- Executa a alteracao no nome do personagem
                runQuery("UPDATE `players` SET `name` = '[Shinigami] " .. db.escapeString(name) .. "' WHERE `id` = "..getPlayerGUID(cid)..";") 
                
                -- Efeito visual enviado antes do kick
                doSendMagicEffect(getCreaturePosition(cid), 19)
            end 
        else 
            doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce nao tem uma Foot of the Shinigami para virar Shinigami.") 
            doSendMagicEffect(getCreaturePosition(cid), 2)
        end 
        return true

    elseif(words == "!shinigamidays") then 
        local timenow = os.time() 
        local quantity = math.floor((getPlayerStorageValue(cid, 13543) - timenow)/(24 * 60 * 60)) 
        doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "Voce tem ".. (quantity < 0 and 0 or quantity) .." dias de Shinigami no seu character.") 
        return true

    elseif(words == "/checkshinigami") then 
        if getPlayerAccess(cid) >= 3 then 
            if param == "" then 
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid param specified.") 
                return true
            end 
             
            local player = getPlayerByName(param) 
            if not isPlayer(player) then 
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player "..(param).." not found.") 
                return true
            end 
             
            local timenow = os.time() 
            local quantity = math.floor((getPlayerStorageValue(player, 13543) - timenow)/(24 * 60 * 60)) 
            doPlayerPopupFYI(cid, "O jogador tem ".. (quantity < 0 and 0 or quantity) .." dias de Shinigami no character.") 
            return true 
        end 

    elseif(words == "/addshinigami") then 
        if getPlayerAccess(cid) >= 3 then 
            local t = string.explode(param, ",") 
            if not t[2] then 
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Invalid param specified. Use: nome, dias") 
                return true
            end 
             
            local player = getPlayerByName(t[1]) 
            if not isPlayer(player) then 
                doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player with this name doesn't exist or is offline.") 
                return true 
            end 
             
            local name = getCreatureName(player) 
            local days = tonumber(t[2]) 
            local daysvalue = days * 3600 * 24 
            local storageplayer = getPlayerStorageValue(player, 13543) 
            local timenow = os.time() 
            local time = storageplayer <= 0 and (timenow + daysvalue) or (storageplayer + daysvalue) 
             
            if string.find(tostring(name), "%[Shinigami%]") then 
                setPlayerStorageValue(player, 13543, time) 
                doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "Agora voce se tornou um Membro Shinigami por mais " .. days .. " dias.") 
            else 
                setPlayerStorageValue(player, 13543, time) 
                runQuery("UPDATE `players` SET `name` = '[Shinigami] "..db.escapeString(name).."' WHERE `id` = "..getPlayerGUID(player)..";") 
                doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "Agora voce se tornou um Membro Shinigami.") 
                addEvent(doRemoveCreature, 150, player) 
            end 
        end 
        return true

    elseif(words == "/delshinigami") then 
        if getPlayerAccess(cid) >= 3 then 
            local dec = MESSAGE_INFO_DESCR 
            if(param == "") then 
                doPlayerSendTextMessage(cid, 18, "Command param required.") 
                return true 
            end 
            
            local t = string.explode(param, ",") 
            local cpos = getCreaturePosition(cid) 
            local target = getPlayerByName(t[1]) 
            
            if not isPlayer(target) then
                doPlayerSendTextMessage(cid, dec, "Jogador nao encontrado ou offline.")
                return true
            end
            
            local daysToRemove = tonumber(t[2]) or 1
            local timeToRemove = daysToRemove * 3600 * 24 
            local currentVip = getPlayerStorageValue(target, 13543)
             
            if currentVip < timeToRemove then 
                doPlayerSendTextMessage(cid, dec, 'O jogador '..t[1]..' nao possui '..daysToRemove..' dias de Shinigami suficientes.') 
            else 
                doPlayerSendTextMessage(cid, dec, 'Voce removeu '..daysToRemove..' dias de Shinigami do player '..t[1]..'.') 
                setPlayerStorageValue(target, 13543, currentVip - timeToRemove) 
            end 
            doSendMagicEffect(cpos, math.random(28,30)) 
        end 
        return true
    end
end
