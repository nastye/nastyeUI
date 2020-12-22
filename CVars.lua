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

  SetCVar("nameplateOverlapV", "1.2")
  SetCVar("nameplateOverlapH", "1.2")
  SetCVar("nameplateLargeTopInset", "0.05")
  SetCVar("nameplateLargeBottomInset", "0.1")
  SetCVar("nameplateOtherTopInset", "0.05")
  SetCVar("nameplateOtherBottomInset", "0.1")

  ----------------
  -- SPELLQUEUE --
  ----------------

  SetCVar("SpellQueueWindow", "200")

  --------------------------
  -- FLOATING COMBAT TEXT --
  --------------------------

  SetCVar("floatingCombatTextCombatDamage", 1)
  SetCVar("floatingCombatTextCombatHealing", 1)
end


local f = CreateFrame("Frame", nil, UIParent)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:SetScript("OnEvent", function() setCVars(); f:UnregisterAllEvents(); end)
