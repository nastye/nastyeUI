if not SexyMap2DB then return end

local characterString = GetUnitName("player", false) .. "-" .. GetRealmName()

--if not SexyMap2DB[characterString] then end
SexyMap2DB[characterString] = "nastyeUI"

if not SexyMap2DB["nastyeUI"] then 
  SexyMap2DB["nastyeUI"] = {
  		["core"] = {
  			["clamp"] = true,
  			["point"] = "TOPRIGHT",
  			["relpoint"] = "TOPRIGHT",
  			["autoZoom"] = 5,
  			["northTag"] = false,
  			["y"] = -5,
  			["x"] = -5,
  			["lock"] = true,
  			["shape"] = 130871,
  			["rightClickToConfig"] = false,
  		},
  		["coordinates"] = {
  			["enabled"] = false,
  			["fontColor"] = {
  			},
  			["xOffset"] = 0,
  			["updateRate"] = 1,
  			["yOffset"] = 10,
  			["font"] = "Friz Quadrata TT",
  			["borderColor"] = {
  			},
  			["coordPrecision"] = "%d,%d",
  			["backgroundColor"] = {
  			},
  		},
  		["ping"] = {
  			["showPing"] = false,
  			["showAt"] = "map",
  		},
  		["buttons"] = {
  			["radius"] = 0,
  			["lockDragging"] = true,
  			["allowDragging"] = false,
  			["visibilitySettings"] = {
  				["LibDBIcon10_Nys_ToDoList"] = "always",
  				["MiniMapChallengeMode"] = "never",
  				["QueueStatusMinimapButton"] = "always",
  				["LibDBIcon10_BugSack"] = "always",
  				["LibDBIcon10_SavedInstances"] = "always",
  				["MinimapZoomIn"] = "never",
  				["MiniMapMailFrame"] = "always",
  				["LibDBIcon10_Grid2"] = "always",
  				["LibDBIcon10_Leatrix_Maps"] = "always",
  				["GameTimeFrame"] = "never",
  				["LibDBIcon10_Dominos"] = "always",
  				["TimeManagerClockButton"] = "always",
  				["SexyMapZoneTextButton"] = "never",
  				["MinimapZoomOut"] = "never",
  				["MiniMapWorldMapButton"] = "never",
  				["GarrisonLandingPageMinimapButton"] = "always",
  				["MiniMapTracking"] = "never",
  				["MiniMapInstanceDifficulty"] = "never",
  				["GuildInstanceDifficulty"] = "never",
  				["LibDBIcon10_TradeSkillMaster"] = "always",
  			},
  			["dragPositions"] = {
  				["GarrisonLandingPageMinimapButton"] = 226.548150544687,
  				["GameTimeFrame"] = 35.61086588320758,
  			},
  			["controlVisibility"] = true,
  		},
  		["clock"] = {
  			["bgColor"] = {
  				["a"] = 0,
  				["r"] = 0,
  				["g"] = 0,
  				["b"] = 0,
  			},
  			["font"] = "Friz Quadrata TT",
  			["fontColor"] = {
  				["a"] = 0.9999977946281433,
  				["r"] = 0.9999977946281433,
  				["g"] = 0.9999977946281433,
  				["b"] = 0.9999977946281433,
  			},
  			["borderColor"] = {
  				["a"] = 0,
  				["r"] = 0,
  				["g"] = 0,
  				["b"] = 0,
  			},
  			["xOffset"] = 0,
  			["fontsize"] = 12,
  			["yOffset"] = 20,
  		},
  		["borders"] = {
  			["applyPreset"] = false,
  			["borders"] = {
  			},
  			["backdrop"] = {
  				["show"] = false,
  				["textureColor"] = {
  				},
  				["settings"] = {
  					["bgFile"] = "Interface\\Tooltips\\UI-Tooltip-Background",
  					["edgeFile"] = "Interface\\Tooltips\\UI-Tooltip-Border",
  					["tile"] = false,
  					["edgeSize"] = 16,
  					["insets"] = {
  						["top"] = 4,
  						["right"] = 4,
  						["left"] = 4,
  						["bottom"] = 4,
  					},
  				},
  				["borderColor"] = {
  				},
  				["scale"] = 1,
  			},
  			["hideBlizzard"] = true,
  		},
  		["zonetext"] = {
  			["bgColor"] = {
  				["a"] = 1,
  				["r"] = 0,
  				["g"] = 0,
  				["b"] = 0,
  			},
  			["font"] = "Friz Quadrata TT",
  			["fontColor"] = {
  			},
  			["borderColor"] = {
  				["a"] = 1,
  				["r"] = 0,
  				["g"] = 0,
  				["b"] = 0,
  			},
  			["xOffset"] = 0,
  			["yOffset"] = 0,
  		},
  		["movers"] = {
  			["lockDurability"] = true,
  			["lockObjectives"] = true,
  			["moveDurability"] = true,
  			["moveVehicle"] = true,
  			["lockVehicle"] = true,
  			["moveObjectives"] = true,
  			["moverPositions"] = {
  				["durability"] = {
  					"RIGHT", -- [1]
  					"RIGHT", -- [2]
  					-105.7445755004883, -- [3]
  					-152.1780090332031, -- [4]
  				},
  				["vehicle"] = {
  					"RIGHT", -- [1]
  					"RIGHT", -- [2]
  					-3.3333580493927, -- [3]
  					-149.3336639404297, -- [4]
  				},
  				["objectives"] = {
  					"BOTTOMRIGHT", -- [1]
  					"BOTTOMRIGHT", -- [2]
  					-24.0111026763916, -- [3]
  					0.7999593019485474, -- [4]
  				},
  			},
  		},
    }
end