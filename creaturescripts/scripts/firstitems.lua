local firstItems =
{
	2173,
	2522,
           7368,
           2124,
           2493,
           2495,
           2645
}

function onLogin(cid)
	if getPlayerStorageValue(cid, 30001) == -1 then
		for i = 1, table.maxn(firstItems) do
			doPlayerAddItem(cid, firstItems[i], 1)
		end
		if getPlayerSex(cid) == 0 then
			doPlayerAddItem(cid, 2494, 1)
		else
			doPlayerAddItem(cid, 2494, 1)
		end
		local bag = doPlayerAddItem(cid, 10522, 1)
		doAddContainerItem(bag, 2160, 5)
		doAddContainerItem(bag, 7434, 1)
		doAddContainerItem(bag, 2183, 1)
		doAddContainerItem(bag, 8922, 1)
		doAddContainerItem(bag, 2421, 1)
		doAddContainerItem(bag, 7390, 1)
		doAddContainerItem(bag, 2273, 1)
		doAddContainerItem(bag, 2276, 1)
		setPlayerStorageValue(cid, 30001, 1)
	end
 	return TRUE
end