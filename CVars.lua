setCVars = function()
  --------------
  -- UI SCALE --
  --------------

  -- SetCVar("useUiScale", 0)
  -- SetCVar("uiScale", UIScale)
  -- UIParent:SetScale(UIScale)
  -- UIParent.oSetScale = UIParent.SetScale
  -- UIParent.SetScale = function() end

  ----------------
  -- NAMEPLATES --
  ----------------

  SetCVar("nameplateOverlapV", "1.8")
  SetCVar("nameplateOverlapH", "1.1")
  SetCVar("nameplateLargeTopInset", "0.05")
  SetCVar("nameplateLargeBottomInset", "0.1")
  SetCVar("nameplateOtherTopInset", "0.1")
  SetCVar("nameplateOtherBottomInset", "0.1")
  SetCVar("nameplateMaxDistance", "60")
  SetCVar("nameplateShowOnlyNames", "1")
  -- This is already done in plater profile
  -- Advanced > Friendly Nameplate Selection Box Size
  -- C_NamePlate.SetNamePlateFriendlySize(80, 1)

  ----------------
  -- SPELLQUEUE --
  ----------------

  SetCVar("SpellQueueWindow", "200")

  --------------------------
  -- FLOATING COMBAT TEXT --
  --------------------------

  SetCVar("floatingCombatTextCombatDamage", 0)
  SetCVar("floatingCombatTextCombatHealing", 0)

  SetCVar("whisperMode", "popout_and_inline")

  -- SetConsoleKey(nil);
end


local f = CreateFrame("Frame", nil, UIParent)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function() setCVars(); f:UnregisterAllEvents(); end)
