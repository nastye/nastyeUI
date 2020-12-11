if not Details then return end

local Details2Border = CreateFrame("FRAME", "Details2Border", Details_WindowFrame1, BackdropTemplateMixin and "BackdropTemplate")
Details2Border:SetPoint("TOPLEFT", DetailsUpFrameLeftPart1, "TOPLEFT", -1, -2)
Details2Border:SetPoint("BOTTOMRIGHT", Details_WindowFrame1, "BOTTOMRIGHT", 1, -1)
Details2Border:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
-- Details2Border:SetBackdropBorderColor(0, 0, 0, 1)
Details2Border:SetBackdropColor(0, 0, 0, 0)
Details2Border:SetBackdropBorderColor(nastyeUI_ClassColor.r, nastyeUI_ClassColor.g, nastyeUI_ClassColor.b, 1)
Details2Border:SetFrameLevel(Details2Border:GetParent():GetFrameLevel() - 1)

local Details2Border = CreateFrame("FRAME", "Details2Border", Details_WindowFrame2, BackdropTemplateMixin and "BackdropTemplate")
Details2Border:SetPoint("TOPLEFT", DetailsUpFrameLeftPart2, "TOPLEFT", -1, -2)
Details2Border:SetPoint("BOTTOMRIGHT", Details_WindowFrame2, "BOTTOMRIGHT", 1, -1)
Details2Border:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
-- Details2Border:SetBackdropBorderColor(0, 0, 0, 1)
Details2Border:SetBackdropColor(0, 0, 0, 0)
Details2Border:SetBackdropBorderColor(nastyeUI_ClassColor.r, nastyeUI_ClassColor.g, nastyeUI_ClassColor.b, 1)
Details2Border:SetFrameLevel(Details2Border:GetParent():GetFrameLevel() - 1)