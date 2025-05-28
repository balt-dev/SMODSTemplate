--- Compares two numbers in a way that will allow your mod to work with the Talisman mod.
--- If this returns 0, the numbers are equal. If it returns 1, a > b. If it returns -1, a < b.
function cmp(a, b)
	local ta, tb = type(a), type(b)
	if ta == "table" then
		-- BigNum
		if a.compare then return a:compare(b) end
		-- OmegaNum
		if a.compareTo then return a:compareTo(b) end
		error("unsupported number representation for " .. a .. " - must be either float, BigNum, or OmegaNum")
	end
	if tb == "table" then return -cmp(b, a) end
	local diff = (a - b)
	return (diff == 0 and 0) or (math.abs(diff) / diff)
end