----------
-- CHAT --
----------

local nastyeUIChatVer = 10

-- Check applied chat version on load and prompt update
local frame = CreateFrame("FRAME")
frame:RegisterEvent("ADDON_LOADED")

nastyeUI_ChatOnLoad = function(self, event, arg1)
  if event == "ADDON_LOADED" and arg1 == "nastyeUI" then
    if (nastyeUIChatVer > nastyeUIDB.lastAppliedChatVer) then
      StaticPopupDialogs["NASTYE_UI_FIX_CHAT"] = {
        text = "Newer chat version " .. nastyeUIChatVer .. " available.\nI fix?",
        button1 = "Yes",
        button2 = "No",
        OnAccept = function()
          nastyeUI_FixChat()
          ReloadUI() 
        end,
        timeout = 0,
        whileDead = true,
        hideOnEscape = true,
        preferredIndex = 3,  -- avoid some UI taint, see http://www.wowace.com/announcements/how-to-avoid-some-ui-taint/
      }
      StaticPopup_Show("NASTYE_UI_FIX_CHAT")
    end
  -- this is temporary while trade/services keep popping up in wrong tabs
  C_Timer.After(3, nastyeUI_FixChat)
  end
end

frame:SetScript("OnEvent", nastyeUI_ChatOnLoad)

-- add slash command for manual fixing
SLASH_FIXCHAT1 = "/fixchat"
SlashCmdList["FIXCHAT"] = function() nastyeUI_FixChat() ReloadUI() end
SLASH_CLEAR1 = "/clear"
SlashCmdList["CLEAR"] = function() SELECTED_CHAT_FRAME:Clear() end

-- disable chat fade for all frames
-- for i=1,7 do _G["ChatFrame"..i]:SetFading(false) end

-- fine tune positioning of chat frame
-- ChatFrame1EditBox:ClearAllPoints()
-- ChatFrame1EditBox:SetAllPoints(nastyeUI_DataTextPanel)

