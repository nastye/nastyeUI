nastyeUI_SetDominosProfile = function()
  if not Dominos then return end
  if not Dominos:MatchProfile("nastyeUI") then return end 
  
  if (nastyeUIDB.dominosAskedOnce == false) and (Dominos.db:GetCurrentProfile() ~= "nastyeUI") then
    StaticPopupDialogs["NASTYE_UI_SET_DOMINOS_PROFILE"] = {
      text = "Set nastyeUI Dominos Profile for this character?",
      button1 = "Yes",
      button2 = "No",
      OnAccept = function()
        nastyeUIDB.dominosAskedOnce = true
        Dominos:SetProfile("nastyeUI")
      end,
      OnCancel = function()
        nastyeUIDB.dominosAskedOnce = true
      end,
      timeout = 0,
      whileDead = true,
      hideOnEscape = true,
      preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
    }
    StaticPopup_Show("NASTYE_UI_SET_DOMINOS_PROFILE")
  end
end

nastyeUI_SetDominosProfile()