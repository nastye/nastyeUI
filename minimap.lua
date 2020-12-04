Minimap:ClearAllPoints()
Minimap:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -5, -5)

-- minimap tracking dropdown
MiniMapTracking:ClearAllPoints()
MiniMapTracking:SetPoint("BOTTOMLEFT", Minimap, "BOTTOMLEFT", 0, 0)
MiniMapTracking.SetPoint = function() end

local Minimap_OnClick = function(self, button)
  if button == "LeftButton" then end
  if button == "RightButton" then MiniMapTracking_OnMouseDown() end
  if button == "MiddleButton" then if not Calendar_Toggle then Calendar_LoadUI() end Calendar_Toggle() end
end
Minimap:SetScript("OnMouseUp", Minimap_OnClick)

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

BuffFrame:ClearAllPoints()
BuffFrame:SetPoint("TOPRIGHT", Minimap, "TOPLEFT", -10, 0)


    -- Check applied chat version on load and prompt update
--local frame = CreateFrame("FRAME")
--frame:RegisterEvent("PLAYER_LOGIN")

--function frame:OnEvent(event, arg1)
--  if event == "PLAYER_LOGIN" then
--   end
-- end

-- frame:SetScript("OnEvent", frame.OnEvent)

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