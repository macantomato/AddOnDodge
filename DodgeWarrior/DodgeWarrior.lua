-- Create a frame to listen for combat log events
local frame = CreateFrame("Frame")
print("WOW ADDON IS LIVE")
frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

-- Event handler for combat log events
frame:SetScript("OnEvent", function(self, event)
    -- Retrieve the current combat log event information
    local arr = { CombatLogGetCurrentEventInfo() }
    
    print(arr[12])
    local usable = IsUsableSpell("Overpower")
    if arr[12] == "DODGE"  then
        local usable = IsUsableSpell("Overpower")
    
        if usable then
            print("Dodge detected! Overpower is usable — go go go!")
        else
            print("Dodge detected! But Overpower is not usable — switch to Battle Stance?")
        end
    end
end)
