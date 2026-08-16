-- Commands SpellBook (By Conde Sapo)

function onUse(cid, item, frompos, item2, topos)

    cmdgod = "\n\n/reload -- Reload configurations\n/s -- Summon a NPC\n/openserver -- Open server\n/closeserver -- Close server\n/owner -- Set a player to house owner\n/addskill -- Add a decent skill level"
    cmdSgm = '\n\n/m -- Summon a "wild" monster\n/summon -- Summon a monster'
    cmdgm = "\n\n/b -- IP BAN a player\n/ban -- Ban a player\n/t -- Teleport to your temple\n/gethouse -- Info about house of a player\n/bans -- Info about who are banished\n/town -- Go to your town\n/save -- Cast Server save\n/up -- Teleport a floor up\n/bc -- Broadcast to players in colors\n/down -- Teleport a floor down\n/send -- Send a player to a decent position\n/raid -- Execute a raid\n/shutdown -- Shutdown the Server\n/premium -- Give someone a premium account\n/i -- Create a item by ID\n/n -- Create a item by name\n/goto -- Teleport to players, creatures or NPCs\n/a -- Teleport by SQMs\n/kick -- Kick a player\n/pvp -- Change world type\n/c -- Teleport a player\n/addon -- Teleport a player\n/invisible -- Go totally invisible\n/clean -- Clean the map"
    cmdStut = "\n\n/max -- ???\n/q -- Check your money\n/z -- Check effects\n/pos -- ???"
    cmdtut = "\n\n/B -- Broacast message\n/info -- Info about a player\n/getonline -- Info about how many players are online\n/check -- Check all Multiclienting players"
    cmdplay = "\n\n!sellhouse -- Sell your house to a player\n!buyhouse -- Buy a house\n!leavehouse -- Leave a house\n!serverinfo -- Show server information\n!exp -- Show how many exp you need until the next level\n!mana -- Show how mana you need to spent until the next magic level\n!online -- Shows the amount of online players\n!report -- report a bug to the Hoster\n!uptime -- Shows the server's uptime\n!frags -- Shows how many frags the player has"

    if getPlayerAccess(cid) >= 5 then
        doSetItemText(item.uid,"Commands Spell Book For GOD:" .. cmdgod .. cmdSgm .. cmdgm .. cmdStut .. cmdtut .. cmdplay)

    elseif getPlayerAccess(cid) == 4 then
        doSetItemText(item.uid,"Commands Spell Book For Senior GM:" .. cmdSgm .. cmdgm .. cmdStut .. cmdtut .. cmdplay)

    elseif getPlayerAccess(cid) == 3 then
        doSetItemText(item.uid,"Commands Spell Book For GM:" .. cmdgm .. cmdStut .. cmdtut .. cmdplay)

    elseif getPlayerAccess(cid) == 2 then
        doSetItemText(item.uid,"Commands Spell Book For Senior Tutor:" .. cmdStut .. cmdtut .. cmdplay)

    elseif getPlayerAccess(cid) == 1 then
        doSetItemText(item.uid,"Commands Spell Book For Tutor:" .. cmdtut .. cmdplay)

    elseif getPlayerAccess(cid) == 0 then
        doSetItemText(item.uid,"Commands Spell Book For Player:" .. cmdplay)

    else
        doSetItemText(item.uid,"Invalid Access: " .. getPlayerAccess(cid))

    end

    return 0
end