if not BigWigsAPI then return end

local backdrop = {
  bgFile = "Interface\\Buttons\\WHITE8x8",--"Interface\\ChatFrame\\ChatFrameBackground", --"Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
  edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
  tile = false, tileSize = 16,
  edgeSize = 1, 
  insets = { left = 0, right = 0, top = 0, bottom = 0 }
}

BigWigsAPI:RegisterBarStyle("nastyeUI", {
  apiVersion = 1,
  version = 1,
  fontSizeNormal = 12,
  fontSizeEmphasized = 14,
  barSpacing = 3,
  ApplyStyle = function(bar)
    local bd = bar.candyBarBackdrop
    bd:SetBackdrop(backdrop)
    bd:SetBackdropColor(nastyeUI_PanelBackdropColor.r, nastyeUI_PanelBackdropColor.g, nastyeUI_PanelBackdropColor.b, 0.7)
    bd:SetBackdropBorderColor(0,0,0,1)

    bd:ClearAllPoints()
    bd:SetPoint("TOPLEFT", bar, "TOPLEFT", -1, 1)
    bd:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", 1, -1)
    bd:Show()
  end,
  BarStopped = function(bar)
		local bd = bar.candyBarBackdrop
		bd:Hide()
  end,
  GetStyleName = function() return "nastyeUI" end
})