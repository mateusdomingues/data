-- Creditos a Won Helder, apocarai, MatheusMkalo 
function onSay(cid, words, param)   
local maxLen = 30 -- tamanho maximo do nome  
local itemid = 2361 ------ Numero do Item que ser� removido  
local proibido = {"!","@","*"} -- simbolos proibidos 
 
  
      for i = 1, #proibido do            
          if string.find(tostring(param), proibido[i]) then               
             doPlayerSendCancel(cid,"N�o pode usar s�mbolos em seu nome.")               
             return TRUE           
          end       
      end                
       
      if tostring(param) == "" then -- checkar se n�o � nome vazio          
         doPlayerSendCancel(cid, "Voc� deve informar um nome.")          
         return TRUE        
      end               
       
      if string.len(tostring(param)) > maxLen then           
         doPlayerSendCancel(cid, "Voc� pode usar no m�ximo " .. maxLen .. " letras.")           
         return TRUE        
      end              
       
      if not getTilePzInfo(getCreaturePosition(cid)) then        
         doPlayerSendCancel(cid,"So pode ser usado em pz.")        
         return TRUE        
      end                     
       
      if getPlayerItemCount(cid, itemid) >= 1 then            
         doPlayerRemoveItem(cid, itemid, 1)            
         db.executeQuery("UPDATE `players` SET `name` = '" .. db.escapeString(param) .. "' WHERE `id` = "..getPlayerGUID(cid)..";")             
         doPlayerSendTextMessage(cid,25,"Voc� ser� kickado em 5 segundos.")            
         addEvent(doRemoveCreature, 5*1000, cid, true)       
      else           
         doPlayerSendCancel(cid,"Voc� n�o possui o item " .. getItemNameById(itemid) .. ".")        
      end  
return TRUE  
end
