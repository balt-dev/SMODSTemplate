SMODS.Joker {
    key = "bimjo",
    atlas = 'jokers', pos = { x = 0, y = 0 },
    discovered = true,
    config = {
        extra = {
            mult = 5,
            ticks_since_creation = 0
        }
    },
    loc_vars = function(self, info_queue, card)
        -- This is where you can put variables to be placed into your localization file.
        return {
            vars = {
                card.ability.extra.mult,
            }
        }
    end,
    calculate = function(self, card, context)
        -- See https://github.com/Steamodded/smods/wiki/Calculate-Functions.
        if not context.joker_main then return end
        return {
            mult = card.ability.extra.mult
        }
    end,
    update = function(self, card, dt)
        -- Put per-game-tick update logic here
        card.ability.extra.ticks_since_creation = card.ability.extra.ticks_since_creation + 1
    end
}


SMODS.Joker {
    key = "the_cooler_bimjo",
    rarity = 3, -- 1 -> common, 2 -> uncommon, 3 -> rare
    atlas = 'jokers', pos = { x = 1, y = 0 },
    discovered = true,
    config = {
        extra = {
            mult = 50,
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
            }
        }
    end,
    calculate = function(self, card, context)
        if not context.joker_main then return end
        return {
            mult = card.ability.extra.mult
        }
    end
    -- If update does nothing you don't really need it
}