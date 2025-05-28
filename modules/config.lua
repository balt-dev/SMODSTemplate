YOUR_MOD_ID.config_tab = function()
	-- See https://github.com/Steamodded/smods/wiki/UI-Guide.
	return {
		n=G.UIT.ROOT,
		config = {align = "cm", padding = 0.05, r = 0.1, minw=8, minh=6, colour = G.C.BLACK}, 
		nodes = {
			create_toggle {
				label = localize("modid_sample_toggle"),
				ref_table = YOUR_MOD_ID.config,
				ref_value = "toggle"
			}
		}
	}
end
