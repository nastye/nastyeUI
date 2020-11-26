-----------------
-- CHAT MOVING --
-----------------

ChatFrame1:ClearAllPoints()
ChatFrame1:SetPoint("TOPLEFT",UIParent,"BOTTOMLEFT",3,195)
ChatFrame1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT",3,32)
ChatFrame1:SetPoint("TOPRIGHT",UIParent,"BOTTOMLEFT",403,195)
ChatFrame1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT",403,32)

SetChatWindowColor(1,0,0,0)
SetChatWindowAlpha(1,0)
SetChatWindowSize(1,12)

-----------------------
-- DISABLE CHAT FADE --
-----------------------

for i=1,7 do _G["ChatFrame"..i]:SetFading(false) end

--------------
-- UI SCALE --
--------------

SetCVar("UIScale", 0.71111111)

----------------
-- NAMEPLATES --
----------------

SetCVar("nameplateOverlapV", "1.6")
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
SetCVar("floatingCombatTextCombatLogPeriodicSpells", 1)