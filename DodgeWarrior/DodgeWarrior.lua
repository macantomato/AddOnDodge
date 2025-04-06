-- Create a frame to listen for combat log events
local frame = CreateFrame("Frame")
print("WOW ADDON IS LIVE")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

-- Event handler for combat log events
frame:SetScript("OnEvent", function(self, event)
    -- Retrieve the current combat log event information
    local arr = { CombatLogGetCurrentEventInfo() }
    
    -- Check if the combat log indicates a dodge event.
    if arr[12] == "DODGE" or arr[15] == "DODGE" then
        print("dodge has been done")
    end
end)
