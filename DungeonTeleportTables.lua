local aura_env = {}
aura_env.mapIDtoSpellID = {
  [2]   = 131204, -- Jade Serpent
  [165] = 159899, -- SBG
  [168] = 159901, -- Everbloom
  [198] = 424163, -- DHT
  [199] = 424153, -- BRH
  [200] = 393764, -- HoV
  [206] = 410078, -- Nelths Lair
  [210] = 393766, -- CoS
  [244] = 424187, -- Atal'Dazar
  [245] = 410071, -- Freehold
  [248] = 424167, -- Waycrest
  [251] = 410074, -- Underrot
  [353] = -1,     -- Siege of Boralus
  -- This is actually 2 Spells (of course)
  -- 445418 (Alliance)
  -- 464256 (Horde)
  [375] = 354464, -- Mists
  [376] = 354462, -- Necrotic Wake
  [399] = 393256, -- Ruby Life Pools
  [400] = 393262, -- Nokhud Offensive
  [401] = 393279, -- Azure Vault
  [402] = 393273, -- Algethar Academy
  [403] = 393222, -- Uldaman
  [404] = 393276, -- Neltharus
  [405] = 393267, -- Brackenhide Hollow
  [406] = 393283, -- Halls of Infusion
  [438] = 410080, -- Vortex Pinnacle
  [456] = 424142, -- THOT
  [463] = 424197, -- DOTI LOWER
  [464] = 424197, -- DOTI UPPER
  [499] = 445444, -- Priory
  [500] = 445443, -- The Rookery
  [501] = 445269, -- Stonevault
  [502] = 445416, -- City of Threads
  [503] = 445417, -- Ara Ara
  [504] = 445441, -- Darkflame Cleft
  [505] = 445414, -- The Dawnbreaker
  [506] = 445440, -- Cinderbrew Meadery
  [507] = 445424, -- Grim Batol
  -- These are all "Hero's Path" but NYE
  -- 445429
  -- 445430
  -- 445432
  -- 445433
  -- 445437
  -- 445438
  -- 445446
  -- 445447
  -- 445448
  -- 445449
}

aura_env.mapIDToName = {
  [2]   = "Jade Snek",        -- Jade Serpent
  [56]  = "",                 -- Stormstout Brewery
  [57]  = "",                 -- Gate of the Setting Sun
  [58]  = "",                 -- Shado-Pan Monastery
  [59]  = "",                 -- Siege of Niuzao Temple
  [60]  = "",                 -- Mogu'shan Palace
  [76]  = "",                 -- Scholomance
  [77]  = "",                 -- Scarlet Halls
  [78]  = "",                 -- Scarlet Monastery
  [161] = "",                 -- Skyreach
  [163] = "",                 -- Bloodmaul Slag Mines
  [164] = "",                 -- Auchindoun
  [165] = "Free Key",         -- SBG
  [166] = "",                 -- Grimrail Depot
  [167] = "",                 -- Upper Blackrock Spire
  [168] = "Everbloom",        -- Everbloom
  [169] = "",                 -- Iron Docks
  [197] = "",                 -- Eye of Azshara
  [198] = "DHT",              -- Darkheart Thicket
  [199] = "BRH",              -- Black Rook Hold
  [200] = "HoV",              -- Halls of Valor
  [206] = "NL",               -- Nelths Lair
  [207] = "",                 -- Vault of the Wardens
  [208] = "",                 -- Maw of Souls
  [209] = "",                 -- The Arcway
  [210] = "CoS",              -- Court of Stars
  [227] = "",                 -- Return to Karazhan: Lower
  [233] = "",                 -- Cathedral of Eternal Night
  [234] = "",                 -- Return to Karazhan: Upper
  [239] = "",                 -- Seat of the Triumvirate
  [244] = "AD",               -- Atal
  [245] = "FH",               -- Freehold
  [246] = "",                 -- Tol Dagor
  [247] = "",                 -- The MOTHERLODE!!
  [248] = "Waycrest",         -- Waycrest Manor
  [249] = "",                 -- Kings' Rest
  [250] = "",                 -- Temple of Sethraliss
  [251] = "UR",               -- Underrot
  [252] = "",                 -- Shrine of the Storm
  [353] = "Siege",            -- Siege of Boralus
  [369] = "",                 -- Operation: Mechagon - Junkyard
  [370] = "",                 -- Operation: Mechagon - Workshop
  [375] = "Mists",            -- Mists
  [376] = "Kyrian Weapon",    -- Necrotic Wake
  [377] = "",                 -- De Other Side
  [378] = "",                 -- Halls of Atonement
  [379] = "",                 -- Plaguefall
  [380] = "",                 -- Sanguine Depths
  [381] = "",                 -- Spires of Ascension
  [382] = "",                 -- Theater of Pain
  [391] = "",                 -- Tazavesh: Streets of Wonder
  [392] = "",                 -- Tazavesh: So'leah's Gambit
  [399] = "RLP",              -- Ruby Life Pools
  [400] = "NO",               -- Nokhud Offensive
  [401] = "AV",               -- Azure Vault
  [402] = "AA",               -- Algethar Academy
  [403] = "Uldaman",          -- Uldaman
  [404] = "Neltharus",        -- Neltharus
  [405] = "Brokeback Hollow", -- Brackenhide Hollow
  [406] = "HoI",              -- Halls of Infusion
  [438] = "Vortex Pineapple", -- Vortex Pinnacle
  [456] = "THOT",             -- Throne of the Tides
  [463] = "DOTI",             -- DOTI Upper
  [464] = "DOTI",             -- DOTI LOWER
  [499] = "",                 -- Priory of the Sacred Flame
  [500] = "",                 -- The Rookery
  [501] = "SV",               -- Stonevault
  [502] = "Threads",          -- City of Threads
  [503] = "Ara Ara~",         -- Ara Ara
  [504] = "",                 -- Darkflame Cleft
  [505] = "Dawnbreaker",      -- The Dawnbreaker
  [506] = "",                 -- Cinderbrew Meadery
  [507] = "GB",               -- Grim Batol
}
