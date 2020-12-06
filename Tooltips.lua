------------------
-- MOVE TOOLTIP --
------------------

function ToolTipHandler(self)
    self:SetOwner(UIParent,"ANCHOR_NONE")
    self:SetPoint("BOTTOMRIGHT", UIParent, 0, 300)
end

hooksecurefunc("GameTooltip_SetDefaultAnchor", ToolTipHandler)