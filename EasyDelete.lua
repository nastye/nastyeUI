-----------------------------------
-- OVERWRITE DELETE CONFIRMATION --
-----------------------------------

local addon = CreateFrame('Frame','EasyDeleteConfirmFrame')

function addon:DELETE_ITEM_CONFIRM(...)
    if StaticPopup1EditBox:IsShown() then
        StaticPopup1EditBox:Hide()
        StaticPopup1Button1:Enable()
        
        local link = select(3,GetCursorInfo())
        
        local _,_,_,_,_,itemType = GetItemInfo(link)
        if itemType then
            addon.link:SetText(link)
        end
        addon.link:Show()
    end
end

function addon:ADDON_LOADED(loaded_addon)    
    -- create item link container
    addon.link = StaticPopup1:CreateFontString(nil, 'ARTWORK', 'GameFontHighlight')
    addon.link:SetPoint('CENTER', StaticPopup1EditBox)
    addon.link:Hide()
    
    StaticPopup1:HookScript('OnHide', function(self)
            addon.link:Hide()
    end)
end

addon:SetScript('OnEvent', function(self,event,...)
        self[event](self,...)
end)

addon:RegisterEvent('ADDON_LOADED')
addon:RegisterEvent('DELETE_ITEM_CONFIRM')