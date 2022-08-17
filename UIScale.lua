local scaler = CreateFrame("Frame")
scaler:RegisterEvent("VARIABLES_LOADED")
scaler:RegisterEvent("UI_SCALE_CHANGED")
scaler:SetScript("OnEvent", function(self, event)
	if not InCombatLockdown() then
		local scale = 768.0 / 1440.0
		if scale < .64 then
			UIParent:SetScale(scale)
		else
			self:UnregisterEvent("UI_SCALE_CHANGED")
			SetCVar("uiScale", scale)
		end
    FCF_RestorePositionAndDimensions(ChatFrame1)
	else
		self:RegisterEvent("PLAYER_REGEN_ENABLED")
	end

	if event == "PLAYER_REGEN_ENABLED" then
		self:UnregisterEvent("PLAYER_REGEN_ENABLED")
	end
end)