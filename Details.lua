if not Details then return end

local instance = Details:GetInstance(1)
local pos_table = instance:CreatePositionTable()
pos_table.w = 230
pos_table.h = 66
instance:RestorePositionFromPositionTable(pos_table)

local instance = Details:GetInstance(2)
local pos_table = instance:CreatePositionTable()
pos_table.w = 230
pos_table.h = 175
instance:RestorePositionFromPositionTable(pos_table)

DetailsBaseFrame1:ClearAllPoints()
DetailsBaseFrame2:ClearAllPoints()
DetailsBaseFrame1:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", -5, 5)
DetailsBaseFrame2:SetPoint("BOTTOMRIGHT", DetailsBaseFrame1, "TOPRIGHT", 0, 20)

-- local Details1Border = CreateFrame("FRAME", "Details1Border", Details_WindowFrame1, BackdropTemplateMixin and "BackdropTemplate")
-- Details1Border:SetPoint("TOPLEFT", DetailsUpFrameLeftPart1, "TOPLEFT", -1, -2)
-- Details1Border:SetPoint("BOTTOMRIGHT", Details_WindowFrame1, "BOTTOMRIGHT", 1, -1)
-- Details1Border:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
--                         edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
--                         tile = false, 
--                         tileSize = 16,
--                         edgeSize = 1, 
--                         insets = { left = 0, right = 0, top = 0, bottom = 0 }});
-- -- Details1Border:SetBackdropBorderColor(0, 0, 0, 1)
-- Details1Border:SetBackdropColor(nastyeUI_PanelBackdropColor.r, nastyeUI_PanelBackdropColor.g, nastyeUI_PanelBackdropColor.b, nastyeUI_PanelBackdropColor.alpha) 
-- -- Details1Border:SetBackdropBorderColor(nastyeUI_ClassColor.r, nastyeUI_ClassColor.g, nastyeUI_ClassColor.b, nastyeUI_ClassColor.alpha)
-- Details1Border:SetFrameLevel(Details1Border:GetParent():GetFrameLevel() - 1)
-- 
-- local Details2Border = CreateFrame("FRAME", "Details2Border", Details_WindowFrame2, BackdropTemplateMixin and "BackdropTemplate")
-- Details2Border:SetPoint("TOPLEFT", DetailsUpFrameLeftPart2, "TOPLEFT", -1, -2)
-- Details2Border:SetPoint("BOTTOMRIGHT", Details_WindowFrame2, "BOTTOMRIGHT", 1, -1)
-- Details2Border:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
--                         edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
--                         tile = false, 
--                         tileSize = 16,
--                         edgeSize = 1, 
--                         insets = { left = 0, right = 0, top = 0, bottom = 0 }});
-- -- Details2Border:SetBackdropBorderColor(0, 0, 0, 1)
-- Details2Border:SetBackdropColor(nastyeUI_PanelBackdropColor.r, nastyeUI_PanelBackdropColor.g, nastyeUI_PanelBackdropColor.b, nastyeUI_PanelBackdropColor.alpha) 
-- -- Details2Border:SetBackdropBorderColor(nastyeUI_ClassColor.r, nastyeUI_ClassColor.g, nastyeUI_ClassColor.b, nastyeUI_ClassColor.alpha)
-- Details2Border:SetFrameLevel(Details2Border:GetParent():GetFrameLevel() - 1)