
-- Store the current mod as a global so not only you, but other mods, can access it.
YOUR_MOD_ID = SMODS.current_mod


-- Remove this if you're not using lovely patches.
assert(SMODS.current_mod.lovely, "Lovely patches were not loaded! Make sure your mod is in the right place.")


-- Remember to add to this every time you add a file.
-- Also, import order matters!
-- If a file defines a thing and another file uses that thing, the file that defines must be loaded before the one that uses.
assert(SMODS.load_file("./modules/utils.lua"))()
assert(SMODS.load_file("./modules/assets.lua"))()
assert(SMODS.load_file("./modules/jokers.lua"))()
assert(SMODS.load_file("./modules/config.lua"))()
