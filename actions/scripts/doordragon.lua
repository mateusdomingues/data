function onUse(cid, item, frompos, item2, topos)

portafechada = 7043 -- coloque aqui o ID da porta fechada
portaaberta = 7044 -- coloque aqui o ID da porta aberta
uidporta = 5680 -- coloque aqui o UID da porta
idkey = 2090 -- coloque aqui o id da key

   if item.itemid == idkey and item2.itemid == portafechada and item2.uid == uidporta then
      doTransformItem(item2.uid,portaaberta)
   elseif item.itemid == idkey and item2.itemid == portaaberta and item2.uid == uidporta then
      doTransformItem(item2.uid,portafechada)
   else
      doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
   end
   return 1
end