local moveBuffs = function()
  BuffFrame:ClearAllPoints()
  BuffFrame:SetPoint("TOPRIGHT", Minimap, "TOPLEFT", -11, 0)

  DebuffButton1:ClearAllPoints()
  DebuffButton1:SetPoint("BOTTOMRIGHT", Minimap, "BOTTOMLEFT", -11, 0)
end

hooksecurefunc("UIParent_UpdateTopFramePositions", moveBuffs)
moveBuffs()