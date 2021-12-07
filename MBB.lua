-- Move MBB Button
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