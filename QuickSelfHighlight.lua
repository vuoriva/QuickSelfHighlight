local function ToggleSelfHighlight()
	-- Get current state of one setting (icon can be removed if used elsewhere)
	local isEnabled = C_CVar.GetCVarBool("findYourselfModeOutline")

	-- Toggle all related settings
	local newState = isEnabled and "0" or "1"
	C_CVar.SetCVar("findYourselfModeIcon", newState)
	C_CVar.SetCVar("findYourselfModeOutline", newState)

	-- Print status message
	print("|cffffffffSelf Highlight:|r", newState == "1" and "|cff00ff00ON|r" or "|cff808080OFF|r")
end

-- Register a slash command to toggle the setting
SLASH_SELFHIGHLIGHT1 = "/selfhighlight"
SLASH_SELFHIGHLIGHT2 = "/shl"
SlashCmdList["SELFHIGHLIGHT"] = ToggleSelfHighlight

-- Create a global function for keybinding
function QuickSelfHighlight_Toggle()
	ToggleSelfHighlight()
end