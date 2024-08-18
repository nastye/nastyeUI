nastyeUIMapIDsEditBox = CreateFrame('EditBox')
nastyeUIMapIDsEditBox:Hide()
nastyeUIMapIDsEditBox:SetWidth(800)
nastyeUIMapIDsEditBox:SetHeight(600)
nastyeUIMapIDsEditBox:SetMultiLine(true)
nastyeUIMapIDsEditBox:SetAutoFocus(true)
nastyeUIMapIDsEditBox:SetFontObject(ChatFontNormal)
nastyeUIMapIDsEditBox:SetScript('OnEscapePressed', function(self) self:Hide() end)
-- nastyeUIMapIDsEditBox:SetScript('OnTextChanged', function(self, userInput)
--   if userInput then
--     return
--   end
--   self:SetText('')
-- end)
nastyeUIMapIDsEditBox:SetPoint('CENTER', 0, 0)
nastyeUIMapIDsEditBox:SetTextInsets(10, 10, 10, 10)
-- nastyeUIMapIDsEditBox:SetBackdrop({
-- bgFile = 'Interface\\DialogFrame\\UI-DialogBox-Background',
-- edgeFile = 'Interface\\DialogFrame\\UI-DialogBox-Border',
-- edgeSize = 16,
-- insets = { left = 5, right = 5, top = 5, bottom = 5 },
-- })
-- nastyeUIMapIDsEditBox:SetBackdropColor(0, 0, 0, 1)
-- nastyeUIMapIDsEditBox:SetBackdropBorderColor(0.3, 0.3, 0.3, 1)

SLASH_MAPIDS1 = '/mapids'
SlashCmdList['MAPIDS'] = function(msg)
  local ret = ""
  for i = 0, 510 do
    local info = C_ChallengeMode.GetMapUIInfo(i)
    if info then
      ret = ret .. i .. ': ' .. info .. '\n'
    end
  end
  nastyeUIMapIDsEditBox:SetText(ret)
  nastyeUIMapIDsEditBox:Show()
end
