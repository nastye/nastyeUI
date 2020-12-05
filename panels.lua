-- BOTTOM LEFT CHAT PANEL
local ChatPanel = CreateFrame("FRAME", nil, self, BackdropTemplateMixin and "BackdropTemplate")
ChatPanel:SetPoint("BOTTOMLEFT")
ChatPanel:SetWidth(430 * GetCVar("UIScale"))
ChatPanel:SetHeight(200 * GetCVar("UIScale"))
ChatPanel:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
ChatPanel:SetBackdropColor(26/255, 26/255, 26/255, 1)
ChatPanel:SetBackdropBorderColor(0, 0, 0, 1)
ChatPanel:SetFrameStrata("BACKGROUND")
ChatPanel:SetFrameLevel(0)
ChatPanel:SetAlpha(1)
ChatPanel:Show()


local DataTextPanel = CreateFrame("FRAME", nil, self, BackdropTemplateMixin and "BackdropTemplate")
DataTextPanel:SetPoint("BOTTOMLEFT")
DataTextPanel:SetWidth(430 * GetCVar("UIScale"))
DataTextPanel:SetHeight(28 * GetCVar("UIScale"))
DataTextPanel:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
DataTextPanel:SetBackdropColor(26/255, 26/255, 26/255, 1)
DataTextPanel:SetBackdropBorderColor(0, 0, 0, 1)
DataTextPanel:SetFrameStrata("BACKGROUND")
DataTextPanel:SetFrameLevel(1)
DataTextPanel:SetAlpha(1)
DataTextPanel:Show()