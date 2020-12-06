-- BOTTOM LEFT CHAT PANEL
local ChatPanel = CreateFrame("FRAME", "ChatPanel", UIParent, BackdropTemplateMixin and "BackdropTemplate")
ChatPanel:SetPoint("BOTTOMLEFT")
ChatPanel:SetWidth(430)
ChatPanel:SetHeight(200)
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

-- DataTextBackgroundPanel
local DataTextPanel = CreateFrame("FRAME", "DataTextPanel", ChatPanel, BackdropTemplateMixin and "BackdropTemplate")
DataTextPanel:SetPoint("BOTTOMLEFT")
DataTextPanel:SetWidth(430)
DataTextPanel:SetHeight(28)
DataTextPanel:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
DataTextPanel:SetBackdropColor(26/255, 26/255, 26/255, 1)
DataTextPanel:SetBackdropBorderColor(0, 0, 0, 1)
DataTextPanel:SetFrameStrata("BACKGROUND")
DataTextPanel:SetFrameLevel(DataTextPanel:GetParent():GetFrameLevel() + 1)
