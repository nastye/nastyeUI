------------------
-- MOVE TOOLTIP --
------------------

function ToolTipHandler(self)
    self:SetOwner(UIParent,"ANCHOR_NONE")
    self:SetPoint("BOTTOMRIGHT", UIParent, -240, 15)
end

hooksecurefunc("GameTooltip_SetDefaultAnchor", ToolTipHandler)

---------------------
-- MOVE OBJECTIVES --
---------------------

-- function ObjectiveHandler(self)
--   -- self:SetOwner(UIParent, "ANCHOR_NONE")
--   -- self:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -5, -350)
--   ObjectiveTrackerFrame:ClearAllPoints()
--   ObjectiveTrackerFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -5, -350)
-- end
-- 
-- hooksecurefunc("ObjectiveTracker_Update", ObjectiveHandler)

-- local f = CreateFrame("Frame", nil, UIParent)
-- f:RegisterEvent("SUPER_TRACKING_CHANGED")
-- f:RegisterEvent("QUEST_WATCH_LIST_CHANGED")
-- f:SetScript("OnEvent", function() ObjectiveHandler() end)
