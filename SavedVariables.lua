if not nastyeUIDB then nastyeUIDB = {} end
if not nastyeUIDB.lastAppliedChatVer then nastyeUIDB.lastAppliedChatVer = 0 end
if not nastyeUIDB.sexyMapAskedOnce then nastyeUIDB.sexyMapAskedOnce = false end
if not nastyeUIDB.dominosAskedOnce then nastyeUIDB.dominosAskedOnce = false end

nastyeUI_ClassColor = {}
nastyeUI_ClassColor["r"], nastyeUI_ClassColor["g"], nastyeUI_ClassColor["b"] = GetClassColor(select(2, UnitClass("player")))
nastyeUI_ClassColor["alpha"] = 0.5
nastyeUI_PanelBackDropColor = {}
nastyeUI_PanelBackDropColor["r"] = 26/255
nastyeUI_PanelBackDropColor["g"] = 26/255
nastyeUI_PanelBackDropColor["b"] = 26/255
nastyeUI_PanelBackDropColor["alpha"] = 1