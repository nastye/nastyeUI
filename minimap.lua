-- Check applied chat version on load and prompt update
local frame = CreateFrame("FRAME")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")

function frame:OnEvent(event, arg1)
  if event == "PLAYER_ENTERING_WORLD" then
    Minimap:ClearAllPoints()
    Minimap:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -5, -5)

    MiniMapTracking:ClearAllPoints()
    MiniMapTracking:SetPoint("BOTTOMLEFT", Minimap, "BOTTOMLEFT", 0, 0)
    MiniMapTracking.SetPoint = function() end

    local Minimap_OnClick = function(self, button)
        if button == "LeftButton" then end
        if button == "RightButton" then MiniMapTracking_OnMouseDown() end
        if button == "MiddleButton" then if not Calendar_Toggle then Calendar_LoadUI() end Calendar_Toggle() end
      end
    Minimap:SetScript("OnMouseUp", Minimap_OnClick)

    -- covenant/garrison/...
    local GarrisonLandingPageMinimapButton_OnEventHook = function()
      GarrisonLandingPageMinimapButton:ClearAllPoints()
      GarrisonLandingPageMinimapButton:SetPoint("BOTTOMLEFT", Minimap, "BOTTOMLEFT", 0, 0)
      GarrisonLandingPageMinimapButton.SetPoint = function() end
    end
    GarrisonLandingPageMinimapButton:HookScript("OnEvent", GarrisonLandingPageMinimapButton_OnEventHook)

    -- mbb
    MBB_MinimapButtonFrame:ClearAllPoints()
    MBB_MinimapButtonFrame:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMRIGHT", 0, 0)
    MBB_MinimapButtonFrame.oSetPoint = MBB_MinimapButtonFrame.SetPoint
    MBB_MinimapButtonFrame.SetPoint = function() end
    
    -- mail
    MiniMapMailFrame:ClearAllPoints()
    MiniMapMailFrame:SetPoint("RIGHT", Minimap, "RIGHT", 0, 0)
    MiniMapMailFrame.oSetPoint = MiniMapMailFrame.SetPoint
    MiniMapMailFrame.SetPoint = function() end
   
    -- queue
    QueueStatusMinimapButton:ClearAllPoints()
    QueueStatusMinimapButton:SetPoint("LEFT", Minimap, "LEFT", 0, 0)
    QueueStatusMinimapButton.oSetPoint = QueueStatusMinimapButton.SetPoint
    QueueStatusMinimapButton.SetPoint = function() end

    BuffFrame:ClearAllPoints()
    BuffFrame:SetPoint("TOPRIGHT", Minimap, "TOPLEFT", -10, 0)
  end
end

frame:SetScript("OnEvent", frame.OnEvent)