------------------
-- MOVE TOOLTIP --
------------------

function ToolTipHandler(self)
    self:SetOwner(UIParent,"ANCHOR_NONE")
    self:SetPoint("BOTTOMRIGHT", UIParent, 0, 400)
end

hooksecurefunc("GameTooltip_SetDefaultAnchor", ToolTipHandler)