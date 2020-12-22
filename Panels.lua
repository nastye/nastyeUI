local totalH = 300
local totalW = 505

-- DataTextBackgroundPanel
local nastyeUI_DataTextPanel = CreateFrame("FRAME", "nastyeUI_DataTextPanel", UIParent, BackdropTemplateMixin and "BackdropTemplate")
nastyeUI_DataTextPanel:SetPoint("BOTTOMLEFT", 5, 5)
nastyeUI_DataTextPanel:SetWidth(totalW)
nastyeUI_DataTextPanel:SetHeight(30)
nastyeUI_DataTextPanel:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
nastyeUI_DataTextPanel:SetBackdropColor(nastyeUI_PanelBackdropColor.r, nastyeUI_PanelBackdropColor.g, nastyeUI_PanelBackdropColor.b, nastyeUI_PanelBackdropColor.alpha) 
nastyeUI_DataTextPanel:SetBackdropBorderColor(nastyeUI_ClassColor.r, nastyeUI_ClassColor.g, nastyeUI_ClassColor.b, nastyeUI_ClassColor.alpha)
nastyeUI_DataTextPanel:SetFrameStrata("BACKGROUND")
nastyeUI_DataTextPanel:SetFrameLevel(1)

-- BOTTOM LEFT CHAT PANEL
local nastyeUI_ChatPanel = CreateFrame("FRAME", "nastyeUI_ChatPanel", UIParent, BackdropTemplateMixin and "BackdropTemplate")
nastyeUI_ChatPanel:SetPoint("BOTTOMLEFT", 5, 5)
nastyeUI_ChatPanel:SetWidth(totalW)
nastyeUI_ChatPanel:SetHeight(totalH)
nastyeUI_ChatPanel:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
nastyeUI_ChatPanel:SetBackdropColor(nastyeUI_PanelBackdropColor.r, nastyeUI_PanelBackdropColor.g, nastyeUI_PanelBackdropColor.b, nastyeUI_PanelBackdropColor.alpha) 
nastyeUI_ChatPanel:SetBackdropBorderColor(nastyeUI_ClassColor.r, nastyeUI_ClassColor.g, nastyeUI_ClassColor.b, nastyeUI_ClassColor.alpha)
nastyeUI_ChatPanel:SetFrameStrata("BACKGROUND")
nastyeUI_ChatPanel:SetFrameLevel(0)
