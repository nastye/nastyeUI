---------------------
-- MINIMAP ZOOMING --
---------------------

MinimapZoomIn:Hide()
MinimapZoomOut:Hide()
Minimap:EnableMouseWheel(true)
Minimap:SetScript("OnMouseWheel", function(mp, input)
        local zoom = Minimap:GetZoom()
        if input > 0 and zoom < 5 then
            mp:SetZoom(zoom +1)
        elseif input < 0 and zoom > 0 then
            mp:SetZoom(zoom -1)
        end
end)
