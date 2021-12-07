------------------
-- MOVE TOOLTIP --
------------------

function ToolTipHandler(self)
    self:SetOwner(UIParent,"ANCHOR_NONE")
    self:SetPoint("BOTTOMRIGHT", UIParent, -280, 15)
end

hooksecurefunc("GameTooltip_SetDefaultAnchor", ToolTipHandler)