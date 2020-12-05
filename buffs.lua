local moveBuffs = function()
  BuffFrame:ClearAllPoints()
  BuffFrame:SetPoint("TOPRIGHT", Minimap, "TOPLEFT", -11, 0)
end

hooksecurefunc("UIParent_UpdateTopFramePositions", moveBuffs)
moveBuffs()