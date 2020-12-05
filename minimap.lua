-- BOTTOM LEFT CHAT PANEL
local MinimapBorder = CreateFrame("FRAME", "MinimapBorder", Minimap, BackdropTemplateMixin and "BackdropTemplate")
MinimapBorder:SetPoint("TOPLEFT", Minimap, "TOPLEFT", -1, 1)
MinimapBorder:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 1, -1)
MinimapBorder:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Background", 
                        edgeFile = "Interface\\Buttons\\WHITE8x8", --"Interface/Tooltips/UI-Tooltip-Border", 
                        tile = false, 
                        tileSize = 16,
                        edgeSize = 1, 
                        insets = { left = 0, right = 0, top = 0, bottom = 0 }});
MinimapBorder:SetBackdropBorderColor(0, 0, 0, 1)
MinimapBorder:SetFrameLevel(MinimapBorder:GetParent():GetFrameLevel() - 1)

Minimap:ClearAllPoints()
Minimap:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -5, -5)

-- minimap tracking dropdown
MiniMapTracking:ClearAllPoints()
MiniMapTracking:SetPoint("BOTTOMLEFT", Minimap, "BOTTOMLEFT", 0, 0)
MiniMapTracking.SetPoint = function() end

Minimap_LeftClick = Minimap_OnClick
Minimap_OnClick = function(self, button)
  if button == "LeftButton" then Minimap_LeftClick(self, button) end
  if button == "RightButton" then MiniMapTracking_OnMouseDown() end
  if button == "MiddleButton" then if not Calendar_Toggle then Calendar_LoadUI() end Calendar_Toggle() end
end

GarrisonLandingPageMinimapButton:ClearAllPoints()
GarrisonLandingPageMinimapButton:SetWidth(32) 
GarrisonLandingPageMinimapButton:SetHeight(32)
GarrisonLandingPageMinimapButton:SetPoint("BOTTOMLEFT", Minimap, "BOTTOMLEFT", 0, 0)

-- mbb
if MBB_MinimapButtonFrame then
  function MBB_SetButtonPosition()
    MBB_MinimapButtonFrame:ClearAllPoints()
    MBB_MinimapButtonFrame:SetWidth(32)
    MBB_MinimapButtonFrame:SetHeight(32)
    MBB_MinimapButtonFrame:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 0, 0)
  end

  local _, border = MBB_MinimapButtonFrame:GetRegions()
  border:Hide()
end

-- mail
MiniMapMailFrame:ClearAllPoints()
MiniMapMailFrame:SetWidth(32)
MiniMapMailFrame:SetHeight(32)
MiniMapMailFrame.oSetPoint = MiniMapMailFrame.SetPoint
MiniMapMailFrame.SetPoint = function() end
MiniMapMailFrame:oSetPoint("RIGHT", Minimap, "RIGHT", 0, 0)

local _, border = MiniMapMailFrame:GetRegions()
border:Hide()

-- queue
QueueStatusMinimapButton:ClearAllPoints()
QueueStatusMinimapButton:SetWidth(32)
QueueStatusMinimapButton:SetHeight(32)
QueueStatusMinimapButton.oSetPoint = QueueStatusMinimapButton.SetPoint
QueueStatusMinimapButton.SetPoint = function() end
QueueStatusMinimapButton:oSetPoint("LEFT", Minimap, "LEFT", 0, 0)

local border = QueueStatusMinimapButton:GetRegions()
border:Hide()

-------------------------
-- DEBUGGING FUNCTIONS -- 
-------------------------

printRegions = function(frame)
  for i, child in ipairs({MBB_MinimapButtonFrame:GetRegions()}) do
    print(i)
    print(child:GetName())
    print(child:GetObjectType())
  end
end