-- actual code to fix
nastyeUI_FixChat = function()
  FCF_ResetChatWindows()
  -- DEFAULT_CHATFRAME_ALPHA = 0

  FCF_SetWindowName(ChatFrame1, "GENERAL")
  FCF_SetWindowName(ChatFrame2, "COMBAT")
  FCF_OpenNewWindow("LOOT")
  FCF_OpenNewWindow("SPAM")

  -- ChatFrame1:ClearAllPoints()
  -- ChatFrame1:SetPoint("TOPRIGHT", UIParent, "BOTTOMLEFT", 545, 235)
  -- ChatFrame1:SetPoint("BOTTOMLEFT", UIParent, "BOTTOMLEFT", 5, 35)
  -- ChatFrame1:SetUserPlaced(true)

  -- Font Size --
  -- local fontsize = 14
  -- FCF_SetChatWindowFontSize(self, ChatFrame1, fontsize)
  -- FCF_SetChatWindowFontSize(self, ChatFrame2, fontsize)
  -- FCF_SetChatWindowFontSize(self, ChatFrame3, fontsize)
  -- FCF_SetChatWindowFontSize(self, ChatFrame4, fontsize)
  
  -- Chat Window Alpha --
  -- local alpha = 0
  -- FCF_SetWindowAlpha(ChatFrame1, alpha)
  -- FCF_SetWindowAlpha(ChatFrame2, alpha)
  -- FCF_SetWindowAlpha(ChatFrame3, alpha)
  -- FCF_SetWindowAlpha(ChatFrame4, alpha)

  -- Chat Window Color --
  -- local r = 0
  -- local g = 0
  -- local b = 0
  -- FCF_SetWindowColor(ChatFrame1, r, g, b)
  -- FCF_SetWindowColor(ChatFrame2, r, g, b)
  -- FCF_SetWindowColor(ChatFrame3, r, g, b)
  -- FCF_SetWindowColor(ChatFrame4, r, g, b)

  -- Make sure were in all the right channels
  JoinChannelByName("General")
  JoinChannelByName("Trade")
  JoinChannelByName("LocalDefense")
  JoinChannelByName("LookingForGroup")
  JoinChannelByName("Services")

  -- Reset all chat channels
  ChatFrame_RemoveAllMessageGroups(ChatFrame1)
  ChatFrame_RemoveAllChannels(ChatFrame1)	
  ChatFrame_RemoveAllMessageGroups(ChatFrame2)
  ChatFrame_RemoveAllChannels(ChatFrame2)		
  ChatFrame_RemoveAllMessageGroups(ChatFrame3)
  ChatFrame_RemoveAllChannels(ChatFrame3)
  ChatFrame_RemoveAllMessageGroups(ChatFrame4)
  ChatFrame_RemoveAllChannels(ChatFrame4)

  -- Setup 'General' --
  -- ChatFrame_AddChannel(ChatFrame1, "General")
  ChatFrame_AddMessageGroup(ChatFrame1, "SYSTEM")
  ChatFrame_AddMessageGroup(ChatFrame1, "SYSTEM_NOMENU")
  ChatFrame_AddMessageGroup(ChatFrame1, "SAY")
  ChatFrame_AddMessageGroup(ChatFrame1, "EMOTE")
  ChatFrame_AddMessageGroup(ChatFrame1, "YELL")
  ChatFrame_AddMessageGroup(ChatFrame1, "WHISPER")
  ChatFrame_AddMessageGroup(ChatFrame1, "PARTY")
  ChatFrame_AddMessageGroup(ChatFrame1, "PARTY_LEADER")
  ChatFrame_AddMessageGroup(ChatFrame1, "RAID")
  ChatFrame_AddMessageGroup(ChatFrame1, "RAID_LEADER")
  ChatFrame_AddMessageGroup(ChatFrame1, "RAID_WARNING")
  ChatFrame_AddMessageGroup(ChatFrame1, "GUILD")
  ChatFrame_AddMessageGroup(ChatFrame1, "OFFICER")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_SAY")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_PARTY")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_YELL")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_EMOTE")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_WHISPER")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_BOSS_EMOTE")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONSTER_BOSS_WHISPER")
  ChatFrame_AddMessageGroup(ChatFrame1, "ERRORS")
  ChatFrame_AddMessageGroup(ChatFrame1, "AFK")
  ChatFrame_AddMessageGroup(ChatFrame1, "DND")
  ChatFrame_AddMessageGroup(ChatFrame1, "IGNORED")
  ChatFrame_AddMessageGroup(ChatFrame1, "BG_HORDE")
  ChatFrame_AddMessageGroup(ChatFrame1, "BG_ALLIANCE")
  ChatFrame_AddMessageGroup(ChatFrame1, "BG_NEUTRAL")
  ChatFrame_AddMessageGroup(ChatFrame1, "COMBAT_FACTION_CHANGE")
  ChatFrame_AddMessageGroup(ChatFrame1, "COMBAT_HONOR_GAIN")
  ChatFrame_AddMessageGroup(ChatFrame1, "COMBAT_XP_GAIN")
  ChatFrame_AddMessageGroup(ChatFrame1, "SKILL")
  ChatFrame_AddMessageGroup(ChatFrame1, "LOOT")
  ChatFrame_AddMessageGroup(ChatFrame1, "MONEY")
  ChatFrame_AddMessageGroup(ChatFrame1, "CHANNEL")
  ChatFrame_AddMessageGroup(ChatFrame1, "ACHIEVEMENT")
  ChatFrame_AddMessageGroup(ChatFrame1, "GUILD_ACHIEVEMENT")
  ChatFrame_AddMessageGroup(ChatFrame1, "BN_WHISPER")
  ChatFrame_AddMessageGroup(ChatFrame1, "BN_WHISPER_INFORM")
  ChatFrame_AddMessageGroup(ChatFrame1, "BN_CONVERSATION")
  ChatFrame_AddMessageGroup(ChatFrame1, "BN_INLINE_TOAST_ALERT")
  ChatFrame_AddMessageGroup(ChatFrame1, "CURRENCY")
  ChatFrame_AddMessageGroup(ChatFrame1, "BN_WHISPER_PLAYER_OFFLINE")
  ChatFrame_AddMessageGroup(ChatFrame1, "PET_BATTLE_INFO")
  ChatFrame_AddMessageGroup(ChatFrame1, "INSTANCE_CHAT")
  ChatFrame_AddMessageGroup(ChatFrame1, "INSTANCE_CHAT_LEADER")
  ChatFrame_AddMessageGroup(ChatFrame1, "GUILD_ITEM_LOOTED")
  ChatFrame_AddMessageGroup(ChatFrame1, "TARGETICONS")

  -- Setup 'LOOT' --
  ChatFrame_AddMessageGroup(ChatFrame4, "SKILL")
  ChatFrame_AddMessageGroup(ChatFrame4, "LOOT")
  ChatFrame_AddMessageGroup(ChatFrame4, "MONEY")
  ChatFrame_AddMessageGroup(ChatFrame4, "CURRENCY")
  ChatFrame_AddMessageGroup(ChatFrame4, "COMBAT_FACTION_CHANGE")
  ChatFrame_AddMessageGroup(ChatFrame4, "COMBAT_HONOR_GAIN")
  ChatFrame_AddMessageGroup(ChatFrame4, "COMBAT_XP_GAIN")

  -- Setup 'SPAM' --
  ChatFrame_AddChannel(ChatFrame5, "General")
  ChatFrame_AddChannel(ChatFrame5, "Trade")
  ChatFrame_AddChannel(ChatFrame5, "Services")
  ChatFrame_AddChannel(ChatFrame5, "LocalDefense")
  ChatFrame_AddChannel(ChatFrame5, "LookingForGroup")
  
  -- FCF_SavePositionAndDimensions(ChatFrame1)

  nastyeUIDB.lastAppliedChatVer = nastyeUIChatVer
end
