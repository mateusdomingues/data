function onSay(cid, words, param) 
          local Data = string.explode(param, ",") 
          local  player = getPlayerByName(Data[1]) 
                  local Target = db.getResult("SELECT `name` FROM `players` WHERE `name` = " .. db.escapeString(Data[1]) .. ";") 
                  if Data then 
                          if (Target:getID() ~= -1) then 
                          if Data[2] then 
                                  if tonumber(Data[2]) > 6 then 
                  doPlayerSendCancel(cid, "You cannot add an access higher than 6.") 
          else 
                          setPlayerGroupId(player, Data[2]) 
                          group = getGroupInfo(getPlayerGroupId(player)) 
                                  doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You have changed the "..Data[1].." access. Now he is member of '"..group.name.."' group.") 
                                  doPlayerSendTextMessage(player, MESSAGE_INFO_DESCR, "Admin has changed you access. Now you are member of '"..group.name.."' group.") 
          end 
          else 
                                  doPlayerSendCancel(cid, "Insert an access.") 
          end 
          else 
                                  doPlayerSendCancel(cid, "Player '".. Data[1] .."' doesn't exist.") 
          end 
          else 
                          doPlayerSendCancel(cid, "Insert player name.") 
                  end 
          return TRUE 
  end

